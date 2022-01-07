; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatReadAdjacentClusters.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatReadAdjacentClusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32, i32*, i32*)* @FatReadAdjacentClusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FatReadAdjacentClusters(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 1, i32* %15, align 4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %16, align 4
  %20 = sub nsw i32 %19, 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %17, align 4
  %29 = load i32*, i32** %12, align 8
  store i32 0, i32* %29, align 4
  %30 = load i32*, i32** %13, align 8
  store i32 0, i32* %30, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @FatGetFatEntry(%struct.TYPE_5__* %31, i32 %32, i32* %14)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %6
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %7, align 4
  br label %92

37:                                               ; preds = %6
  br label %38

38:                                               ; preds = %63, %37
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @FAT_IS_END_CLUSTER(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %16, align 4
  %49 = add nsw i32 %48, 1
  %50 = icmp eq i32 %47, %49
  br label %51

51:                                               ; preds = %46, %42, %38
  %52 = phi i1 [ false, %42 ], [ false, %38 ], [ %50, %46 ]
  br i1 %52, label %53, label %64

53:                                               ; preds = %51
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %16, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = load i32, i32* %16, align 4
  %59 = call i32 @FatGetFatEntry(%struct.TYPE_5__* %57, i32 %58, i32* %14)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %7, align 4
  br label %92

63:                                               ; preds = %53
  br label %38

64:                                               ; preds = %51
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @FatReadVolumeSectors(%struct.TYPE_5__* %65, i32 %66, i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %64
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %7, align 4
  br label %92

77:                                               ; preds = %64
  %78 = load i32, i32* %15, align 4
  %79 = load i32*, i32** %12, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32*, i32** %13, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @FAT_IS_END_CLUSTER(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %86, %87
  br label %89

89:                                               ; preds = %85, %77
  %90 = phi i1 [ false, %77 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %89, %75, %61, %35
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @FatGetFatEntry(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @FAT_IS_END_CLUSTER(i32) #1

declare dso_local i32 @FatReadVolumeSectors(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
