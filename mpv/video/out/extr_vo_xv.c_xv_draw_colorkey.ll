; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_xv_draw_colorkey.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_xv_draw_colorkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state*, %struct.xvctx* }
%struct.vo_x11_state = type { i32, i32 }
%struct.xvctx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mp_rect = type { i64, i64, i64, i64 }

@CK_METHOD_MANUALFILL = common dso_local global i64 0, align 8
@CK_METHOD_BACKGROUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.mp_rect*)* @xv_draw_colorkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xv_draw_colorkey(%struct.vo* %0, %struct.mp_rect* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.mp_rect*, align 8
  %5 = alloca %struct.xvctx*, align 8
  %6 = alloca %struct.vo_x11_state*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.mp_rect* %1, %struct.mp_rect** %4, align 8
  %7 = load %struct.vo*, %struct.vo** %3, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 1
  %9 = load %struct.xvctx*, %struct.xvctx** %8, align 8
  store %struct.xvctx* %9, %struct.xvctx** %5, align 8
  %10 = load %struct.vo*, %struct.vo** %3, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 0
  %12 = load %struct.vo_x11_state*, %struct.vo_x11_state** %11, align 8
  store %struct.vo_x11_state* %12, %struct.vo_x11_state** %6, align 8
  %13 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %14 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CK_METHOD_MANUALFILL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %21 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CK_METHOD_BACKGROUND, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %19, %2
  %27 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %28 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %73

32:                                               ; preds = %26
  %33 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %34 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %37 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %40 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @XSetForeground(i32 %35, i32 %38, i32 %41)
  %43 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %44 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %47 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  %50 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %53 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %56 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %59 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %62 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %66 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %69 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = call i32 @XFillRectangle(i32 %45, i32 %48, i32 %51, i64 %54, i64 %57, i64 %64, i64 %71)
  br label %73

73:                                               ; preds = %31, %32, %19
  ret void
}

declare dso_local i32 @XSetForeground(i32, i32, i32) #1

declare dso_local i32 @XFillRectangle(i32, i32, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
