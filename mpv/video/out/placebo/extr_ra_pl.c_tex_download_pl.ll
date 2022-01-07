; ModuleID = '/home/carl/AnghaBench/mpv/video/out/placebo/extr_ra_pl.c_tex_download_pl.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/placebo/extr_ra_pl.c_tex_download_pl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_tex_download_params = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pl_tex* }
%struct.pl_tex = type { i32 }
%struct.pl_tex_transfer_params = type { i32, i32, %struct.pl_tex* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra*, %struct.ra_tex_download_params*)* @tex_download_pl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tex_download_pl(%struct.ra* %0, %struct.ra_tex_download_params* %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca %struct.ra_tex_download_params*, align 8
  %5 = alloca %struct.pl_tex*, align 8
  %6 = alloca %struct.pl_tex_transfer_params, align 8
  store %struct.ra* %0, %struct.ra** %3, align 8
  store %struct.ra_tex_download_params* %1, %struct.ra_tex_download_params** %4, align 8
  %7 = load %struct.ra_tex_download_params*, %struct.ra_tex_download_params** %4, align 8
  %8 = getelementptr inbounds %struct.ra_tex_download_params, %struct.ra_tex_download_params* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.pl_tex*, %struct.pl_tex** %10, align 8
  store %struct.pl_tex* %11, %struct.pl_tex** %5, align 8
  %12 = getelementptr inbounds %struct.pl_tex_transfer_params, %struct.pl_tex_transfer_params* %6, i32 0, i32 0
  %13 = load %struct.ra_tex_download_params*, %struct.ra_tex_download_params** %4, align 8
  %14 = getelementptr inbounds %struct.ra_tex_download_params, %struct.ra_tex_download_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.pl_tex*, %struct.pl_tex** %5, align 8
  %17 = call i32 @texel_stride_w(i32 %15, %struct.pl_tex* %16)
  store i32 %17, i32* %12, align 8
  %18 = getelementptr inbounds %struct.pl_tex_transfer_params, %struct.pl_tex_transfer_params* %6, i32 0, i32 1
  %19 = load %struct.ra_tex_download_params*, %struct.ra_tex_download_params** %4, align 8
  %20 = getelementptr inbounds %struct.ra_tex_download_params, %struct.ra_tex_download_params* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.pl_tex_transfer_params, %struct.pl_tex_transfer_params* %6, i32 0, i32 2
  %23 = load %struct.pl_tex*, %struct.pl_tex** %5, align 8
  store %struct.pl_tex* %23, %struct.pl_tex** %22, align 8
  %24 = load %struct.ra*, %struct.ra** %3, align 8
  %25 = call i32 @get_gpu(%struct.ra* %24)
  %26 = call i32 @pl_tex_download(i32 %25, %struct.pl_tex_transfer_params* %6)
  ret i32 %26
}

declare dso_local i32 @texel_stride_w(i32, %struct.pl_tex*) #1

declare dso_local i32 @pl_tex_download(i32, %struct.pl_tex_transfer_params*) #1

declare dso_local i32 @get_gpu(%struct.ra*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
