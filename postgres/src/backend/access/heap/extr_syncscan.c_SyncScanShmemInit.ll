; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_syncscan.c_SyncScanShmemInit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_syncscan.c_SyncScanShmemInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [25 x i8] c"Sync Scan Locations List\00", align 1
@SYNC_SCAN_NELEM = common dso_local global i32 0, align 4
@scan_locations = common dso_local global %struct.TYPE_8__* null, align 8
@IsUnderPostmaster = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i8* null, align 8
@InvalidBlockNumber = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SyncScanShmemInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = load i32, i32* @SYNC_SCAN_NELEM, align 4
  %5 = call i32 @SizeOfScanLocations(i32 %4)
  %6 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %5, i32* %2)
  %7 = inttoptr i64 %6 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** @scan_locations, align 8
  %8 = load i32, i32* @IsUnderPostmaster, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %97, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scan_locations, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scan_locations, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scan_locations, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = load i32, i32* @SYNC_SCAN_NELEM, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 %27
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scan_locations, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %30, align 8
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %93, %10
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @SYNC_SCAN_NELEM, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %96

35:                                               ; preds = %31
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scan_locations, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %40
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %3, align 8
  %42 = load i8*, i8** @InvalidOid, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i8* %42, i8** %46, align 8
  %47 = load i8*, i8** @InvalidOid, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i8* %47, i8** %51, align 8
  %52 = load i8*, i8** @InvalidOid, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i8* %52, i8** %56, align 8
  %57 = load i32, i32* @InvalidBlockNumber, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* %1, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %35
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scan_locations, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load i32, i32* %1, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %69
  br label %72

71:                                               ; preds = %35
  br label %72

72:                                               ; preds = %71, %63
  %73 = phi %struct.TYPE_9__* [ %70, %63 ], [ null, %71 ]
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %75, align 8
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* @SYNC_SCAN_NELEM, align 4
  %78 = sub nsw i32 %77, 1
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scan_locations, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = load i32, i32* %1, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 %86
  br label %89

88:                                               ; preds = %72
  br label %89

89:                                               ; preds = %88, %80
  %90 = phi %struct.TYPE_9__* [ %87, %80 ], [ null, %88 ]
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %92, align 8
  br label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %1, align 4
  br label %31

96:                                               ; preds = %31
  br label %100

97:                                               ; preds = %0
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @Assert(i32 %98)
  br label %100

100:                                              ; preds = %97, %96
  ret void
}

declare dso_local i64 @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @SizeOfScanLocations(i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
