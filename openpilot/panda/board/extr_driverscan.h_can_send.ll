; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driverscan.h_can_send.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driverscan.h_can_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@BUS_MAX = common dso_local global i32 0, align 4
@can_num_lookup = common dso_local global i32* null, align 8
@gmlan_send_errs = common dso_local global i32 0, align 4
@can_queues = common dso_local global i32* null, align 8
@can_fwd_errs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @can_send(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = call i64 @safety_tx_hook(%struct.TYPE_6__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %50

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @BUS_MAX, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 15
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load i32*, i32** @can_num_lookup, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 255
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = call i64 @bitbang_gmlan(%struct.TYPE_6__* %25)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1
  %30 = load i32, i32* @gmlan_send_errs, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* @gmlan_send_errs, align 4
  br label %48

32:                                               ; preds = %19, %12
  %33 = load i32*, i32** @can_queues, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = call i64 @can_push(i32 %37, %struct.TYPE_6__* %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 1
  %43 = load i32, i32* @can_fwd_errs, align 4
  %44 = add i32 %43, %42
  store i32 %44, i32* @can_fwd_errs, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @CAN_NUM_FROM_BUS_NUM(i32 %45)
  %47 = call i32 @process_can(i32 %46)
  br label %48

48:                                               ; preds = %32, %24
  br label %49

49:                                               ; preds = %48, %8
  br label %50

50:                                               ; preds = %49, %2
  ret void
}

declare dso_local i64 @safety_tx_hook(%struct.TYPE_6__*) #1

declare dso_local i64 @bitbang_gmlan(%struct.TYPE_6__*) #1

declare dso_local i64 @can_push(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @process_can(i32) #1

declare dso_local i32 @CAN_NUM_FROM_BUS_NUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
