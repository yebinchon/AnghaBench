; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_mch_flash.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_mch_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@gui = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@GDK_XOR = common dso_local global i32 0, align 4
@GDK_GC_FOREGROUND = common dso_local global i32 0, align 4
@GDK_GC_BACKGROUND = common dso_local global i32 0, align 4
@GDK_GC_FUNCTION = common dso_local global i32 0, align 4
@GDK_VISIBILITY_UNOBSCURED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@Columns = common dso_local global i64 0, align 8
@Rows = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_flash(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 4), align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %77

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 0), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 1), align 4
  %13 = xor i32 %11, %12
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 0), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 1), align 4
  %18 = xor i32 %16, %17
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @GDK_XOR, align 4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 4), align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @GDK_GC_FOREGROUND, align 4
  %27 = load i32, i32* @GDK_GC_BACKGROUND, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @GDK_GC_FUNCTION, align 4
  %30 = or i32 %28, %29
  %31 = call i32* @gdk_gc_new_with_values(i32* %25, %struct.TYPE_10__* %3, i32 %30)
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 2), align 8
  %34 = load i64, i64* @GDK_VISIBILITY_UNOBSCURED, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @gdk_gc_set_exposures(i32* %32, i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 4), align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = load i64, i64* @Columns, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i64 @FILL_X(i32 %44)
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 3), align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* @Rows, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i64 @FILL_Y(i32 %49)
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 3), align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @gdk_draw_rectangle(i32* %40, i32* %41, i32 %42, i32 0, i32 0, i64 %47, i64 %52)
  %54 = call i32 (...) @gui_mch_flush()
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* @TRUE, align 4
  %58 = call i32 @ui_delay(i64 %56, i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 4), align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @TRUE, align 4
  %64 = load i64, i64* @Columns, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i64 @FILL_X(i32 %65)
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 3), align 8
  %68 = add nsw i64 %66, %67
  %69 = load i64, i64* @Rows, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i64 @FILL_Y(i32 %70)
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 3), align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @gdk_draw_rectangle(i32* %61, i32* %62, i32 %63, i32 0, i32 0, i64 %68, i64 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @gdk_gc_destroy(i32* %75)
  br label %77

77:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32* @gdk_gc_new_with_values(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @gdk_gc_set_exposures(i32*, i32) #1

declare dso_local i32 @gdk_draw_rectangle(i32*, i32*, i32, i32, i32, i64, i64) #1

declare dso_local i64 @FILL_X(i32) #1

declare dso_local i64 @FILL_Y(i32) #1

declare dso_local i32 @gui_mch_flush(...) #1

declare dso_local i32 @ui_delay(i64, i32) #1

declare dso_local i32 @gdk_gc_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
