; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_mch_delete_lines.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_mch_delete_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@gui = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GDK_VISIBILITY_FULLY_OBSCURED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_delete_lines(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 0), align 8
  %6 = load i64, i64* @GDK_VISIBILITY_FULLY_OBSCURED, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %58

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 7), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 9), align 8
  %12 = call i32 @gdk_gc_set_foreground(i32 %10, i32 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 7), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 8), align 4
  %15 = call i32 @gdk_gc_set_background(i32 %13, i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 6), align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 7), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 8
  %21 = call i32 @FILL_X(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @FILL_Y(i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 6), align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 8
  %28 = call i32 @FILL_X(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i32 @FILL_Y(i32 %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 2), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 3), align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 8
  %36 = sub nsw i32 %34, %35
  %37 = add nsw i32 %36, 1
  %38 = mul nsw i32 %33, %37
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 4), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 5), align 8
  %42 = load i32, i32* %3, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %43, %44
  %46 = add nsw i32 %45, 1
  %47 = mul nsw i32 %40, %46
  %48 = call i32 @gdk_window_copy_area(i32 %18, i32 %19, i32 %21, i32 %23, i32 %26, i32 %28, i32 %32, i32 %39, i32 %47)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 5), align 8
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 %49, %50
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 5), align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 3), align 8
  %56 = call i32 @gui_clear_block(i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = call i32 (...) @check_copy_area()
  br label %58

58:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @gdk_gc_set_foreground(i32, i32) #1

declare dso_local i32 @gdk_gc_set_background(i32, i32) #1

declare dso_local i32 @gdk_window_copy_area(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FILL_X(i32) #1

declare dso_local i32 @FILL_Y(i32) #1

declare dso_local i32 @gui_clear_block(i32, i32, i32, i32) #1

declare dso_local i32 @check_copy_area(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
