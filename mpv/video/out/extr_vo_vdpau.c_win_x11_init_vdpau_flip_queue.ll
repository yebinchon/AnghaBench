; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_win_x11_init_vdpau_flip_queue.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_win_x11_init_vdpau_flip_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state*, %struct.vdpctx* }
%struct.vo_x11_state = type { i32 }
%struct.vdpctx = type { i64, i64, i32, i64, %struct.TYPE_4__, i32, %struct.vdp_functions* }
%struct.TYPE_4__ = type { i64, double, double, double }
%struct.vdp_functions = type { i32 (i64, %struct.TYPE_5__*)*, i32 (i32, i64, i64*)*, i32 (i32, i32, i64*)* }
%struct.TYPE_5__ = type { double, double, double, i32 }

@VDP_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"Error when calling vdp_presentation_queue_target_create_x11\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Error when calling vdp_presentation_queue_create\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Error setting colorkey\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"Compositing window manager detected. Assuming timing info is inaccurate.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @win_x11_init_vdpau_flip_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @win_x11_init_vdpau_flip_queue(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vdpctx*, align 8
  %4 = alloca %struct.vdp_functions*, align 8
  %5 = alloca %struct.vo_x11_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %8 = load %struct.vo*, %struct.vo** %2, align 8
  %9 = getelementptr inbounds %struct.vo, %struct.vo* %8, i32 0, i32 1
  %10 = load %struct.vdpctx*, %struct.vdpctx** %9, align 8
  store %struct.vdpctx* %10, %struct.vdpctx** %3, align 8
  %11 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %12 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %11, i32 0, i32 6
  %13 = load %struct.vdp_functions*, %struct.vdp_functions** %12, align 8
  store %struct.vdp_functions* %13, %struct.vdp_functions** %4, align 8
  %14 = load %struct.vo*, %struct.vo** %2, align 8
  %15 = getelementptr inbounds %struct.vo, %struct.vo* %14, i32 0, i32 0
  %16 = load %struct.vo_x11_state*, %struct.vo_x11_state** %15, align 8
  store %struct.vo_x11_state* %16, %struct.vo_x11_state** %5, align 8
  %17 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %18 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %24 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %23, i32 0, i32 2
  %25 = load i32 (i32, i32, i64*)*, i32 (i32, i32, i64*)** %24, align 8
  %26 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %27 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %30 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %33 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %32, i32 0, i32 0
  %34 = call i32 %25(i32 %28, i32 %31, i64* %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.vo*, %struct.vo** %2, align 8
  %36 = call i32 @CHECK_VDP_ERROR(%struct.vo* %35, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %22, %1
  %38 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %39 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %45 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %44, i32 0, i32 1
  %46 = load i32 (i32, i64, i64*)*, i32 (i32, i64, i64*)** %45, align 8
  %47 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %48 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %51 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %54 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %53, i32 0, i32 1
  %55 = call i32 %46(i32 %49, i64 %52, i64* %54)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.vo*, %struct.vo** %2, align 8
  %57 = call i32 @CHECK_VDP_ERROR(%struct.vo* %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %43, %37
  %59 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %60 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %66 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %67 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load double, double* %68, align 8
  %70 = fdiv double %69, 2.550000e+02
  store double %70, double* %65, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %72 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %73 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load double, double* %74, align 8
  %76 = fdiv double %75, 2.550000e+02
  store double %76, double* %71, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %78 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %79 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load double, double* %80, align 8
  %82 = fdiv double %81, 2.550000e+02
  store double %82, double* %77, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i32 0, i32* %83, align 8
  %84 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %85 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %84, i32 0, i32 0
  %86 = load i32 (i64, %struct.TYPE_5__*)*, i32 (i64, %struct.TYPE_5__*)** %85, align 8
  %87 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %88 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 %86(i64 %89, %struct.TYPE_5__* %7)
  store i32 %90, i32* %6, align 4
  %91 = load %struct.vo*, %struct.vo** %2, align 8
  %92 = call i32 @CHECK_VDP_WARNING(%struct.vo* %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %64, %58
  %94 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %95 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load %struct.vo*, %struct.vo** %2, align 8
  %100 = call i64 @vo_x11_screen_is_composited(%struct.vo* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load %struct.vo*, %struct.vo** %2, align 8
  %104 = call i32 @MP_INFO(%struct.vo* %103, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %106 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %105, i32 0, i32 2
  store i32 -1, i32* %106, align 8
  br label %107

107:                                              ; preds = %102, %98, %93
  ret i32 0
}

declare dso_local i32 @CHECK_VDP_ERROR(%struct.vo*, i8*) #1

declare dso_local i32 @CHECK_VDP_WARNING(%struct.vo*, i8*) #1

declare dso_local i64 @vo_x11_screen_is_composited(%struct.vo*) #1

declare dso_local i32 @MP_INFO(%struct.vo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
