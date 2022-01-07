; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/touchpad/extr_matrix.c_capSetup.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/touchpad/extr_matrix.c_capSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @capSetup() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @checkTSPres()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %33

5:                                                ; preds = %0
  %6 = call i32 @writeDataToTS(i32 8, i32 1)
  %7 = call i32 @writeDataToTS(i32 11, i32 1)
  %8 = call i32 @writeDataToTS(i32 40, i32 66)
  %9 = call i32 @writeDataToTS(i32 41, i32 0)
  %10 = call i32 @writeDataToTS(i32 42, i32 0)
  %11 = call i32 @writeDataToTS(i32 43, i32 0)
  %12 = call i32 @writeDataToTS(i32 44, i32 66)
  %13 = call i32 @writeDataToTS(i32 45, i32 0)
  %14 = call i32 @writeDataToTS(i32 46, i32 0)
  %15 = call i32 @writeDataToTS(i32 47, i32 0)
  %16 = call i32 @writeDataToTS(i32 48, i32 66)
  %17 = call i32 @writeDataToTS(i32 49, i32 66)
  %18 = call i32 @writeDataToTS(i32 50, i32 66)
  %19 = call i32 @writeDataToTS(i32 51, i32 66)
  %20 = call i32 @writeDataToTS(i32 12, i32 50)
  %21 = call i32 @writeDataToTS(i32 28, i32 4)
  %22 = call i32 @writeDataToTS(i32 29, i32 8)
  %23 = call i32 @writeDataToTS(i32 30, i32 8)
  %24 = call i32 @writeDataToTS(i32 31, i32 8)
  %25 = call i32 @writeDataToTS(i32 32, i32 4)
  %26 = call i32 @writeDataToTS(i32 33, i32 8)
  %27 = call i32 @writeDataToTS(i32 34, i32 8)
  %28 = call i32 @writeDataToTS(i32 35, i32 8)
  %29 = call i32 @writeDataToTS(i32 36, i32 4)
  %30 = call i32 @writeDataToTS(i32 37, i32 4)
  %31 = call i32 @writeDataToTS(i32 38, i32 4)
  %32 = call i32 @writeDataToTS(i32 39, i32 4)
  br label %33

33:                                               ; preds = %5, %0
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @checkTSPres(...) #1

declare dso_local i32 @writeDataToTS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
