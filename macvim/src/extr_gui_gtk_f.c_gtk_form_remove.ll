; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_f.c_gtk_form_remove.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_f.c_gtk_form_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }

@gtk_form_child_map = common dso_local global i32 0, align 4
@gtk_form_child_unmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @gtk_form_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtk_form_remove(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @GTK_IS_FORM(i32* %8)
  %10 = call i32 @g_return_if_fail(i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.TYPE_12__* @GTK_FORM(i32* %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %5, align 8
  br label %16

16:                                               ; preds = %29, %2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %7, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %5, align 8
  br label %16

33:                                               ; preds = %28, %16
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %78

36:                                               ; preds = %33
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %36
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @GTK_OBJECT(i32* %44)
  %46 = call i32 @GTK_SIGNAL_FUNC(i32* @gtk_form_child_map)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = call i32 @gtk_signal_disconnect_by_func(i32 %45, i32 %46, %struct.TYPE_11__* %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @GTK_OBJECT(i32* %51)
  %53 = call i32 @GTK_SIGNAL_FUNC(i32* @gtk_form_child_unmap)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = call i32 @gtk_signal_disconnect_by_func(i32 %52, i32 %53, %struct.TYPE_11__* %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @gdk_window_set_user_data(i64 %58, i32* null)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @gdk_window_destroy(i64 %62)
  br label %64

64:                                               ; preds = %41, %36
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @gtk_widget_unparent(i32* %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = call %struct.TYPE_13__* @g_list_remove_link(%struct.TYPE_13__* %69, %struct.TYPE_13__* %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = call i32 @g_list_free_1(%struct.TYPE_13__* %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = call i32 @g_free(%struct.TYPE_11__* %76)
  br label %78

78:                                               ; preds = %64, %33
  ret void
}

declare dso_local i32 @g_return_if_fail(i32) #1

declare dso_local i32 @GTK_IS_FORM(i32*) #1

declare dso_local %struct.TYPE_12__* @GTK_FORM(i32*) #1

declare dso_local i32 @gtk_signal_disconnect_by_func(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @GTK_OBJECT(i32*) #1

declare dso_local i32 @GTK_SIGNAL_FUNC(i32*) #1

declare dso_local i32 @gdk_window_set_user_data(i64, i32*) #1

declare dso_local i32 @gdk_window_destroy(i64) #1

declare dso_local i32 @gtk_widget_unparent(i32*) #1

declare dso_local %struct.TYPE_13__* @g_list_remove_link(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @g_list_free_1(%struct.TYPE_13__*) #1

declare dso_local i32 @g_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
