; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_iterators.c_spl_recursive_it_get_method.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_iterators.c_spl_recursive_it_get_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { {}* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"The %s instance wasn't initialized properly\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_17__**, i32*, i32*)* @spl_recursive_it_get_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @spl_recursive_it_get_method(%struct.TYPE_17__** %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_17__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_17__** %0, %struct.TYPE_17__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %13 = call %struct.TYPE_18__* @spl_recursive_it_from_obj(%struct.TYPE_17__* %12)
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %8, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = icmp ne %struct.TYPE_15__* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @E_ERROR, align 4
  %23 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ZSTR_VAL(i32 %28)
  %30 = call i32 @php_error_docref(i32* null, i32 %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %21, %3
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  store i32* %37, i32** %10, align 8
  %38 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32* @zend_std_get_method(%struct.TYPE_17__** %38, i32* %39, i32* %40)
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %71, label %44

44:                                               ; preds = %31
  %45 = load i32*, i32** %10, align 8
  %46 = call %struct.TYPE_13__* @Z_OBJCE_P(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32*, i32** %5, align 8
  %49 = call i32* @zend_hash_find_ptr(i32* %47, i32* %48)
  store i32* %49, i32** %7, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = load i32*, i32** %10, align 8
  %53 = call %struct.TYPE_17__* @Z_OBJ_P(i32* %52)
  %54 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %54, align 8
  %55 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = bitcast {}** %59 to i32* (%struct.TYPE_17__**, i32*, i32*)**
  %61 = load i32* (%struct.TYPE_17__**, i32*, i32*)*, i32* (%struct.TYPE_17__**, i32*, i32*)** %60, align 8
  %62 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32* %61(%struct.TYPE_17__** %62, i32* %63, i32* %64)
  store i32* %65, i32** %7, align 8
  br label %70

66:                                               ; preds = %44
  %67 = load i32*, i32** %10, align 8
  %68 = call %struct.TYPE_17__* @Z_OBJ_P(i32* %67)
  %69 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  store %struct.TYPE_17__* %68, %struct.TYPE_17__** %69, align 8
  br label %70

70:                                               ; preds = %66, %51
  br label %71

71:                                               ; preds = %70, %31
  %72 = load i32*, i32** %7, align 8
  ret i32* %72
}

declare dso_local %struct.TYPE_18__* @spl_recursive_it_from_obj(%struct.TYPE_17__*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i32) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local i32* @zend_std_get_method(%struct.TYPE_17__**, i32*, i32*) #1

declare dso_local i32* @zend_hash_find_ptr(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @Z_OBJCE_P(i32*) #1

declare dso_local %struct.TYPE_17__* @Z_OBJ_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
