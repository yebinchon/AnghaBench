; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_caca.c_resize.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_caca.c_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@bpp = common dso_local global i32 0, align 4
@depth = common dso_local global i32 0, align 4
@rmask = common dso_local global i32 0, align 4
@gmask = common dso_local global i32 0, align 4
@bmask = common dso_local global i32 0, align 4
@amask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"caca_create_dither failed!\0A\00", align 1
@uint8_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resize(%struct.vo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.priv*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  %5 = load %struct.vo*, %struct.vo** %3, align 8
  %6 = getelementptr inbounds %struct.vo, %struct.vo* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %4, align 8
  %8 = load %struct.priv*, %struct.priv** %4, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @caca_get_canvas_width(i32 %10)
  %12 = load %struct.priv*, %struct.priv** %4, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 10
  store i32 %11, i32* %13, align 8
  %14 = load %struct.priv*, %struct.priv** %4, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @caca_get_canvas_height(i32 %16)
  %18 = load %struct.priv*, %struct.priv** %4, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 9
  store i32 %17, i32* %19, align 4
  %20 = load %struct.priv*, %struct.priv** %4, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @caca_free_dither(i32* %22)
  %24 = load %struct.priv*, %struct.priv** %4, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @talloc_free(i32 %26)
  %28 = load i32, i32* @bpp, align 4
  %29 = load %struct.priv*, %struct.priv** %4, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.priv*, %struct.priv** %4, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @depth, align 4
  %36 = load %struct.priv*, %struct.priv** %4, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %35, %38
  %40 = load i32, i32* @rmask, align 4
  %41 = load i32, i32* @gmask, align 4
  %42 = load i32, i32* @bmask, align 4
  %43 = load i32, i32* @amask, align 4
  %44 = call i32* @caca_create_dither(i32 %28, i32 %31, i32 %34, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.priv*, %struct.priv** %4, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  %47 = load %struct.priv*, %struct.priv** %4, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %1
  %52 = load %struct.vo*, %struct.vo** %3, align 8
  %53 = call i32 @MP_FATAL(%struct.vo* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %96

54:                                               ; preds = %1
  %55 = load i32, i32* @uint8_t, align 4
  %56 = load i32, i32* @depth, align 4
  %57 = load %struct.priv*, %struct.priv** %4, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %56, %59
  %61 = load %struct.priv*, %struct.priv** %4, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  %65 = call i32 @talloc_array(i32* null, i32 %55, i32 %64)
  %66 = load %struct.priv*, %struct.priv** %4, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load %struct.priv*, %struct.priv** %4, align 8
  %69 = getelementptr inbounds %struct.priv, %struct.priv* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.priv*, %struct.priv** %4, align 8
  %72 = getelementptr inbounds %struct.priv, %struct.priv* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @caca_set_dither_antialias(i32* %70, i32 %73)
  %75 = load %struct.priv*, %struct.priv** %4, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.priv*, %struct.priv** %4, align 8
  %79 = getelementptr inbounds %struct.priv, %struct.priv* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @caca_set_dither_charset(i32* %77, i32 %80)
  %82 = load %struct.priv*, %struct.priv** %4, align 8
  %83 = getelementptr inbounds %struct.priv, %struct.priv* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.priv*, %struct.priv** %4, align 8
  %86 = getelementptr inbounds %struct.priv, %struct.priv* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @caca_set_dither_color(i32* %84, i32 %87)
  %89 = load %struct.priv*, %struct.priv** %4, align 8
  %90 = getelementptr inbounds %struct.priv, %struct.priv* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.priv*, %struct.priv** %4, align 8
  %93 = getelementptr inbounds %struct.priv, %struct.priv* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @caca_set_dither_algorithm(i32* %91, i32 %94)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %54, %51
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @caca_get_canvas_width(i32) #1

declare dso_local i32 @caca_get_canvas_height(i32) #1

declare dso_local i32 @caca_free_dither(i32*) #1

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32* @caca_create_dither(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*) #1

declare dso_local i32 @talloc_array(i32*, i32, i32) #1

declare dso_local i32 @caca_set_dither_antialias(i32*, i32) #1

declare dso_local i32 @caca_set_dither_charset(i32*, i32) #1

declare dso_local i32 @caca_set_dither_color(i32*, i32) #1

declare dso_local i32 @caca_set_dither_algorithm(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
