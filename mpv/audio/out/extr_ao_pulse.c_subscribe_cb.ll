; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_subscribe_cb.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_subscribe_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32 }

@PA_SUBSCRIPTION_MASK_SINK = common dso_local global i32 0, align 4
@PA_SUBSCRIPTION_EVENT_FACILITY_MASK = common dso_local global i32 0, align 4
@PA_SUBSCRIPTION_EVENT_NEW = common dso_local global i32 0, align 4
@PA_SUBSCRIPTION_EVENT_REMOVE = common dso_local global i32 0, align 4
@PA_SUBSCRIPTION_EVENT_SINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i8*)* @subscribe_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subscribe_cb(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ao*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.ao*
  store %struct.ao* %13, %struct.ao** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @PA_SUBSCRIPTION_MASK_SINK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PA_SUBSCRIPTION_EVENT_FACILITY_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @PA_SUBSCRIPTION_EVENT_NEW, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @PA_SUBSCRIPTION_EVENT_REMOVE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23, %4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @PA_SUBSCRIPTION_EVENT_SINK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.ao*, %struct.ao** %9, align 8
  %33 = call i32 @ao_hotplug_event(%struct.ao* %32)
  br label %34

34:                                               ; preds = %31, %27, %23
  ret void
}

declare dso_local i32 @ao_hotplug_event(%struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
