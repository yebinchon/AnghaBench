; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_launcher.c_logicalrep_worker_stop_at_commit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_launcher.c_logicalrep_worker_stop_at_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8*, i8* }

@TopTransactionContext = common dso_local global i32 0, align 4
@on_commit_stop_workers = common dso_local global %struct.TYPE_5__* null, align 8
@NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logicalrep_worker_stop_at_commit(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32 (...) @GetCurrentTransactionNestLevel()
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @TopTransactionContext, align 4
  %11 = call i32 @MemoryContextSwitchTo(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @on_commit_stop_workers, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @on_commit_stop_workers, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ true, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @on_commit_stop_workers, align 8
  %25 = icmp eq %struct.TYPE_5__* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @on_commit_stop_workers, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26, %20
  %33 = call i8* @palloc(i32 16)
  %34 = bitcast i8* %33 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @NIL, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @on_commit_stop_workers, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** @on_commit_stop_workers, align 8
  br label %45

45:                                               ; preds = %32, %26
  %46 = call i8* @palloc(i32 16)
  %47 = bitcast i8* %46 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %6, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @on_commit_stop_workers, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = call i32 @lappend(i32 %56, %struct.TYPE_6__* %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @on_commit_stop_workers, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @MemoryContextSwitchTo(i32 %61)
  ret void
}

declare dso_local i32 @GetCurrentTransactionNestLevel(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @lappend(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
