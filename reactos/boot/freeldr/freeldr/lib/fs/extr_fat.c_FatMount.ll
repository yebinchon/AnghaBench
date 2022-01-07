; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatMount.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatMount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_20__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"Enter FatMount(%lu)\0A\00", align 1
@TAG_FAT_VOLUME = common dso_local global i32 0, align 4
@SeekAbsolute = common dso_local global i32 0, align 4
@ESUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"FAT12   \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"FAT16   \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"FAT32   \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"FATX\00", align 1
@SECTOR_SIZE = common dso_local global i64 0, align 8
@FatVolumes = common dso_local global %struct.TYPE_21__** null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"FatMount(%lu) success\0A\00", align 1
@FatFuncTable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @FatMount(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca [512 x i32], align 16
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_26__, align 8
  %10 = alloca %struct.TYPE_25__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %14 = getelementptr inbounds [512 x i32], [512 x i32]* %5, i64 0, i64 0
  %15 = bitcast i32* %14 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %6, align 8
  %16 = getelementptr inbounds [512 x i32], [512 x i32]* %5, i64 0, i64 0
  %17 = bitcast i32* %16 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %7, align 8
  %18 = getelementptr inbounds [512 x i32], [512 x i32]* %5, i64 0, i64 0
  %19 = bitcast i32* %18 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %8, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @TAG_FAT_VOLUME, align 4
  %23 = call %struct.TYPE_21__* @FrLdrTempAlloc(i32 4, i32 %22)
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %4, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %25 = icmp ne %struct.TYPE_21__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %128

27:                                               ; preds = %1
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %29 = call i32 @RtlZeroMemory(%struct.TYPE_21__* %28, i32 4)
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SeekAbsolute, align 4
  %33 = call i64 @ArcSeek(i32 %31, %struct.TYPE_25__* %10, i32 %32)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @ESUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %39 = load i32, i32* @TAG_FAT_VOLUME, align 4
  %40 = call i32 @FrLdrTempFree(%struct.TYPE_21__* %38, i32 %39)
  store i32* null, i32** %2, align 8
  br label %128

41:                                               ; preds = %27
  %42 = load i32, i32* %3, align 4
  %43 = getelementptr inbounds [512 x i32], [512 x i32]* %5, i64 0, i64 0
  %44 = call i64 @ArcRead(i32 %42, i32* %43, i32 2048, i32* %11)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @ESUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, 2048
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %41
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %54 = load i32, i32* @TAG_FAT_VOLUME, align 4
  %55 = call i32 @FrLdrTempFree(%struct.TYPE_21__* %53, i32 %54)
  store i32* null, i32** %2, align 8
  br label %128

56:                                               ; preds = %48
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @RtlEqualMemory(i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @RtlEqualMemory(i32 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @RtlEqualMemory(i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %68
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @RtlEqualMemory(i32 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %82 = load i32, i32* @TAG_FAT_VOLUME, align 4
  %83 = call i32 @FrLdrTempFree(%struct.TYPE_21__* %81, i32 %82)
  store i32* null, i32** %2, align 8
  br label %128

84:                                               ; preds = %74, %68, %62, %56
  %85 = load i32, i32* %3, align 4
  %86 = call i64 @ArcGetFileInformation(i32 %85, %struct.TYPE_26__* %9)
  store i64 %86, i64* %13, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* @ESUCCESS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %92 = load i32, i32* @TAG_FAT_VOLUME, align 4
  %93 = call i32 @FrLdrTempFree(%struct.TYPE_21__* %91, i32 %92)
  store i32* null, i32** %2, align 8
  br label %128

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i64 %101, i64* %102, align 8
  %103 = load i64, i64* @SECTOR_SIZE, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sdiv i64 %105, %103
  store i64 %106, i64* %104, align 8
  %107 = load i32, i32* %3, align 4
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @FatOpenVolume(%struct.TYPE_21__* %110, %struct.TYPE_22__* %111, i64 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %94
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %118 = load i32, i32* @TAG_FAT_VOLUME, align 4
  %119 = call i32 @FrLdrTempFree(%struct.TYPE_21__* %117, i32 %118)
  store i32* null, i32** %2, align 8
  br label %128

120:                                              ; preds = %94
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %122 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @FatVolumes, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %122, i64 %124
  store %struct.TYPE_21__* %121, %struct.TYPE_21__** %125, align 8
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  store i32* @FatFuncTable, i32** %2, align 8
  br label %128

128:                                              ; preds = %120, %116, %90, %80, %52, %37, %26
  %129 = load i32*, i32** %2, align 8
  ret i32* %129
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local %struct.TYPE_21__* @FrLdrTempAlloc(i32, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @ArcSeek(i32, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @FrLdrTempFree(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @ArcRead(i32, i32*, i32, i32*) #1

declare dso_local i32 @RtlEqualMemory(i32, i8*, i32) #1

declare dso_local i64 @ArcGetFileInformation(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @FatOpenVolume(%struct.TYPE_21__*, %struct.TYPE_22__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
