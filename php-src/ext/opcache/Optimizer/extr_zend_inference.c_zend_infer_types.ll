; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_infer_types.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_infer_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@use_heap = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, %struct.TYPE_15__*, i32)* @zend_infer_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_infer_types(%struct.TYPE_16__* %0, i32* %1, %struct.TYPE_15__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %10, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @use_heap, align 4
  %21 = call i32 @ALLOCA_FLAG(i32 %20)
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @zend_bitset_len(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @use_heap, align 4
  %28 = call i32 @do_alloca(i32 %26, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @zend_bitset_len(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i32 %29, i32 0, i32 %34)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %52, %4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @zend_bitset_incl(i32 %44, i32 %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %39

55:                                               ; preds = %39
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @zend_infer_types_ex(%struct.TYPE_16__* %56, i32* %57, %struct.TYPE_15__* %58, i32 %59, i32 %60)
  %62 = load i64, i64* @SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @use_heap, align 4
  %67 = call i32 @free_alloca(i32 %65, i32 %66)
  %68 = load i32, i32* @FAILURE, align 4
  store i32 %68, i32* %5, align 4
  br label %91

69:                                               ; preds = %55
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @zend_type_narrowing(%struct.TYPE_16__* %70, i32* %71, %struct.TYPE_15__* %72, i32 %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = call %struct.TYPE_13__* @ZEND_FUNC_INFO(%struct.TYPE_16__* %75)
  %77 = icmp ne %struct.TYPE_13__* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %82 = call %struct.TYPE_13__* @ZEND_FUNC_INFO(%struct.TYPE_16__* %81)
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = call i32 @zend_func_return_info(%struct.TYPE_16__* %79, i32* %80, i32 1, i32 0, i32* %83)
  br label %85

85:                                               ; preds = %78, %69
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @use_heap, align 4
  %88 = call i32 @free_alloca(i32 %86, i32 %87)
  %89 = load i64, i64* @SUCCESS, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %85, %64
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @ALLOCA_FLAG(i32) #1

declare dso_local i32 @do_alloca(i32, i32) #1

declare dso_local i32 @zend_bitset_len(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @zend_bitset_incl(i32, i32) #1

declare dso_local i64 @zend_infer_types_ex(%struct.TYPE_16__*, i32*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @free_alloca(i32, i32) #1

declare dso_local i32 @zend_type_narrowing(%struct.TYPE_16__*, i32*, %struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_13__* @ZEND_FUNC_INFO(%struct.TYPE_16__*) #1

declare dso_local i32 @zend_func_return_info(%struct.TYPE_16__*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
