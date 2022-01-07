; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_hotplug_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_hotplug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, i32 }

@PA_SUBSCRIPTION_MASK_SINK = common dso_local global i32 0, align 4
@context_success_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @hotplug_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hotplug_init(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  store %struct.ao* %0, %struct.ao** %3, align 8
  %5 = load %struct.ao*, %struct.ao** %3, align 8
  %6 = getelementptr inbounds %struct.ao, %struct.ao* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %4, align 8
  %8 = load %struct.ao*, %struct.ao** %3, align 8
  %9 = call i64 @pa_init_boilerplate(%struct.ao* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.priv*, %struct.priv** %4, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pa_threaded_mainloop_lock(i32 %15)
  %17 = load %struct.priv*, %struct.priv** %4, align 8
  %18 = load %struct.priv*, %struct.priv** %4, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PA_SUBSCRIPTION_MASK_SINK, align 4
  %22 = load i32, i32* @context_success_cb, align 4
  %23 = load %struct.ao*, %struct.ao** %3, align 8
  %24 = call i32 @pa_context_subscribe(i32 %20, i32 %21, i32 %22, %struct.ao* %23)
  %25 = call i32 @waitop(%struct.priv* %17, i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %12, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @pa_init_boilerplate(%struct.ao*) #1

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i32 @waitop(%struct.priv*, i32) #1

declare dso_local i32 @pa_context_subscribe(i32, i32, i32, %struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
