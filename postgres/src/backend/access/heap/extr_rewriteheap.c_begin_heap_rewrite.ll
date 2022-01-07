; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_rewriteheap.c_begin_heap_rewrite.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_rewriteheap.c_begin_heap_rewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32, i64, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Table rewrite\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Rewrite / Unresolved ctids\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Rewrite / Old to new tid map\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @begin_heap_rewrite(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* @CurrentMemoryContext, align 4
  %18 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %19 = call i32 @AllocSetContextCreate(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = call i32 @MemoryContextSwitchTo(i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = call %struct.TYPE_8__* @palloc0(i32 4)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %13, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 11
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 10
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @BLCKSZ, align 4
  %30 = call i64 @palloc(i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 9
  store i64 %30, i64* %32, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @RelationGetNumberOfBlocks(i8* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = call i32 @memset(%struct.TYPE_9__* %16, i32 0, i32 12)
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32 4, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  store i32 4, i32* %56, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @HASH_ELEM, align 4
  %62 = load i32, i32* @HASH_BLOBS, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @HASH_CONTEXT, align 4
  %65 = or i32 %63, %64
  %66 = call i8* @hash_create(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 128, %struct.TYPE_9__* %16, i32 %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  store i32 4, i32* %69, align 4
  %70 = load i32, i32* @HASH_ELEM, align 4
  %71 = load i32, i32* @HASH_BLOBS, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @HASH_CONTEXT, align 4
  %74 = or i32 %72, %73
  %75 = call i8* @hash_create(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 128, %struct.TYPE_9__* %16, i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @MemoryContextSwitchTo(i32 %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %81 = call i32 @logical_begin_heap_rewrite(%struct.TYPE_8__* %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  ret %struct.TYPE_8__* %82
}

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_8__* @palloc0(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @RelationGetNumberOfBlocks(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @hash_create(i8*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @logical_begin_heap_rewrite(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
