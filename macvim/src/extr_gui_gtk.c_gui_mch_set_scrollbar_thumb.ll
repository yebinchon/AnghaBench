; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk.c_gui_mch_set_scrollbar_thumb.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk.c_gui_mch_set_scrollbar_thumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_8__ = type { double, i64, i64, i64, i64, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_set_scrollbar_thumb(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %60

14:                                               ; preds = %4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @GTK_RANGE(i32* %17)
  %19 = call %struct.TYPE_8__* @gtk_range_get_adjustment(i32 %18)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %9, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store double 0.000000e+00, double* %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %25, 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp slt i64 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %14
  br label %38

35:                                               ; preds = %14
  %36 = load i64, i64* %7, align 8
  %37 = sub nsw i64 %36, 2
  br label %38

38:                                               ; preds = %35, %34
  %39 = phi i64 [ 1, %34 ], [ %37, %35 ]
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 5
  store double 1.000000e+00, double* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = call i32 @GTK_OBJECT(%struct.TYPE_8__* %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @g_signal_handler_block(i32 %45, i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = call i32 @gtk_adjustment_changed(%struct.TYPE_8__* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %54 = call i32 @GTK_OBJECT(%struct.TYPE_8__* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @g_signal_handler_unblock(i32 %54, i32 %58)
  br label %60

60:                                               ; preds = %38, %4
  ret void
}

declare dso_local %struct.TYPE_8__* @gtk_range_get_adjustment(i32) #1

declare dso_local i32 @GTK_RANGE(i32*) #1

declare dso_local i32 @g_signal_handler_block(i32, i32) #1

declare dso_local i32 @GTK_OBJECT(%struct.TYPE_8__*) #1

declare dso_local i32 @gtk_adjustment_changed(%struct.TYPE_8__*) #1

declare dso_local i32 @g_signal_handler_unblock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
