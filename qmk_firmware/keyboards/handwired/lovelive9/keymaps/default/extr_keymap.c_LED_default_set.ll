; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/lovelive9/keymaps/default/extr_keymap.c_LED_default_set.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/lovelive9/keymaps/default/extr_keymap.c_LED_default_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aqours_color_h = common dso_local global i32* null, align 8
@aqours_color_s = common dso_local global i32* null, align 8
@aqours_color_v = common dso_local global i32* null, align 8
@led = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LED_default_set() #0 {
  %1 = load i32*, i32** @aqours_color_h, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 2
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** @aqours_color_s, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 2
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** @aqours_color_v, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** @led, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = call i32 @sethsv(i32 %3, i32 %6, i32 %9, i32* %11)
  %13 = load i32*, i32** @aqours_color_h, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 7
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** @aqours_color_s, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 7
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @aqours_color_v, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 7
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @led, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = call i32 @sethsv(i32 %15, i32 %18, i32 %21, i32* %23)
  %25 = load i32*, i32** @aqours_color_h, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @aqours_color_s, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @aqours_color_v, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @led, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = call i32 @sethsv(i32 %27, i32 %30, i32 %33, i32* %35)
  %37 = load i32*, i32** @aqours_color_h, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 5
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** @aqours_color_s, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** @aqours_color_v, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** @led, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = call i32 @sethsv(i32 %39, i32 %42, i32 %45, i32* %47)
  %49 = load i32*, i32** @aqours_color_h, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** @aqours_color_s, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** @aqours_color_v, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** @led, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = call i32 @sethsv(i32 %51, i32 %54, i32 %57, i32* %59)
  %61 = load i32*, i32** @aqours_color_h, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 6
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** @aqours_color_s, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 6
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** @aqours_color_v, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 6
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** @led, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  %72 = call i32 @sethsv(i32 %63, i32 %66, i32 %69, i32* %71)
  %73 = load i32*, i32** @aqours_color_h, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** @aqours_color_s, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** @aqours_color_v, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** @led, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 6
  %84 = call i32 @sethsv(i32 %75, i32 %78, i32 %81, i32* %83)
  %85 = load i32*, i32** @aqours_color_h, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @aqours_color_s, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** @aqours_color_v, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** @led, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 7
  %96 = call i32 @sethsv(i32 %87, i32 %90, i32 %93, i32* %95)
  %97 = load i32*, i32** @aqours_color_h, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** @aqours_color_s, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** @aqours_color_v, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** @led, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 8
  %108 = call i32 @sethsv(i32 %99, i32 %102, i32 %105, i32* %107)
  %109 = call i32 (...) @rgblight_set()
  ret void
}

declare dso_local i32 @sethsv(i32, i32, i32, i32*) #1

declare dso_local i32 @rgblight_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
