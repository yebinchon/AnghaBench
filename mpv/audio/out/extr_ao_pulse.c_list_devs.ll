; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_list_devs.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_list_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, i32 }
%struct.ao_device_list = type { i32 }
%struct.sink_cb_ctx = type { %struct.ao_device_list*, %struct.ao* }

@sink_info_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*, %struct.ao_device_list*)* @list_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_devs(%struct.ao* %0, %struct.ao_device_list* %1) #0 {
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.ao_device_list*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca %struct.sink_cb_ctx, align 8
  store %struct.ao* %0, %struct.ao** %3, align 8
  store %struct.ao_device_list* %1, %struct.ao_device_list** %4, align 8
  %7 = load %struct.ao*, %struct.ao** %3, align 8
  %8 = getelementptr inbounds %struct.ao, %struct.ao* %7, i32 0, i32 0
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %5, align 8
  %10 = getelementptr inbounds %struct.sink_cb_ctx, %struct.sink_cb_ctx* %6, i32 0, i32 0
  %11 = load %struct.ao*, %struct.ao** %3, align 8
  %12 = bitcast %struct.ao* %11 to %struct.ao_device_list*
  store %struct.ao_device_list* %12, %struct.ao_device_list** %10, align 8
  %13 = getelementptr inbounds %struct.sink_cb_ctx, %struct.sink_cb_ctx* %6, i32 0, i32 1
  %14 = load %struct.ao_device_list*, %struct.ao_device_list** %4, align 8
  %15 = bitcast %struct.ao_device_list* %14 to %struct.ao*
  store %struct.ao* %15, %struct.ao** %13, align 8
  %16 = load %struct.priv*, %struct.priv** %5, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pa_threaded_mainloop_lock(i32 %18)
  %20 = load %struct.priv*, %struct.priv** %5, align 8
  %21 = load %struct.priv*, %struct.priv** %5, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @sink_info_cb, align 4
  %25 = call i32 @pa_context_get_sink_info_list(i32 %23, i32 %24, %struct.sink_cb_ctx* %6)
  %26 = call i32 @waitop(%struct.priv* %20, i32 %25)
  ret void
}

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i32 @waitop(%struct.priv*, i32) #1

declare dso_local i32 @pa_context_get_sink_info_list(i32, i32, %struct.sink_cb_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
