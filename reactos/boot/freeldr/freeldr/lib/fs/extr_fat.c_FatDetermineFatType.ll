; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatDetermineFatType.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatDetermineFatType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"FATX\00", align 1
@FATX16 = common dso_local global i32 0, align 4
@FATX32 = common dso_local global i32 0, align 4
@FAT12 = common dso_local global i32 0, align 4
@FAT16 = common dso_local global i32 0, align 4
@FAT32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FatDetermineFatType(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = bitcast %struct.TYPE_5__* %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %11, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = bitcast %struct.TYPE_5__* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %12, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strncmp(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %21 = icmp eq i64 0, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %23, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 65525
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @FATX16, align 4
  store i32 %31, i32* %3, align 4
  br label %122

32:                                               ; preds = %22
  %33 = load i32, i32* @FATX32, align 4
  store i32 %33, i32* %3, align 4
  br label %122

34:                                               ; preds = %2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SWAPW(i32 %37)
  %39 = mul nsw i32 %38, 32
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SWAPW(i32 %42)
  %44 = sub nsw i32 %43, 1
  %45 = add nsw i32 %39, %44
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SWAPW(i32 %48)
  %50 = sdiv i32 %45, %49
  store i32 %50, i32* %6, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SWAPW(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %34
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SWAPW(i32 %59)
  br label %66

61:                                               ; preds = %34
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @SWAPD(i32 %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i32 [ %60, %56 ], [ %65, %61 ]
  store i32 %67, i32* %8, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SWAPW(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @SWAPW(i32 %76)
  br label %83

78:                                               ; preds = %66
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @SWAPD(i32 %81)
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi i32 [ %77, %73 ], [ %82, %78 ]
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @SWAPW(i32 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = mul nsw i32 %92, %93
  %95 = add nsw i32 %89, %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %95, %96
  %98 = sub nsw i32 %85, %97
  store i32 %98, i32* %7, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %83
  store i32 0, i32* %10, align 4
  br label %110

104:                                              ; preds = %83
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %105, %108
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %104, %103
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 4085
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* @FAT12, align 4
  store i32 %114, i32* %3, align 4
  br label %122

115:                                              ; preds = %110
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 65525
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* @FAT16, align 4
  store i32 %119, i32* %3, align 4
  br label %122

120:                                              ; preds = %115
  %121 = load i32, i32* @FAT32, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %118, %113, %32, %30
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @SWAPW(i32) #1

declare dso_local i32 @SWAPD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
