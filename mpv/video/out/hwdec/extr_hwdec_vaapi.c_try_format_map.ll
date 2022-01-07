; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi.c_try_format_map.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi.c_try_format_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { i32 }
%struct.mp_image = type { i32 }
%struct.ra_hwdec_mapper = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec*, %struct.mp_image*)* @try_format_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_format_map(%struct.ra_hwdec* %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.ra_hwdec*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ra_hwdec_mapper*, align 8
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %3, align 8
  store %struct.mp_image* %1, %struct.mp_image** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %8 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %9 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %8, i32 0, i32 0
  %10 = call %struct.ra_hwdec_mapper* @ra_hwdec_mapper_create(%struct.ra_hwdec* %7, i32* %9)
  store %struct.ra_hwdec_mapper* %10, %struct.ra_hwdec_mapper** %6, align 8
  %11 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %6, align 8
  %12 = icmp ne %struct.ra_hwdec_mapper* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %6, align 8
  %15 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %16 = call i64 @ra_hwdec_mapper_map(%struct.ra_hwdec_mapper* %14, %struct.mp_image* %15)
  %17 = icmp sge i64 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %13, %2
  %20 = call i32 @ra_hwdec_mapper_free(%struct.ra_hwdec_mapper** %6)
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local %struct.ra_hwdec_mapper* @ra_hwdec_mapper_create(%struct.ra_hwdec*, i32*) #1

declare dso_local i64 @ra_hwdec_mapper_map(%struct.ra_hwdec_mapper*, %struct.mp_image*) #1

declare dso_local i32 @ra_hwdec_mapper_free(%struct.ra_hwdec_mapper**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
