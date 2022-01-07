; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_MarkAsPreparingGuts.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_MarkAsPreparingGuts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i32, i8* }
%struct.TYPE_9__ = type { i64, i32, i32, i32*, i32*, i32*, i64, i32, i8*, i8*, i32, i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i8*, i8*, i32 }

@TwoPhaseStateLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ProcGlobal = common dso_local global %struct.TYPE_11__* null, align 8
@STATUS_OK = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@InvalidBackendId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@NUM_LOCK_PARTITIONS = common dso_local global i32 0, align 4
@MyBackendId = common dso_local global i32 0, align 4
@MyLockedGxact = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*, i8*, i32, i8*, i8*)* @MarkAsPreparingGuts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MarkAsPreparingGuts(%struct.TYPE_10__* %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load i32, i32* @TwoPhaseStateLock, align 4
  %17 = load i32, i32* @LW_EXCLUSIVE, align 4
  %18 = call i32 @LWLockHeldByMeInMode(i32 %16, i32 %17)
  %19 = call i32 @Assert(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ProcGlobal, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %29
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %13, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ProcGlobal, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %36
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %14, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %39 = call i32 @MemSet(%struct.TYPE_9__* %38, i32 0, i32 104)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 14
  %47 = call i32 @SHMQueueElemInit(i32* %46)
  %48 = load i32, i32* @STATUS_OK, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 13
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 12
  store i64 %52, i64* %54, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @InvalidTransactionId, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 11
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @InvalidBackendId, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 10
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 9
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 8
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @InvalidOid, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i32 0, i32* %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  store i32 0, i32* %82, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 6
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 5
  store i32* null, i32** %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 4
  store i32* null, i32** %88, align 8
  store i32 0, i32* %15, align 4
  br label %89

89:                                               ; preds = %101, %6
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @NUM_LOCK_PARTITIONS, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = call i32 @SHMQueueInit(i32* %99)
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  br label %89

104:                                              ; preds = %89
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 5
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* @MyBackendId, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  store i32 0, i32* %122, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  store i32 0, i32* %124, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @strcpy(i32 %127, i8* %128)
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %130, %struct.TYPE_10__** @MyLockedGxact, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockHeldByMeInMode(i32, i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @SHMQueueElemInit(i32*) #1

declare dso_local i32 @SHMQueueInit(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
