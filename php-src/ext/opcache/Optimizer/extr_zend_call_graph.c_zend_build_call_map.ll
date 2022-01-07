; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_call_graph.c_zend_build_call_map.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_call_graph.c_zend_build_call_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, %struct.TYPE_9__*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__** @zend_build_call_map(i32** %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.TYPE_12__**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_12__**, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.TYPE_12__** null, %struct.TYPE_12__*** %4, align 8
  br label %92

16:                                               ; preds = %3
  %17 = load i32**, i32*** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_12__** @zend_arena_calloc(i32** %17, i32 8, i32 %20)
  store %struct.TYPE_12__** %21, %struct.TYPE_12__*** %8, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %9, align 8
  br label %25

25:                                               ; preds = %86, %16
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %28, label %90

28:                                               ; preds = %25
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %33, %36
  %38 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %30, i64 %37
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %40 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %43, %46
  %48 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %40, i64 %47
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %48, align 8
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %82, %28
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %85

55:                                               ; preds = %49
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %55
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %75, %78
  %80 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %67, i64 %79
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %80, align 8
  br label %81

81:                                               ; preds = %65, %55
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %49

85:                                               ; preds = %49
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %9, align 8
  br label %25

90:                                               ; preds = %25
  %91 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  store %struct.TYPE_12__** %91, %struct.TYPE_12__*** %4, align 8
  br label %92

92:                                               ; preds = %90, %15
  %93 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  ret %struct.TYPE_12__** %93
}

declare dso_local %struct.TYPE_12__** @zend_arena_calloc(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
