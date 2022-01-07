; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_d3d11_control.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_d3d11_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32 }

@VO_EVENT_RESIZE = common dso_local global i32 0, align 4
@VO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*, i32*, i32, i8*)* @d3d11_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d11_control(%struct.ra_ctx* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ra_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.ra_ctx*, %struct.ra_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @vo_w32_control(i32 %13, i32* %14, i32 %15, i8* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VO_EVENT_RESIZE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load %struct.ra_ctx*, %struct.ra_ctx** %6, align 8
  %25 = call i32 @resize(%struct.ra_ctx* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @VO_ERROR, align 4
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %4
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @vo_w32_control(i32, i32*, i32, i8*) #1

declare dso_local i32 @resize(%struct.ra_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
