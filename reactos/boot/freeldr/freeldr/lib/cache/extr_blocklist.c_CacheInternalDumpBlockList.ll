; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/cache/extr_blocklist.c_CacheInternalDumpBlockList.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/cache/extr_blocklist.c_CacheInternalDumpBlockList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__* }

@.str = private unnamed_addr constant [41 x i8] c"Dumping block list for BIOS drive 0x%x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"BytesPerSector: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"BlockSize: %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"CacheSizeLimit: %d.\0A\00", align 1
@CacheSizeLimit = common dso_local global %struct.TYPE_12__* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"CacheSizeCurrent: %d.\0A\00", align 1
@CacheSizeCurrent = common dso_local global %struct.TYPE_12__* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"CacheBlockCount: %d.\0A\00", align 1
@CacheBlockCount = common dso_local global %struct.TYPE_12__* null, align 8
@CACHE_BLOCK = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Cache Block: CacheBlock: 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Cache Block: Block Number: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Cache Block: Access Count: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Cache Block: Block Data: 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Cache Block: Locked In Cache: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"CacheBlock->BlockData == NULL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CacheInternalDumpBlockList(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %7)
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_12__* %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** @CacheSizeLimit, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_12__* %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @CacheSizeCurrent, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_12__* %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** @CacheBlockCount, align 8
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_12__* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CACHE_BLOCK, align 4
  %28 = load i32, i32* @ListEntry, align 4
  %29 = call %struct.TYPE_12__* @CONTAINING_RECORD(i32 %26, i32 %27, i32 %28)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %4, align 8
  br label %30

30:                                               ; preds = %61, %1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = icmp ne %struct.TYPE_10__* %32, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %30
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_12__* %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_12__* %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_12__* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_12__* %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = call i32 @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_12__* %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = icmp eq %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %36
  %60 = call i32 @BugCheck(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %36
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CACHE_BLOCK, align 4
  %67 = load i32, i32* @ListEntry, align 4
  %68 = call %struct.TYPE_12__* @CONTAINING_RECORD(i32 %65, i32 %66, i32 %67)
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %4, align 8
  br label %30

69:                                               ; preds = %30
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i32 @BugCheck(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
