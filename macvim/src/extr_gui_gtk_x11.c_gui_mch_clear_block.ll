; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_mch_clear_block.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_mch_clear_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@gui = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@Columns = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_clear_block(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gui, i32 0, i32 3), align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %48

15:                                               ; preds = %4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gui, i32 0, i32 4), align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gui, i32 0, i32 2), align 8
  %19 = call i32 @gdk_gc_set_foreground(i32 %18, %struct.TYPE_6__* %9)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gui, i32 0, i32 3), align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gui, i32 0, i32 2), align 8
  %24 = load i32, i32* @TRUE, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @FILL_X(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @FILL_Y(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %29, %30
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gui, i32 0, i32 0), align 8
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @Columns, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp eq i32 %35, %37
  %39 = zext i1 %38 to i32
  %40 = add nsw i32 %34, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %41, %42
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gui, i32 0, i32 1), align 4
  %46 = mul nsw i32 %44, %45
  %47 = call i32 @gdk_draw_rectangle(i32* %22, i32 %23, i32 %24, i32 %26, i32 %28, i32 %40, i32 %46)
  br label %48

48:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @gdk_gc_set_foreground(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @gdk_draw_rectangle(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FILL_X(i32) #1

declare dso_local i32 @FILL_Y(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
