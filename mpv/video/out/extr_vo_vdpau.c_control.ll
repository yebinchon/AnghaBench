; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, %struct.vdpctx* }
%struct.vdpctx = type { i32 }
%struct.mp_image = type { i32 }

@VO_TRUE = common dso_local global i32 0, align 4
@VO_EVENT_RESIZE = common dso_local global i32 0, align 4
@VO_EVENT_EXPOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, i32, i8*)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control(%struct.vo* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vdpctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.vo*, %struct.vo** %5, align 8
  %12 = getelementptr inbounds %struct.vo, %struct.vo* %11, i32 0, i32 1
  %13 = load %struct.vdpctx*, %struct.vdpctx** %12, align 8
  store %struct.vdpctx* %13, %struct.vdpctx** %8, align 8
  %14 = load %struct.vo*, %struct.vo** %5, align 8
  %15 = call i32 @check_preemption(%struct.vo* %14)
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %43 [
    i32 128, label %17
    i32 129, label %21
    i32 131, label %24
    i32 130, label %27
    i32 132, label %37
  ]

17:                                               ; preds = %3
  %18 = load %struct.vo*, %struct.vo** %5, align 8
  %19 = call i32 @checked_resize(%struct.vo* %18)
  %20 = load i32, i32* @VO_TRUE, align 4
  store i32 %20, i32* %4, align 4
  br label %69

21:                                               ; preds = %3
  %22 = load %struct.vo*, %struct.vo** %5, align 8
  %23 = getelementptr inbounds %struct.vo, %struct.vo* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  store i32 1, i32* %4, align 4
  br label %69

24:                                               ; preds = %3
  %25 = load %struct.vo*, %struct.vo** %5, align 8
  %26 = call i32 @forget_frames(%struct.vo* %25, i32 1)
  store i32 1, i32* %4, align 4
  br label %69

27:                                               ; preds = %3
  %28 = load %struct.vo*, %struct.vo** %5, align 8
  %29 = call i32 @status_ok(%struct.vo* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %69

32:                                               ; preds = %27
  %33 = load %struct.vo*, %struct.vo** %5, align 8
  %34 = call %struct.mp_image* @get_window_screenshot(%struct.vo* %33)
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to %struct.mp_image**
  store %struct.mp_image* %34, %struct.mp_image** %36, align 8
  store i32 1, i32* %4, align 4
  br label %69

37:                                               ; preds = %3
  %38 = load %struct.vdpctx*, %struct.vdpctx** %8, align 8
  %39 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 4
  store i32 1, i32* %4, align 4
  br label %69

43:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %44 = load %struct.vo*, %struct.vo** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @vo_x11_control(%struct.vo* %44, i32* %9, i32 %45, i8* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @VO_EVENT_RESIZE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.vo*, %struct.vo** %5, align 8
  %54 = call i32 @checked_resize(%struct.vo* %53)
  br label %64

55:                                               ; preds = %43
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @VO_EVENT_EXPOSE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.vo*, %struct.vo** %5, align 8
  %62 = getelementptr inbounds %struct.vo, %struct.vo* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %52
  %65 = load %struct.vo*, %struct.vo** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @vo_event(%struct.vo* %65, i32 %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %37, %32, %31, %24, %21, %17
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @check_preemption(%struct.vo*) #1

declare dso_local i32 @checked_resize(%struct.vo*) #1

declare dso_local i32 @forget_frames(%struct.vo*, i32) #1

declare dso_local i32 @status_ok(%struct.vo*) #1

declare dso_local %struct.mp_image* @get_window_screenshot(%struct.vo*) #1

declare dso_local i32 @vo_x11_control(%struct.vo*, i32*, i32, i8*) #1

declare dso_local i32 @vo_event(%struct.vo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
