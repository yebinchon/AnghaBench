; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_draw_under.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_draw_under.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@draw_under.val = internal constant [8 x i32] [i32 1, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2], align 16
@DRAW_UNDERC = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DRAW_UNDERL = common dso_local global i32 0, align 4
@p_linespace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @draw_under to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_under(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i32 @FILL_Y(i32 %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DRAW_UNDERC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 0), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 3), align 4
  %23 = call i32 @gdk_gc_set_foreground(i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @FILL_X(i32 %24)
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %48, %20
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i32 @FILL_X(i32 %30)
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = srem i32 %34, 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* @draw_under.val, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 0), align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %44, %45
  %47 = call i32 @gdk_draw_point(i32 %41, i32 %42, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %26

51:                                               ; preds = %26
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 0), align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 2), align 8
  %54 = call i32 @gdk_gc_set_foreground(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @DRAW_UNDERL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %55
  %61 = load i32, i32* @p_linespace, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* @p_linespace, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %63, %60
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 0), align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @FILL_X(i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @FILL_X(i32 %78)
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @gdk_draw_line(i32 %71, i32 %72, i32 %74, i32 %75, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %68, %55
  ret void
}

declare dso_local i32 @FILL_Y(i32) #1

declare dso_local i32 @gdk_gc_set_foreground(i32, i32) #1

declare dso_local i32 @FILL_X(i32) #1

declare dso_local i32 @gdk_draw_point(i32, i32, i32, i32) #1

declare dso_local i32 @gdk_draw_line(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
