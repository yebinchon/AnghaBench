; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_mcxt.c_MemoryContextAllocHuge.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_mcxt.c_MemoryContextAllocHuge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"invalid memory alloc request size %zu\00", align 1
@TopMemoryContext = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Failed on request of size %zu in memory context \22%s\22.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @MemoryContextAllocHuge(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = call i32 @MemoryContextIsValid(%struct.TYPE_9__* %6)
  %8 = call i32 @AssertArg(i32 %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = call i32 @AssertNotInCriticalSection(%struct.TYPE_9__* %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @AllocHugeSizeIsValid(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @elog(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i8* (%struct.TYPE_9__*, i32)**
  %26 = load i8* (%struct.TYPE_9__*, i32)*, i8* (%struct.TYPE_9__*, i32)** %25, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i8* %26(%struct.TYPE_9__* %27, i32 %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp eq i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %18
  %36 = load i32, i32* @TopMemoryContext, align 4
  %37 = call i32 @MemoryContextStats(i32 %36)
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %40 = call i32 @errcode(i32 %39)
  %41 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @errdetail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45)
  %47 = call i32 @ereport(i32 %38, i32 %46)
  br label %48

48:                                               ; preds = %35, %18
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @VALGRIND_MEMPOOL_ALLOC(%struct.TYPE_9__* %49, i8* %50, i32 %51)
  %53 = load i8*, i8** %5, align 8
  ret i8* %53
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @MemoryContextIsValid(%struct.TYPE_9__*) #1

declare dso_local i32 @AssertNotInCriticalSection(%struct.TYPE_9__*) #1

declare dso_local i32 @AllocHugeSizeIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @MemoryContextStats(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i32, i32) #1

declare dso_local i32 @VALGRIND_MEMPOOL_ALLOC(%struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
