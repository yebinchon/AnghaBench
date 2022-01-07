; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_flash.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pg_BLACK = common dso_local global i32 0, align 4
@Pg_WHITE = common dso_local global i32 0, align 4
@Pg_DRAWMODE_XOR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@Pg_DRAWMODE_OPAQUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_flash(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @Pg_BLACK, align 4
  %4 = load i32, i32* @Pg_WHITE, align 4
  %5 = call i32 @PgSetFillXORColor(i32 %3, i32 %4)
  %6 = load i32, i32* @Pg_DRAWMODE_XOR, align 4
  %7 = call i32 @PgSetDrawMode(i32 %6)
  %8 = call i32 (...) @gui_mch_clear_all()
  %9 = call i32 (...) @gui_mch_flush()
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i32 @ui_delay(i64 %11, i32 %12)
  %14 = call i32 (...) @gui_mch_clear_all()
  %15 = load i32, i32* @Pg_DRAWMODE_OPAQUE, align 4
  %16 = call i32 @PgSetDrawMode(i32 %15)
  %17 = call i32 (...) @gui_mch_flush()
  ret void
}

declare dso_local i32 @PgSetFillXORColor(i32, i32) #1

declare dso_local i32 @PgSetDrawMode(i32) #1

declare dso_local i32 @gui_mch_clear_all(...) #1

declare dso_local i32 @gui_mch_flush(...) #1

declare dso_local i32 @ui_delay(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
