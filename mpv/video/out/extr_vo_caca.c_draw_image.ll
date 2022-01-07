; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_caca.c_draw_image.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_caca.c_draw_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32* }

@depth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.TYPE_4__*)* @draw_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_image(%struct.vo* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.priv*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.vo*, %struct.vo** %3, align 8
  %7 = getelementptr inbounds %struct.vo, %struct.vo* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %5, align 8
  %9 = load %struct.priv*, %struct.priv** %5, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.priv*, %struct.priv** %5, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @depth, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load %struct.priv*, %struct.priv** %5, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.priv*, %struct.priv** %5, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @depth, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy_pic(i32 %11, i32 %16, i32 %21, i32 %24, i32 %29, i32 %34)
  %36 = load %struct.priv*, %struct.priv** %5, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.priv*, %struct.priv** %5, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.priv*, %struct.priv** %5, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.priv*, %struct.priv** %5, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.priv*, %struct.priv** %5, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @caca_dither_bitmap(i32 %38, i32 0, i32 0, i32 %41, i32 %44, i32 %47, i32 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = call i32 @talloc_free(%struct.TYPE_4__* %52)
  ret void
}

declare dso_local i32 @memcpy_pic(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @caca_dither_bitmap(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @talloc_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
