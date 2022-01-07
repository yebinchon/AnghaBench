; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_vdpau_mixer.c_set_video_attribute.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_vdpau_mixer.c_set_video_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_vdpau_mixer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vdp_functions }
%struct.vdp_functions = type { i64 (i32, i32, i32*, i8**)*, i32 (i64)* }

@VDP_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Error setting video mixer attribute %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_vdpau_mixer*, i32, i8*, i8*)* @set_video_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_video_attribute(%struct.mp_vdpau_mixer* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_vdpau_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vdp_functions*, align 8
  %11 = alloca i64, align 8
  store %struct.mp_vdpau_mixer* %0, %struct.mp_vdpau_mixer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %6, align 8
  %13 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.vdp_functions* %15, %struct.vdp_functions** %10, align 8
  %16 = load %struct.vdp_functions*, %struct.vdp_functions** %10, align 8
  %17 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %16, i32 0, i32 0
  %18 = load i64 (i32, i32, i32*, i8**)*, i64 (i32, i32, i32*, i8**)** %17, align 8
  %19 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %6, align 8
  %20 = getelementptr inbounds %struct.mp_vdpau_mixer, %struct.mp_vdpau_mixer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 %18(i32 %21, i32 1, i32* %7, i8** %8)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @VDP_STATUS_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load %struct.mp_vdpau_mixer*, %struct.mp_vdpau_mixer** %6, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.vdp_functions*, %struct.vdp_functions** %10, align 8
  %30 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %29, i32 0, i32 1
  %31 = load i32 (i64)*, i32 (i64)** %30, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 %31(i64 %32)
  %34 = call i32 @MP_ERR(%struct.mp_vdpau_mixer* %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %33)
  store i32 -1, i32* %5, align 4
  br label %36

35:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @MP_ERR(%struct.mp_vdpau_mixer*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
