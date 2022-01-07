; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mechlovin/hannah910/extr_hannah910.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mechlovin/hannah910/extr_hannah910.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D2 = common dso_local global i32 0, align 4
@D1 = common dso_local global i32 0, align 4
@D0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @biton32(i32 %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @D2, align 4
  %8 = call i32 @writePinHigh(i32 %7)
  br label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @D2, align 4
  %11 = call i32 @writePinLow(i32 %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @biton32(i32 %13)
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @D1, align 4
  %18 = call i32 @writePinHigh(i32 %17)
  br label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @D1, align 4
  %21 = call i32 @writePinLow(i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @biton32(i32 %23)
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @D0, align 4
  %28 = call i32 @writePinHigh(i32 %27)
  br label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @D0, align 4
  %31 = call i32 @writePinLow(i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @writePinHigh(i32) #1

declare dso_local i32 @writePinLow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
