; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_plpymodule.c_PLy_generate_spi_exceptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_plpymodule.c_PLy_generate_spi_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_4__ = type { i32* }

@exception_map = common dso_local global %struct.TYPE_5__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not generate SPI exceptions\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"sqlstate\00", align 1
@PLy_spi_exceptions = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @PLy_generate_spi_exceptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PLy_generate_spi_exceptions(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %78, %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @exception_map, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %81

19:                                               ; preds = %11
  %20 = call i32* (...) @PyDict_New()
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @ERROR, align 4
  %25 = call i32 @PLy_elog(i32 %24, i8* null)
  br label %26

26:                                               ; preds = %23, %19
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @exception_map, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @unpack_sql_state(i32 %32)
  %34 = call i32* @PyString_FromString(i32 %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @ERROR, align 4
  %39 = call i32 @PLy_elog(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %26
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @PyDict_SetItemString(i32* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %42)
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @Py_DECREF(i32* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @exception_map, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @exception_map, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = call i32* @PLy_create_exception(i32* %51, i32* %52, i32* %53, i32 %59, i32* %60)
  store i32* %61, i32** %7, align 8
  %62 = load i32, i32* @PLy_spi_exceptions, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @exception_map, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* @HASH_ENTER, align 4
  %69 = call %struct.TYPE_4__* @hash_search(i32 %62, i32* %67, i32 %68, i32* %6)
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %8, align 8
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @Assert(i32 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32* %75, i32** %77, align 8
  br label %78

78:                                               ; preds = %40
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %11

81:                                               ; preds = %11
  ret void
}

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32 @PLy_elog(i32, i8*) #1

declare dso_local i32* @PyString_FromString(i32) #1

declare dso_local i32 @unpack_sql_state(i32) #1

declare dso_local i32 @PyDict_SetItemString(i32*, i8*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32* @PLy_create_exception(i32*, i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @hash_search(i32, i32*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
