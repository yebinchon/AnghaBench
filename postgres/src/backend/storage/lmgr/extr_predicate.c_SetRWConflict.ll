; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_SetRWConflict.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_SetRWConflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__* }

@RWConflictPool = common dso_local global %struct.TYPE_10__* null, align 8
@RWConflictData = common dso_local global i32 0, align 4
@outLink = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"not enough elements in RWConflictPool to record a read/write conflict\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"You might need to run fewer transactions at a time or increase max_connections.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_8__*)* @SetRWConflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetRWConflict(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = icmp ne %struct.TYPE_8__* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @Assert(i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = call i32 @RWConflictExists(%struct.TYPE_8__* %11, %struct.TYPE_8__* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @RWConflictPool, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @RWConflictPool, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* @RWConflictData, align 4
  %23 = load i32, i32* @outLink, align 4
  %24 = call i32 @offsetof(i32 %22, i32 %23)
  %25 = call i64 @SHMQueueNext(i32* %19, i32* %21, i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %5, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @errhint(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 @ereport(i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %29, %2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = call i32 @SHMQueueDelete(i32* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = call i32 @SHMQueueInsertBefore(i32* %47, i32* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = call i32 @SHMQueueInsertBefore(i32* %52, i32* %54)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RWConflictExists(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i64 @SHMQueueNext(i32*, i32*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @SHMQueueDelete(i32*) #1

declare dso_local i32 @SHMQueueInsertBefore(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
