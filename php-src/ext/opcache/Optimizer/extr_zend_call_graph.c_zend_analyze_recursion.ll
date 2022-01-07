; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_call_graph.c_zend_analyze_recursion.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_call_graph.c_zend_analyze_recursion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__*, i32** }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_6__*, i32* }

@use_heap = common dso_local global i32 0, align 4
@ZEND_FUNC_RECURSIVE = common dso_local global i32 0, align 4
@ZEND_FUNC_RECURSIVE_DIRECTLY = common dso_local global i32 0, align 4
@ZEND_FUNC_RECURSIVE_INDIRECTLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @zend_analyze_recursion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_analyze_recursion(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @zend_bitset_len(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @use_heap, align 4
  %14 = call i32 @ALLOCA_FLAG(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @use_heap, align 4
  %17 = call i32 @ZEND_BITSET_ALLOCA(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %90, %1
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %93

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %3, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %4, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %5, align 8
  br label %41

41:                                               ; preds = %85, %24
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %89

44:                                               ; preds = %41
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = icmp eq i32* %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* @ZEND_FUNC_RECURSIVE, align 4
  %54 = load i32, i32* @ZEND_FUNC_RECURSIVE_DIRECTLY, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %85

60:                                               ; preds = %44
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memset(i32 %61, i32 0, i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @zend_is_indirectly_recursive(i32* %67, i32* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %60
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load i32, i32* @ZEND_FUNC_RECURSIVE, align 4
  %78 = load i32, i32* @ZEND_FUNC_RECURSIVE_INDIRECTLY, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %74, %60
  br label %85

85:                                               ; preds = %84, %50
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %5, align 8
  br label %41

89:                                               ; preds = %41
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %18

93:                                               ; preds = %18
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @use_heap, align 4
  %96 = call i32 @free_alloca(i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @zend_bitset_len(i32) #1

declare dso_local i32 @ALLOCA_FLAG(i32) #1

declare dso_local i32 @ZEND_BITSET_ALLOCA(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @zend_is_indirectly_recursive(i32*, i32*, i32) #1

declare dso_local i32 @free_alloca(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
