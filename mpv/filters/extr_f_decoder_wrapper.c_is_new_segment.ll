; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_is_new_segment.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_is_new_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.demux_packet = type { i64, i64, i64, i64, i64 }
%struct.mp_frame = type { i64, %struct.demux_packet* }

@MP_FRAME_PACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priv*, i64, %struct.demux_packet*)* @is_new_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_new_segment(%struct.priv* %0, i64 %1, %struct.demux_packet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_frame, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca %struct.demux_packet*, align 8
  %8 = bitcast %struct.mp_frame* %5 to { i64, %struct.demux_packet* }*
  %9 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %8, i32 0, i32 0
  store i64 %1, i64* %9, align 8
  %10 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %8, i32 0, i32 1
  store %struct.demux_packet* %2, %struct.demux_packet** %10, align 8
  store %struct.priv* %0, %struct.priv** %6, align 8
  %11 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %5, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MP_FRAME_PACKET, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %68

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %5, i32 0, i32 1
  %18 = load %struct.demux_packet*, %struct.demux_packet** %17, align 8
  store %struct.demux_packet* %18, %struct.demux_packet** %7, align 8
  %19 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %20 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %16
  %24 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %25 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.priv*, %struct.priv** %6, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %65, label %31

31:                                               ; preds = %23
  %32 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %33 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.priv*, %struct.priv** %6, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %65, label %39

39:                                               ; preds = %31
  %40 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %41 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.priv*, %struct.priv** %6, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %65, label %47

47:                                               ; preds = %39, %16
  %48 = load %struct.priv*, %struct.priv** %6, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %55 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.priv*, %struct.priv** %6, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %58, %53, %47
  %64 = phi i1 [ false, %53 ], [ false, %47 ], [ %62, %58 ]
  br label %65

65:                                               ; preds = %63, %39, %31, %23
  %66 = phi i1 [ true, %39 ], [ true, %31 ], [ true, %23 ], [ %64, %63 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %15
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
