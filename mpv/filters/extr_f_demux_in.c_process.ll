; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_demux_in.c_process.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_demux_in.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32*, %struct.priv* }
%struct.priv = type { i32, i32 }
%struct.demux_packet = type { i32 }
%struct.mp_frame = type { i32, %struct.demux_packet*, i32 }

@MP_FRAME_PACKET = common dso_local global i32 0, align 4
@MP_FRAME_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.demux_packet*, align 8
  %5 = alloca %struct.mp_frame, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %6 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %7 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %6, i32 0, i32 1
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %10 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mp_pin_in_needs_data(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %53

17:                                               ; preds = %1
  store %struct.demux_packet* null, %struct.demux_packet** %4, align 8
  %18 = load %struct.priv*, %struct.priv** %3, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @demux_read_packet_async(i32 %20, %struct.demux_packet** %4)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %53

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %5, i32 0, i32 0
  %26 = load i32, i32* @MP_FRAME_PACKET, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %5, i32 0, i32 1
  %28 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  store %struct.demux_packet* %28, %struct.demux_packet** %27, align 8
  %29 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %5, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %31 = icmp ne %struct.demux_packet* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.priv*, %struct.priv** %3, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %46

35:                                               ; preds = %24
  %36 = load i32, i32* @MP_FRAME_EOF, align 4
  %37 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %5, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load %struct.priv*, %struct.priv** %3, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %53

43:                                               ; preds = %35
  %44 = load %struct.priv*, %struct.priv** %3, align 8
  %45 = getelementptr inbounds %struct.priv, %struct.priv* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %32
  %47 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %48 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mp_pin_in_write(i32 %51, %struct.mp_frame* byval(%struct.mp_frame) align 8 %5)
  br label %53

53:                                               ; preds = %46, %42, %23, %16
  ret void
}

declare dso_local i32 @mp_pin_in_needs_data(i32) #1

declare dso_local i64 @demux_read_packet_async(i32, %struct.demux_packet**) #1

declare dso_local i32 @mp_pin_in_write(i32, %struct.mp_frame* byval(%struct.mp_frame) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
