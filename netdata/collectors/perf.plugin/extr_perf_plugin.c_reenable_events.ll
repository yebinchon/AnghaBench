; ModuleID = '/home/carl/AnghaBench/netdata/collectors/perf.plugin/extr_perf_plugin.c_reenable_events.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/perf.plugin/extr_perf_plugin.c_reenable_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EV_GROUP_NUM = common dso_local global i32 0, align 4
@number_of_cpus = common dso_local global i32 0, align 4
@group_leader_fds = common dso_local global i32** null, align 8
@NO_FD = common dso_local global i32 0, align 4
@PERF_EVENT_IOC_DISABLE = common dso_local global i32 0, align 4
@PERF_IOC_FLAG_GROUP = common dso_local global i32 0, align 4
@PERF_EVENT_IOC_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot reenable event group\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reenable_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reenable_events() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %49, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @EV_GROUP_NUM, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %52

8:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %45, %8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @number_of_cpus, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  %14 = load i32**, i32*** @group_leader_fds, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @NO_FD, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %13
  br label %45

30:                                               ; preds = %13
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @PERF_EVENT_IOC_DISABLE, align 4
  %33 = load i32, i32* @PERF_IOC_FLAG_GROUP, align 4
  %34 = call i32 @ioctl(i32 %31, i32 %32, i32 %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @PERF_EVENT_IOC_ENABLE, align 4
  %39 = load i32, i32* @PERF_IOC_FLAG_GROUP, align 4
  %40 = call i32 @ioctl(i32 %37, i32 %38, i32 %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %36, %30
  %43 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %36
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %9

48:                                               ; preds = %9
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %1, align 4
  br label %4

52:                                               ; preds = %4
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ioctl(i32, i32, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
