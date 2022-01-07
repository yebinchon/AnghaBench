; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_SwitchToSharedLatch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_SwitchToSharedLatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MyLatch = common dso_local global i32* null, align 8
@LocalLatchData = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_2__* null, align 8
@FeBeWaitSet = common dso_local global i64 0, align 8
@WL_LATCH_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SwitchToSharedLatch() #0 {
  %1 = load i32*, i32** @MyLatch, align 8
  %2 = icmp eq i32* %1, @LocalLatchData
  %3 = zext i1 %2 to i32
  %4 = call i32 @Assert(i32 %3)
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MyProc, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @Assert(i32 %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MyProc, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32* %10, i32** @MyLatch, align 8
  %11 = load i64, i64* @FeBeWaitSet, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = load i64, i64* @FeBeWaitSet, align 8
  %15 = load i32, i32* @WL_LATCH_SET, align 4
  %16 = load i32*, i32** @MyLatch, align 8
  %17 = call i32 @ModifyWaitEvent(i64 %14, i32 1, i32 %15, i32* %16)
  br label %18

18:                                               ; preds = %13, %0
  %19 = load i32*, i32** @MyLatch, align 8
  %20 = call i32 @SetLatch(i32* %19)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ModifyWaitEvent(i64, i32, i32, i32*) #1

declare dso_local i32 @SetLatch(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
