; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_fcn.c__fcn_tree_probe.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_fcn.c__fcn_tree_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_11__** }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_13__*, %struct.TYPE_11__*, i64, i64)* @_fcn_tree_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @_fcn_tree_probe(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = call %struct.TYPE_12__* @FCN_CONTAINER(%struct.TYPE_11__* %13)
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %10, align 8
  br label %15

15:                                               ; preds = %96, %30, %4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %18, i64 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %12, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %15
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %24 = call %struct.TYPE_12__* @FCN_CONTAINER(%struct.TYPE_11__* %23)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %11, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %25, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %22
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %34, i64 %39
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %7, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %10, align 8
  br label %15

43:                                               ; preds = %22, %15
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = sub nsw i64 %48, 1
  %50 = icmp sle i64 %47, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %43
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %74

62:                                               ; preds = %51
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %67, %71
  %73 = sub nsw i64 %72, 1
  br label %74

74:                                               ; preds = %62, %61
  %75 = phi i64 [ 0, %61 ], [ %73, %62 ]
  %76 = add nsw i64 %56, %75
  %77 = icmp sle i64 %52, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** %5, align 8
  br label %100

80:                                               ; preds = %74
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %83, i64 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %12, align 8
  %86 = icmp ne %struct.TYPE_11__* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %80
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %7, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %90 = call %struct.TYPE_12__* @FCN_CONTAINER(%struct.TYPE_11__* %89)
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %10, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sle i64 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %15

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %80
  br label %99

99:                                               ; preds = %98, %43
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %100

100:                                              ; preds = %99, %78
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %101
}

declare dso_local %struct.TYPE_12__* @FCN_CONTAINER(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
