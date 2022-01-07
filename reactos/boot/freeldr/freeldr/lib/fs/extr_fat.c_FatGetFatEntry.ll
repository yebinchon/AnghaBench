; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatGetFatEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatGetFatEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"FatGetFatEntry() Retrieving FAT entry for cluster %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"FatOffset: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ThisFatSecNum: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ThisFatEntOffset: %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Unknown FAT type %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"FAT entry is 0x%x.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32*)* @FatGetFatEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FatGetFatEntry(%struct.TYPE_4__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %124 [
    i32 132, label %18
    i32 131, label %65
    i32 129, label %65
    i32 130, label %94
    i32 128, label %94
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %20, 2
  %22 = add nsw i32 %19, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %23, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %28, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @FatGetFatSector(%struct.TYPE_4__* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %18
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %4, align 4
  br label %136

46:                                               ; preds = %18
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @SWAPW(i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i32, i32* %11, align 4
  %60 = ashr i32 %59, 4
  store i32 %60, i32* %11, align 4
  br label %64

61:                                               ; preds = %46
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, 4095
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %130

65:                                               ; preds = %3, %3
  %66 = load i32, i32* %6, align 4
  %67 = mul nsw i32 %66, 2
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %68, %71
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = srem i32 %73, %76
  store i32 %77, i32* %10, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @FatGetFatSector(%struct.TYPE_4__* %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %65
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %4, align 4
  br label %136

85:                                               ; preds = %65
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i32*
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @SWAPW(i32 %92)
  store i32 %93, i32* %11, align 4
  br label %130

94:                                               ; preds = %3, %3
  %95 = load i32, i32* %6, align 4
  %96 = mul nsw i32 %95, 4
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %97, %100
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = srem i32 %102, %105
  store i32 %106, i32* %10, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @FatGetFatSector(%struct.TYPE_4__* %107, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %94
  %113 = load i32, i32* @FALSE, align 4
  store i32 %113, i32* %4, align 4
  br label %136

114:                                              ; preds = %94
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 268435455
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @SWAPD(i32 %122)
  store i32 %123, i32* %11, align 4
  br label %130

124:                                              ; preds = %3
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @FALSE, align 4
  store i32 %129, i32* %4, align 4
  br label %136

130:                                              ; preds = %114, %85, %64
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %11, align 4
  %134 = load i32*, i32** %7, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* @TRUE, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %130, %124, %112, %83, %44
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @FatGetFatSector(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @SWAPW(i32) #1

declare dso_local i32 @SWAPD(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
