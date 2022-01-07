; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_setmouse.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_setmouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_setmouse(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %8 = call i32 @PtGetAbsPosition(i32 %7, i16* %5, i16* %6)
  %9 = call i32 @PhInputGroup(i32* null)
  %10 = load i16, i16* %5, align 2
  %11 = sext i16 %10 to i32
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %11, %12
  %14 = trunc i32 %13 to i16
  %15 = load i16, i16* %6, align 2
  %16 = sext i16 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  %19 = trunc i32 %18 to i16
  %20 = call i32 @PhMoveCursorAbs(i32 %9, i16 signext %14, i16 signext %19)
  ret void
}

declare dso_local i32 @PtGetAbsPosition(i32, i16*, i16*) #1

declare dso_local i32 @PhMoveCursorAbs(i32, i16 signext, i16 signext) #1

declare dso_local i32 @PhInputGroup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
