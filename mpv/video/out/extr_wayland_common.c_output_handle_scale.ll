; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_output_handle_scale.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_output_handle_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_output = type { i32 }
%struct.vo_wayland_output = type { i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Invalid output scale given by the compositor!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_output*, i64)* @output_handle_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_handle_scale(i8* %0, %struct.wl_output* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wl_output*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vo_wayland_output*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wl_output* %1, %struct.wl_output** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vo_wayland_output*
  store %struct.vo_wayland_output* %9, %struct.vo_wayland_output** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %7, align 8
  %14 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @MP_ERR(i32 %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %21

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %7, align 8
  %20 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @MP_ERR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
