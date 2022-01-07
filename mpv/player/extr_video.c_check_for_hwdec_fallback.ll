; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_check_for_hwdec_fallback.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_check_for_hwdec_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.vo_chain* }
%struct.vo_chain = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@VDCTRL_FORCE_HWDEC_FALLBACK = common dso_local global i32 0, align 4
@CONTROL_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*)* @check_for_hwdec_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_hwdec_fallback(%struct.MPContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.vo_chain*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 0
  %7 = load %struct.vo_chain*, %struct.vo_chain** %6, align 8
  store %struct.vo_chain* %7, %struct.vo_chain** %4, align 8
  %8 = load %struct.vo_chain*, %struct.vo_chain** %4, align 8
  %9 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.vo_chain*, %struct.vo_chain** %4, align 8
  %16 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %36

20:                                               ; preds = %14
  %21 = load %struct.vo_chain*, %struct.vo_chain** %4, align 8
  %22 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @VDCTRL_FORCE_HWDEC_FALLBACK, align 4
  %27 = call i64 @mp_decoder_wrapper_control(i32 %25, i32 %26, i32* null)
  %28 = load i64, i64* @CONTROL_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %36

31:                                               ; preds = %20
  %32 = load %struct.vo_chain*, %struct.vo_chain** %4, align 8
  %33 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i32 @mp_output_chain_reset_harder(%struct.TYPE_4__* %34)
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %30, %19
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @mp_decoder_wrapper_control(i32, i32, i32*) #1

declare dso_local i32 @mp_output_chain_reset_harder(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
