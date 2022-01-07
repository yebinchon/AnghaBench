; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_output_handle_geometry.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_output_handle_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_output = type { i32 }
%struct.vo_wayland_output = type { i8*, i8*, %struct.TYPE_2__, i32, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_output*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @output_handle_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_handle_geometry(i8* %0, %struct.wl_output* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wl_output*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.vo_wayland_output*, align 8
  store i8* %0, i8** %11, align 8
  store %struct.wl_output* %1, %struct.wl_output** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = bitcast i8* %22 to %struct.vo_wayland_output*
  store %struct.vo_wayland_output* %23, %struct.vo_wayland_output** %21, align 8
  %24 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %21, align 8
  %25 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %18, align 8
  %28 = call i8* @talloc_strdup(i32 %26, i8* %27)
  %29 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %21, align 8
  %30 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %21, align 8
  %32 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %19, align 8
  %35 = call i8* @talloc_strdup(i32 %33, i8* %34)
  %36 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %21, align 8
  %37 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %21, align 8
  %40 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %21, align 8
  %44 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %21, align 8
  %48 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %21, align 8
  %51 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  ret void
}

declare dso_local i8* @talloc_strdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
