; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_get_styled_font_variants.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_get_styled_font_variants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PANGO_WEIGHT_BOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_styled_font_variants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_styled_font_variants() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @FALSE, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 4
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 2), align 8
  %7 = call i32* @pango_context_load_font(i32 %5, i32* %6)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %34

11:                                               ; preds = %0
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 2), align 8
  %13 = call i32* @pango_font_description_copy_static(i32* %12)
  store i32* %13, i32** %1, align 8
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* @PANGO_WEIGHT_BOLD, align 4
  %16 = call i32 @pango_font_description_set_weight(i32* %14, i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 4
  %18 = load i32*, i32** %1, align 8
  %19 = call i32* @pango_context_load_font(i32 %17, i32* %18)
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = icmp ne i32* %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @g_object_unref(i32* %27)
  br label %29

29:                                               ; preds = %22, %11
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @pango_font_description_free(i32* %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @g_object_unref(i32* %32)
  br label %34

34:                                               ; preds = %29, %10
  ret void
}

declare dso_local i32* @pango_context_load_font(i32, i32*) #1

declare dso_local i32* @pango_font_description_copy_static(i32*) #1

declare dso_local i32 @pango_font_description_set_weight(i32*, i32) #1

declare dso_local i32 @g_object_unref(i32*) #1

declare dso_local i32 @pango_font_description_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
