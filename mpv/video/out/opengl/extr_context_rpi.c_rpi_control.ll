; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_rpi.c_rpi_control.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_rpi.c_rpi_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.priv* }
%struct.priv = type { double, i32 }
%struct.mp_image = type { i32 }

@VO_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Recovering from display mode switch...\0A\00", align 1
@VO_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*, i32*, i32, i8*)* @rpi_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpi_control(%struct.ra_ctx* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ra_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.priv*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.ra_ctx*, %struct.ra_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %11, i32 0, i32 0
  %13 = load %struct.priv*, %struct.priv** %12, align 8
  store %struct.priv* %13, %struct.priv** %10, align 8
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %44 [
    i32 128, label %15
    i32 130, label %21
    i32 131, label %25
    i32 129, label %37
  ]

15:                                               ; preds = %4
  %16 = load %struct.ra_ctx*, %struct.ra_ctx** %6, align 8
  %17 = call %struct.mp_image* @take_screenshot(%struct.ra_ctx* %16)
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.mp_image**
  store %struct.mp_image* %17, %struct.mp_image** %19, align 8
  %20 = load i32, i32* @VO_TRUE, align 4
  store i32 %20, i32* %5, align 4
  br label %46

21:                                               ; preds = %4
  %22 = load %struct.ra_ctx*, %struct.ra_ctx** %6, align 8
  %23 = call i32 @recreate_dispmanx(%struct.ra_ctx* %22)
  %24 = load i32, i32* @VO_TRUE, align 4
  store i32 %24, i32* %5, align 4
  br label %46

25:                                               ; preds = %4
  %26 = load %struct.priv*, %struct.priv** %10, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 1
  %28 = call i32 @atomic_fetch_and(i32* %27, i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.ra_ctx*, %struct.ra_ctx** %6, align 8
  %32 = call i32 @MP_WARN(%struct.ra_ctx* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ra_ctx*, %struct.ra_ctx** %6, align 8
  %34 = call i32 @recreate_dispmanx(%struct.ra_ctx* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @VO_TRUE, align 4
  store i32 %36, i32* %5, align 4
  br label %46

37:                                               ; preds = %4
  %38 = load %struct.priv*, %struct.priv** %10, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 0
  %40 = load double, double* %39, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = bitcast i8* %41 to double*
  store double %40, double* %42, align 8
  %43 = load i32, i32* @VO_TRUE, align 4
  store i32 %43, i32* %5, align 4
  br label %46

44:                                               ; preds = %4
  %45 = load i32, i32* @VO_NOTIMPL, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %37, %35, %21, %15
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.mp_image* @take_screenshot(%struct.ra_ctx*) #1

declare dso_local i32 @recreate_dispmanx(%struct.ra_ctx*) #1

declare dso_local i32 @atomic_fetch_and(i32*, i32) #1

declare dso_local i32 @MP_WARN(%struct.ra_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
