; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_win.c_destroy_gl.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_win.c_destroy_gl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { i32*, i64 }

@current_wgl_context = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @destroy_gl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_gl(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ra_ctx*
  store %struct.ra_ctx* %6, %struct.ra_ctx** %3, align 8
  %7 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %7, i32 0, i32 1
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %4, align 8
  %10 = load %struct.priv*, %struct.priv** %4, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.priv*, %struct.priv** %4, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @wglDeleteContext(i64 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.priv*, %struct.priv** %4, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @vo_w32_hwnd(i32 %29)
  %31 = load %struct.priv*, %struct.priv** %4, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ReleaseDC(i32 %30, i32* %33)
  br label %35

35:                                               ; preds = %26, %19
  %36 = load %struct.priv*, %struct.priv** %4, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  store i32* null, i32** @current_wgl_context, align 8
  ret void
}

declare dso_local i32 @wglDeleteContext(i64) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

declare dso_local i32 @vo_w32_hwnd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
