; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_mcxt.c_palloc_extended.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_mcxt.c_palloc_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* (%struct.TYPE_9__*, i32)* }

@CurrentMemoryContext = common dso_local global %struct.TYPE_9__* null, align 8
@MCXT_ALLOC_HUGE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"invalid memory alloc request size %zu\00", align 1
@MCXT_ALLOC_NO_OOM = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Failed on request of size %zu in memory context \22%s\22.\00", align 1
@MCXT_ALLOC_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @palloc_extended(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CurrentMemoryContext, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %10 = call i32 @MemoryContextIsValid(%struct.TYPE_9__* %9)
  %11 = call i32 @AssertArg(i32 %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = call i32 @AssertNotInCriticalSection(%struct.TYPE_9__* %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MCXT_ALLOC_HUGE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @AllocHugeSizeIsValid(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MCXT_ALLOC_HUGE, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @AllocSizeIsValid(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %18
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @elog(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %27, %22
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i8* (%struct.TYPE_9__*, i32)*, i8* (%struct.TYPE_9__*, i32)** %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i8* %42(%struct.TYPE_9__* %43, i32 %44)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp eq i8* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %35
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @MCXT_ALLOC_NO_OOM, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load i32, i32* @TopMemoryContext, align 4
  %58 = call i32 @MemoryContextStats(i32 %57)
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @errdetail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %66)
  %68 = call i32 @ereport(i32 %59, i32 %67)
  br label %69

69:                                               ; preds = %56, %51
  store i8* null, i8** %3, align 8
  br label %85

70:                                               ; preds = %35
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @VALGRIND_MEMPOOL_ALLOC(%struct.TYPE_9__* %71, i8* %72, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @MCXT_ALLOC_ZERO, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @MemSetAligned(i8* %80, i32 0, i32 %81)
  br label %83

83:                                               ; preds = %79, %70
  %84 = load i8*, i8** %6, align 8
  store i8* %84, i8** %3, align 8
  br label %85

85:                                               ; preds = %83, %69
  %86 = load i8*, i8** %3, align 8
  ret i8* %86
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @MemoryContextIsValid(%struct.TYPE_9__*) #1

declare dso_local i32 @AssertNotInCriticalSection(%struct.TYPE_9__*) #1

declare dso_local i32 @AllocHugeSizeIsValid(i32) #1

declare dso_local i32 @AllocSizeIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @MemoryContextStats(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i32, i32) #1

declare dso_local i32 @VALGRIND_MEMPOOL_ALLOC(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @MemSetAligned(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
