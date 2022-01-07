; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_clear_all.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_clear_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@gui = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@Columns = common dso_local global i32 0, align 4
@Rows = common dso_local global i32 0, align 4
@is_ignore_draw = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@DRAW_START = common dso_local global i32 0, align 4
@Pg_DRAW_FILL = common dso_local global i32 0, align 4
@DRAW_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_clear_all() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gui, i32 0, i32 0), align 4
  store i32 %4, i32* %3, align 4
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gui, i32 0, i32 0), align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* @Columns, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gui, i32 0, i32 1), align 4
  %11 = mul nsw i32 %9, %10
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gui, i32 0, i32 0), align 4
  %13 = add nsw i32 %11, %12
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %16 = load i32, i32* @Rows, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gui, i32 0, i32 2), align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gui, i32 0, i32 0), align 4
  %20 = add nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %15, align 4
  %22 = load i64, i64* @is_ignore_draw, align 8
  %23 = load i64, i64* @TRUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %0
  br label %33

26:                                               ; preds = %0
  %27 = load i32, i32* @DRAW_START, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gui, i32 0, i32 3), align 4
  %29 = call i32 @gui_mch_set_bg_color(i32 %28)
  %30 = load i32, i32* @Pg_DRAW_FILL, align 4
  %31 = call i32 @PgDrawRect(%struct.TYPE_8__* %1, i32 %30)
  %32 = load i32, i32* @DRAW_END, align 4
  br label %33

33:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @gui_mch_set_bg_color(i32) #1

declare dso_local i32 @PgDrawRect(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
