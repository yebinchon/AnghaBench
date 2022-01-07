; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_AtSubAbort_Notify.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_AtSubAbort_Notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__* }

@pendingActions = common dso_local global %struct.TYPE_6__* null, align 8
@pendingNotifies = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtSubAbort_Notify() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = call i32 (...) @GetCurrentTransactionNestLevel()
  store i32 %4, i32* %1, align 4
  br label %5

5:                                                ; preds = %16, %0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pendingActions, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pendingActions, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %1, align 4
  %13 = icmp sge i32 %11, %12
  br label %14

14:                                               ; preds = %8, %5
  %15 = phi i1 [ false, %5 ], [ %13, %8 ]
  br i1 %15, label %16, label %23

16:                                               ; preds = %14
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pendingActions, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %2, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pendingActions, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** @pendingActions, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = call i32 @pfree(%struct.TYPE_6__* %21)
  br label %5

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %35, %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pendingNotifies, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pendingNotifies, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %1, align 4
  %32 = icmp sge i32 %30, %31
  br label %33

33:                                               ; preds = %27, %24
  %34 = phi i1 [ false, %24 ], [ %32, %27 ]
  br i1 %34, label %35, label %42

35:                                               ; preds = %33
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pendingNotifies, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %3, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pendingNotifies, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** @pendingNotifies, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = call i32 @pfree(%struct.TYPE_6__* %40)
  br label %24

42:                                               ; preds = %33
  ret void
}

declare dso_local i32 @GetCurrentTransactionNestLevel(...) #1

declare dso_local i32 @pfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
