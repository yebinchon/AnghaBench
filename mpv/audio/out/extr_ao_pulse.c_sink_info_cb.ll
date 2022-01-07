; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_sink_info_cb.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_sink_info_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.sink_cb_ctx = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.priv* }
%struct.priv = type { i32 }
%struct.ao_device_desc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32, i8*)* @sink_info_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sink_info_cb(i32* %0, %struct.TYPE_4__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sink_cb_ctx*, align 8
  %10 = alloca %struct.priv*, align 8
  %11 = alloca %struct.ao_device_desc, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.sink_cb_ctx*
  store %struct.sink_cb_ctx* %13, %struct.sink_cb_ctx** %9, align 8
  %14 = load %struct.sink_cb_ctx*, %struct.sink_cb_ctx** %9, align 8
  %15 = getelementptr inbounds %struct.sink_cb_ctx, %struct.sink_cb_ctx* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.priv*, %struct.priv** %17, align 8
  store %struct.priv* %18, %struct.priv** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.priv*, %struct.priv** %10, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pa_threaded_mainloop_signal(i32 %24, i32 0)
  br label %42

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %11, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 4
  %31 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %11, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %31, align 4
  %35 = load %struct.sink_cb_ctx*, %struct.sink_cb_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.sink_cb_ctx, %struct.sink_cb_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sink_cb_ctx*, %struct.sink_cb_ctx** %9, align 8
  %39 = getelementptr inbounds %struct.sink_cb_ctx, %struct.sink_cb_ctx* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @ao_device_list_add(i32 %37, %struct.TYPE_5__* %40, %struct.ao_device_desc* %11)
  br label %42

42:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @pa_threaded_mainloop_signal(i32, i32) #1

declare dso_local i32 @ao_device_list_add(i32, %struct.TYPE_5__*, %struct.ao_device_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
