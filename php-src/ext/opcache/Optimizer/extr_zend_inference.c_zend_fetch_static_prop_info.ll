; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_fetch_static_prop_info.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_fetch_static_prop_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@IS_CONST = common dso_local global i64 0, align 8
@IS_UNUSED = common dso_local global i64 0, align 8
@ZEND_FETCH_CLASS_MASK = common dso_local global i32 0, align 4
@ZEND_ACC_LINKED = common dso_local global i32 0, align 4
@ZEND_ACC_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32*, %struct.TYPE_15__*, i32*, %struct.TYPE_16__*)* @zend_fetch_static_prop_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @zend_fetch_static_prop_info(i32* %0, %struct.TYPE_15__* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IS_CONST, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %105

19:                                               ; preds = %4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %10, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IS_UNUSED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ZEND_FETCH_CLASS_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  switch i32 %32, label %58 [
    i32 129, label %33
    i32 128, label %33
    i32 130, label %37
  ]

33:                                               ; preds = %25, %25
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  store %struct.TYPE_17__* %36, %struct.TYPE_17__** %10, align 8
  br label %58

37:                                               ; preds = %25
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = icmp ne %struct.TYPE_17__* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %10, align 8
  br label %57

57:                                               ; preds = %51, %42, %37
  br label %58

58:                                               ; preds = %25, %57, %33
  br label %77

59:                                               ; preds = %19
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IS_CONST, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @CRT_CONSTANT(i32 %69)
  store i32* %70, i32** %12, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = call i32 @Z_STR_P(i32* %73)
  %75 = call %struct.TYPE_17__* @get_class_entry(i32* %71, i32 %74)
  store %struct.TYPE_17__* %75, %struct.TYPE_17__** %10, align 8
  br label %76

76:                                               ; preds = %65, %59
  br label %77

77:                                               ; preds = %76, %58
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %79 = icmp ne %struct.TYPE_17__* %78, null
  br i1 %79, label %80, label %104

80:                                               ; preds = %77
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32* @CRT_CONSTANT(i32 %84)
  store i32* %85, i32** %13, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @Z_STR_P(i32* %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = call %struct.TYPE_14__* @lookup_prop_info(%struct.TYPE_17__* %86, i32 %88, %struct.TYPE_17__* %91)
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %9, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %94 = icmp ne %struct.TYPE_14__* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %80
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %95
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  br label %103

103:                                              ; preds = %102, %95, %80
  br label %104

104:                                              ; preds = %103, %77
  br label %105

105:                                              ; preds = %104, %4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  ret %struct.TYPE_14__* %106
}

declare dso_local i32* @CRT_CONSTANT(i32) #1

declare dso_local %struct.TYPE_17__* @get_class_entry(i32*, i32) #1

declare dso_local i32 @Z_STR_P(i32*) #1

declare dso_local %struct.TYPE_14__* @lookup_prop_info(%struct.TYPE_17__*, i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
