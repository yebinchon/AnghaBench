; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui.c_gui_mouse_correct.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui.c_gui_mouse_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@need_mouse_correct = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@p_mousef = common dso_local global i64 0, align 8
@Columns = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mouse_correct() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  %4 = load i32, i32* @FALSE, align 4
  store i32 %4, i32* @need_mouse_correct, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gui, i32 0, i32 2), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i64, i64* @p_mousef, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %0
  br label %56

11:                                               ; preds = %7
  %12 = call i32 @gui_mch_getmouse(i32* %1, i32* %2)
  %13 = load i32, i32* %1, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @Columns, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gui, i32 0, i32 0), align 8
  %19 = mul nsw i32 %17, %18
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %11
  br label %56

22:                                               ; preds = %15
  %23 = load i32, i32* %2, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call %struct.TYPE_7__* @xy2win(i32 %26, i32 %27)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %3, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %32 = icmp ne %struct.TYPE_7__* %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = call i32 (...) @validate_cline_row()
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %39 = call i64 @W_ENDCOL(%struct.TYPE_7__* %38)
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gui, i32 0, i32 0), align 8
  %42 = mul nsw i32 %40, %41
  %43 = sub nsw i32 %42, 3
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %45 = call i32 @W_WINROW(%struct.TYPE_7__* %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gui, i32 0, i32 1), align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gui, i32 0, i32 1), align 4
  %53 = sdiv i32 %52, 2
  %54 = add nsw i32 %51, %53
  %55 = call i32 @gui_mch_setmouse(i32 %43, i32 %54)
  br label %56

56:                                               ; preds = %10, %21, %36, %33, %29
  ret void
}

declare dso_local i32 @gui_mch_getmouse(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @xy2win(i32, i32) #1

declare dso_local i32 @validate_cline_row(...) #1

declare dso_local i32 @gui_mch_setmouse(i32, i32) #1

declare dso_local i64 @W_ENDCOL(%struct.TYPE_7__*) #1

declare dso_local i32 @W_WINROW(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
