; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_output_handle_done.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_output_handle_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_output = type { i32 }
%struct.vo_wayland_output = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [102 x i8] c"Registered output %s %s (0x%x):\0A\09x: %dpx, y: %dpx\0A\09w: %dpx (%dmm), h: %dpx (%dmm)\0A\09scale: %d\0A\09Hz: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_output*)* @output_handle_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_handle_done(i8* %0, %struct.wl_output* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wl_output*, align 8
  %5 = alloca %struct.vo_wayland_output*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wl_output* %1, %struct.wl_output** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.vo_wayland_output*
  store %struct.vo_wayland_output* %7, %struct.vo_wayland_output** %5, align 8
  %8 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %9 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %13 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %11
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 4
  %19 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %20 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %24 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %22
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 8
  %30 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %31 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %34 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %37 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %40 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %43 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %47 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %51 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %50, i32 0, i32 3
  %52 = call i32 @mp_rect_w(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %51)
  %53 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %54 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %57 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %56, i32 0, i32 3
  %58 = call i32 @mp_rect_h(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %57)
  %59 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %60 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %63 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %5, align 8
  %66 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @MP_VERBOSE(i32 %32, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %41, i64 %45, i64 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67)
  ret void
}

declare dso_local i32 @MP_VERBOSE(i32, i8*, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mp_rect_w(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8) #1

declare dso_local i32 @mp_rect_h(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
