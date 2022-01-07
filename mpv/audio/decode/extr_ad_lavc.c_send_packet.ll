; ModuleID = '/home/carl/AnghaBench/mpv/audio/decode/extr_ad_lavc.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/decode/extr_ad_lavc.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i64, i32, i32* }
%struct.demux_packet = type { i64 }

@MP_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Error decoding audio.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*, %struct.demux_packet*)* @send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_packet(%struct.mp_filter* %0, %struct.demux_packet* %1) #0 {
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.demux_packet*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  store %struct.demux_packet* %1, %struct.demux_packet** %4, align 8
  %9 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %10 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %9, i32 0, i32 0
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %5, align 8
  %12 = load %struct.priv*, %struct.priv** %5, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %16 = icmp ne %struct.demux_packet* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.priv*, %struct.priv** %5, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %25 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.priv*, %struct.priv** %5, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %23, %17, %2
  %30 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %31 = load %struct.priv*, %struct.priv** %5, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 1
  %33 = call i32 @mp_set_av_packet(i32* %7, %struct.demux_packet* %30, i32* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %36 = icmp ne %struct.demux_packet* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %37
  %40 = phi i32* [ %7, %37 ], [ null, %38 ]
  %41 = call i32 @avcodec_send_packet(i32* %34, i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %46 = call i32 @MP_ERR(%struct.mp_filter* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @mp_set_av_packet(i32*, %struct.demux_packet*, i32*) #1

declare dso_local i32 @avcodec_send_packet(i32*, i32*) #1

declare dso_local i32 @MP_ERR(%struct.mp_filter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
