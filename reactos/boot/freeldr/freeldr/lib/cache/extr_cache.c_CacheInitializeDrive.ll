; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/cache/extr_cache.c_CacheInitializeDrive.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/cache/extr_cache.c_CacheInitializeDrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }

@CacheManagerInitialized = common dso_local global i8* null, align 8
@CacheManagerDrive = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@CacheManagerDataInvalid = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"CacheBlockCount: %d\0A\00", align 1
@CacheBlockCount = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"CacheSizeLimit: %d\0A\00", align 1
@CacheSizeLimit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"CacheSizeCurrent: %d\0A\00", align 1
@CacheSizeCurrent = common dso_local global i32 0, align 4
@CACHE_BLOCK = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@TAG_CACHE_DATA = common dso_local global i32 0, align 4
@TAG_CACHE_BLOCK = common dso_local global i32 0, align 4
@TotalPagesInLookupTable = common dso_local global i32 0, align 4
@MM_PAGE_SIZE = common dso_local global i32 0, align 4
@TEMP_HEAP_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Initializing BIOS drive 0x%x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"BytesPerSector: %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"BlockSize: %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"CacheSizeLimit: %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CacheInitializeDrive(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i8*, i8** @CacheManagerInitialized, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @CacheManagerDrive, i32 0, i32 0), align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 128
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i8*, i8** @CacheManagerDataInvalid, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** @TRUE, align 8
  store i8* %19, i8** %2, align 8
  br label %82

20:                                               ; preds = %15, %12, %8, %1
  %21 = load i8*, i8** @FALSE, align 8
  store i8* %21, i8** @CacheManagerDataInvalid, align 8
  %22 = load i8*, i8** @CacheManagerInitialized, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  %25 = load i8*, i8** @FALSE, align 8
  store i8* %25, i8** @CacheManagerInitialized, align 8
  %26 = load i32, i32* @CacheBlockCount, align 4
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @CacheSizeLimit, align 4
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @CacheSizeCurrent, align 4
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %36, %24
  %33 = call i32 @IsListEmpty(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @CacheManagerDrive, i32 0, i32 3))
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = call i32 @RemoveHeadList(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @CacheManagerDrive, i32 0, i32 3))
  %38 = load i32, i32* @CACHE_BLOCK, align 4
  %39 = load i32, i32* @ListEntry, align 4
  %40 = call %struct.TYPE_8__* @CONTAINING_RECORD(i32 %37, i32 %38, i32 %39)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %4, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load i32, i32* @TAG_CACHE_DATA, align 4
  %45 = call i32 @FrLdrTempFree(%struct.TYPE_8__* %43, i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = load i32, i32* @TAG_CACHE_BLOCK, align 4
  %48 = call i32 @FrLdrTempFree(%struct.TYPE_8__* %46, i32 %47)
  br label %32

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49, %20
  %51 = call i32 @RtlZeroMemory(%struct.TYPE_10__* @CacheManagerDrive, i32 4)
  %52 = call i32 @InitializeListHead(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @CacheManagerDrive, i32 0, i32 3))
  %53 = load i32, i32* %3, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @CacheManagerDrive, i32 0, i32 0), align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @MachDiskGetDriveGeometry(i32 %54, %struct.TYPE_9__* %5)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = load i8*, i8** @FALSE, align 8
  store i8* %58, i8** %2, align 8
  br label %82

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @CacheManagerDrive, i32 0, i32 1), align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @MachDiskGetCacheableBlockCount(i32 %62)
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @CacheManagerDrive, i32 0, i32 2), align 4
  store i32 0, i32* @CacheBlockCount, align 4
  store i32 0, i32* @CacheSizeCurrent, align 4
  %64 = load i32, i32* @TotalPagesInLookupTable, align 4
  %65 = sdiv i32 %64, 8
  %66 = load i32, i32* @MM_PAGE_SIZE, align 4
  %67 = mul nsw i32 %65, %66
  store i32 %67, i32* @CacheSizeLimit, align 4
  %68 = load i32, i32* @CacheSizeLimit, align 4
  %69 = load i64, i64* @TEMP_HEAP_SIZE, align 8
  %70 = sub nsw i64 %69, 131072
  %71 = call i32 @min(i32 %68, i64 %70)
  store i32 %71, i32* @CacheSizeLimit, align 4
  %72 = load i8*, i8** @TRUE, align 8
  store i8* %72, i8** @CacheManagerInitialized, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @CacheManagerDrive, i32 0, i32 1), align 4
  %76 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @CacheManagerDrive, i32 0, i32 2), align 4
  %78 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @CacheSizeLimit, align 4
  %80 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load i8*, i8** @TRUE, align 8
  store i8* %81, i8** %2, align 8
  br label %82

82:                                               ; preds = %59, %57, %18
  %83 = load i8*, i8** %2, align 8
  ret i8* %83
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @IsListEmpty(i32*) #1

declare dso_local %struct.TYPE_8__* @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i32 @RemoveHeadList(i32*) #1

declare dso_local i32 @FrLdrTempFree(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i32 @MachDiskGetDriveGeometry(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @MachDiskGetCacheableBlockCount(i32) #1

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
