; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_win.c_create_context_wgl_old.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_win.c_create_context_wgl_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Could not create GL context!\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not set GL context!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*)* @create_context_wgl_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_context_wgl_old(%struct.ra_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  %8 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %8, i32 0, i32 1
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %4, align 8
  %11 = load %struct.priv*, %struct.priv** %4, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @wglCreateContext(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @MP_FATAL(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %41

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @wglMakeCurrent(i32 %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @MP_FATAL(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @wglDeleteContext(i64 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %24
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.priv*, %struct.priv** %4, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %29, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @wglCreateContext(i32) #1

declare dso_local i32 @MP_FATAL(i32, i8*) #1

declare dso_local i32 @wglMakeCurrent(i32, i64) #1

declare dso_local i32 @wglDeleteContext(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
