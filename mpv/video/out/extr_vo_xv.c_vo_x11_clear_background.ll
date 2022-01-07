; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_vo_x11_clear_background.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_vo_x11_clear_background.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, %struct.xvctx*, %struct.vo_x11_state* }
%struct.xvctx = type { i32 }
%struct.vo_x11_state = type { i32 }
%struct.mp_rect = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.mp_rect*)* @vo_x11_clear_background to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_clear_background(%struct.vo* %0, %struct.mp_rect* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.mp_rect*, align 8
  %5 = alloca %struct.vo_x11_state*, align 8
  %6 = alloca %struct.xvctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.mp_rect* %1, %struct.mp_rect** %4, align 8
  %10 = load %struct.vo*, %struct.vo** %3, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 3
  %12 = load %struct.vo_x11_state*, %struct.vo_x11_state** %11, align 8
  store %struct.vo_x11_state* %12, %struct.vo_x11_state** %5, align 8
  %13 = load %struct.vo*, %struct.vo** %3, align 8
  %14 = getelementptr inbounds %struct.vo, %struct.vo* %13, i32 0, i32 2
  %15 = load %struct.xvctx*, %struct.xvctx** %14, align 8
  store %struct.xvctx* %15, %struct.xvctx** %6, align 8
  %16 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  %17 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.vo*, %struct.vo** %3, align 8
  %20 = getelementptr inbounds %struct.vo, %struct.vo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.vo*, %struct.vo** %3, align 8
  %23 = getelementptr inbounds %struct.vo, %struct.vo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.vo*, %struct.vo** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %29 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fill_rect(%struct.vo* %25, i32 %26, i32 0, i32 0, i32 %27, i32 %30)
  %32 = load %struct.vo*, %struct.vo** %3, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %35 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @fill_rect(%struct.vo* %32, i32 %33, i32 0, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.vo*, %struct.vo** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %43 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %46 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %49 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @fill_rect(%struct.vo* %40, i32 %41, i32 0, i32 %44, i32 %47, i32 %50)
  %52 = load %struct.vo*, %struct.vo** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %55 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %58 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %62 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @fill_rect(%struct.vo* %52, i32 %53, i32 %56, i32 %59, i32 %60, i32 %63)
  %65 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %66 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @XFlush(i32 %67)
  ret void
}

declare dso_local i32 @fill_rect(%struct.vo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XFlush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
