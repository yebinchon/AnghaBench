; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ReorderBufferAllocate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ReorderBufferAllocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i32*, i32*, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_10__ = type { i32, i32, i32 }

@MyReplicationSlot = common dso_local global %struct.TYPE_11__* null, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ReorderBuffer\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Change\00", align 1
@SLAB_DEFAULT_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"TXN\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Tuples\00", align 1
@SLAB_LARGE_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"ReorderBufferByXid\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @ReorderBufferAllocate() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_10__, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MyReplicationSlot, align 8
  %5 = icmp ne %struct.TYPE_11__* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @Assert(i32 %6)
  %8 = load i32, i32* @CurrentMemoryContext, align 4
  %9 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %10 = call i32 @AllocSetContextCreate(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @MemoryContextAlloc(i32 %11, i32 72)
  %13 = inttoptr i64 %12 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %1, align 8
  %14 = call i32 @memset(%struct.TYPE_10__* %2, i32 0, i32 12)
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SLAB_DEFAULT_BLOCK_SIZE, align 4
  %20 = call i8* @SlabContextCreate(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 4)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 11
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SLAB_DEFAULT_BLOCK_SIZE, align 4
  %25 = call i8* @SlabContextCreate(i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 4)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 10
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SLAB_LARGE_BLOCK_SIZE, align 4
  %30 = call i32 @GenerationContextCreate(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 4, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  store i32 4, i32* %34, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @HASH_ELEM, align 4
  %40 = load i32, i32* @HASH_BLOBS, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @HASH_CONTEXT, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @hash_create(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 1000, %struct.TYPE_10__* %2, i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @InvalidTransactionId, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 5
  store i32* null, i32** %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  store i32* null, i32** %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @InvalidXLogRecPtr, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = call i32 @dlist_init(i32* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = call i32 @dlist_init(i32* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MyReplicationSlot, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @NameStr(i32 %68)
  %70 = call i32 @ReorderBufferCleanupSerializedTXNs(i32 %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  ret %struct.TYPE_9__* %71
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @SlabContextCreate(i32, i8*, i32, i32) #1

declare dso_local i32 @GenerationContextCreate(i32, i8*, i32) #1

declare dso_local i32 @hash_create(i8*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @dlist_init(i32*) #1

declare dso_local i32 @ReorderBufferCleanupSerializedTXNs(i32) #1

declare dso_local i32 @NameStr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
