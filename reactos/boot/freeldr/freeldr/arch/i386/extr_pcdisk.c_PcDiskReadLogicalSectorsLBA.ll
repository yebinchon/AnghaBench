; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcdisk.c_PcDiskReadLogicalSectorsLBA.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcdisk.c_PcDiskReadLogicalSectorsLBA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i8*, i64 }

@BIOSCALLBUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"PcDiskReadLogicalSectorsLBA() DriveNumber: 0x%x SectorNumber: %I64d SectorCount: %d Buffer: 0x%x\0A\00", align 1
@BIOSCALLBUFSEGMENT = common dso_local global i32 0, align 4
@BIOSCALLBUFOFFSET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Disk Read Failed in LBA mode\00", align 1
@.str.2 = private unnamed_addr constant [95 x i8] c"Disk Read Failed in LBA mode: %x (%s) (DriveNumber: 0x%x SectorNumber: %I64d SectorCount: %d)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64)* @PcDiskReadLogicalSectorsLBA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PcDiskReadLogicalSectorsLBA(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__, align 4
  %11 = alloca %struct.TYPE_13__, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* @BIOSCALLBUFFER, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %13, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i64 %20)
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  %24 = icmp sle i32 %23, 1048575
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %28 = call i32 @RtlZeroMemory(%struct.TYPE_14__* %27, i32 32)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i32 32, i32* %30, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i32
  %48 = and i32 %47, 15
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  %53 = ashr i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  store i32 66, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @BIOSCALLBUFSEGMENT, align 4
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @BIOSCALLBUFOFFSET, align 4
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %96, %4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 3
  br i1 %74, label %75, label %99

75:                                               ; preds = %72
  %76 = call i32 @Int386(i32 19, %struct.TYPE_13__* %10, %struct.TYPE_13__* %11)
  %77 = bitcast %struct.TYPE_13__* %11 to { i64, i64 }*
  %78 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 4
  %80 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %77, i32 0, i32 1
  %81 = load i64, i64* %80, align 4
  %82 = call i64 @INT386_SUCCESS(i64 %79, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %5, align 4
  br label %116

86:                                               ; preds = %75
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 17
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %5, align 4
  br label %116

93:                                               ; preds = %86
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @DiskResetController(i32 %94)
  br label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %72

99:                                               ; preds = %72
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @DiskError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @DiskGetErrorCodeString(i32 %109)
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @ERR(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* @FALSE, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %99, %91, %84
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @Int386(i32, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i64 @INT386_SUCCESS(i64, i64) #1

declare dso_local i32 @DiskResetController(i32) #1

declare dso_local i32 @DiskError(i8*, i32) #1

declare dso_local i32 @ERR(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DiskGetErrorCodeString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
