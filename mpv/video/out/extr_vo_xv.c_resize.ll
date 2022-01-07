; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_resize.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, %struct.xvctx* }
%struct.xvctx = type { i32, i32 }
%struct.mp_osd_res = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.xvctx*, align 8
  %4 = alloca %struct.mp_osd_res, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %5 = load %struct.vo*, %struct.vo** %2, align 8
  %6 = getelementptr inbounds %struct.vo, %struct.vo* %5, i32 0, i32 2
  %7 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  store %struct.xvctx* %7, %struct.xvctx** %3, align 8
  %8 = load %struct.vo*, %struct.vo** %2, align 8
  %9 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %10 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %9, i32 0, i32 0
  %11 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %12 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %11, i32 0, i32 1
  %13 = call i32 @vo_get_src_dst_rects(%struct.vo* %8, i32* %10, i32* %12, %struct.mp_osd_res* %4)
  %14 = load %struct.vo*, %struct.vo** %2, align 8
  %15 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %16 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %15, i32 0, i32 1
  %17 = call i32 @vo_x11_clear_background(%struct.vo* %14, i32* %16)
  %18 = load %struct.vo*, %struct.vo** %2, align 8
  %19 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %20 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %19, i32 0, i32 1
  %21 = call i32 @xv_draw_colorkey(%struct.vo* %18, i32* %20)
  %22 = load %struct.vo*, %struct.vo** %2, align 8
  %23 = call i32 @read_xv_csp(%struct.vo* %22)
  %24 = load %struct.vo*, %struct.vo** %2, align 8
  %25 = getelementptr inbounds %struct.vo, %struct.vo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %28 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %27, i32 0, i32 1
  %29 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %30 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %29, i32 0, i32 0
  %31 = call i32 @mp_input_set_mouse_transform(i32 %26, i32* %28, i32* %30)
  %32 = load %struct.vo*, %struct.vo** %2, align 8
  %33 = getelementptr inbounds %struct.vo, %struct.vo* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  ret void
}

declare dso_local i32 @vo_get_src_dst_rects(%struct.vo*, i32*, i32*, %struct.mp_osd_res*) #1

declare dso_local i32 @vo_x11_clear_background(%struct.vo*, i32*) #1

declare dso_local i32 @xv_draw_colorkey(%struct.vo*, i32*) #1

declare dso_local i32 @read_xv_csp(%struct.vo*) #1

declare dso_local i32 @mp_input_set_mouse_transform(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
