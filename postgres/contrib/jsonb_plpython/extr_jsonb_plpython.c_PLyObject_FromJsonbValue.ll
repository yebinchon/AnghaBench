; ModuleID = '/home/carl/AnghaBench/postgres/contrib/jsonb_plpython/extr_jsonb_plpython.c_PLyObject_FromJsonbValue.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/jsonb_plpython/extr_jsonb_plpython.c_PLyObject_FromJsonbValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@Py_RETURN_NONE = common dso_local global i32 0, align 4
@numeric_out = common dso_local global i32 0, align 4
@decimal_constructor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@Py_RETURN_TRUE = common dso_local global i32 0, align 4
@Py_RETURN_FALSE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unexpected jsonb value type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*)* @PLyObject_FromJsonbValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PLyObject_FromJsonbValue(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %45 [
    i32 130, label %9
    i32 132, label %11
    i32 129, label %18
    i32 128, label %31
    i32 131, label %34
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %11

11:                                               ; preds = %1, %9
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @PLyObject_FromJsonbContainer(i32 %16)
  store i32* %17, i32** %2, align 8
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @NumericGetDatum(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @numeric_out, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @DirectFunctionCall1(i32 %24, i32 %25)
  %27 = call i8* @DatumGetCString(i32 %26)
  store i8* %27, i8** %5, align 8
  %28 = load i32, i32* @decimal_constructor, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32* @PyObject_CallFunction(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i32* %30, i32** %2, align 8
  br label %51

31:                                               ; preds = %1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = call i32* @PLyString_FromJsonbValue(%struct.TYPE_8__* %32)
  store i32* %33, i32** %2, align 8
  br label %51

34:                                               ; preds = %1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @Py_RETURN_TRUE, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @Py_RETURN_FALSE, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %1, %44
  %46 = load i32, i32* @ERROR, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @elog(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i32* null, i32** %2, align 8
  br label %51

51:                                               ; preds = %45, %31, %18, %11
  %52 = load i32*, i32** %2, align 8
  ret i32* %52
}

declare dso_local i32* @PLyObject_FromJsonbContainer(i32) #1

declare dso_local i32 @NumericGetDatum(i32) #1

declare dso_local i8* @DatumGetCString(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32* @PyObject_CallFunction(i32, i8*, i8*) #1

declare dso_local i32* @PLyString_FromJsonbValue(%struct.TYPE_8__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
