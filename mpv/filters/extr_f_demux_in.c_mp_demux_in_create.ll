; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_demux_in.c_mp_demux_in_create.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_demux_in.c_mp_demux_in_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { %struct.sh_stream* }
%struct.sh_stream = type { i32 }

@demux_filter = common dso_local global i32 0, align 4
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"out\00", align 1
@wakeup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_filter* @mp_demux_in_create(%struct.mp_filter* %0, %struct.sh_stream* %1) #0 {
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.sh_stream*, align 8
  %6 = alloca %struct.mp_filter*, align 8
  %7 = alloca %struct.priv*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store %struct.sh_stream* %1, %struct.sh_stream** %5, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %9 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %8, i32* @demux_filter)
  store %struct.mp_filter* %9, %struct.mp_filter** %6, align 8
  %10 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %11 = icmp ne %struct.mp_filter* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.mp_filter* null, %struct.mp_filter** %3, align 8
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %15 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %14, i32 0, i32 0
  %16 = load %struct.priv*, %struct.priv** %15, align 8
  store %struct.priv* %16, %struct.priv** %7, align 8
  %17 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %18 = load %struct.priv*, %struct.priv** %7, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  store %struct.sh_stream* %17, %struct.sh_stream** %19, align 8
  %20 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %21 = load i32, i32* @MP_PIN_OUT, align 4
  %22 = call i32 @mp_filter_add_pin(%struct.mp_filter* %20, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.priv*, %struct.priv** %7, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 0
  %25 = load %struct.sh_stream*, %struct.sh_stream** %24, align 8
  %26 = load i32, i32* @wakeup, align 4
  %27 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %28 = call i32 @demux_set_stream_wakeup_cb(%struct.sh_stream* %25, i32 %26, %struct.mp_filter* %27)
  %29 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  store %struct.mp_filter* %29, %struct.mp_filter** %3, align 8
  br label %30

30:                                               ; preds = %13, %12
  %31 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  ret %struct.mp_filter* %31
}

declare dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter*, i32*) #1

declare dso_local i32 @mp_filter_add_pin(%struct.mp_filter*, i32, i8*) #1

declare dso_local i32 @demux_set_stream_wakeup_cb(%struct.sh_stream*, i32, %struct.mp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
