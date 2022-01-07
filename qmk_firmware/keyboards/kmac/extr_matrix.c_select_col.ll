; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/kmac/extr_matrix.c_select_col.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/kmac/extr_matrix.c_select_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B6 = common dso_local global i32 0, align 4
@C6 = common dso_local global i32 0, align 4
@C7 = common dso_local global i32 0, align 4
@F1 = common dso_local global i32 0, align 4
@F0 = common dso_local global i32 0, align 4
@B5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_col(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 16
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 8
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @B6, align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 16
  %12 = call i32 @writePin(i32 %9, i32 %11)
  %13 = load i32, i32* @C6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 8
  %16 = call i32 @writePin(i32 %13, i32 %15)
  %17 = load i32, i32* @C7, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 4
  %20 = call i32 @writePin(i32 %17, i32 %19)
  %21 = load i32, i32* @F1, align 4
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 2
  %24 = call i32 @writePin(i32 %21, i32 %23)
  %25 = load i32, i32* @F0, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 1
  %28 = call i32 @writePin(i32 %25, i32 %27)
  br label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @B5, align 4
  %31 = call i32 @writePinHigh(i32 %30)
  br label %32

32:                                               ; preds = %29, %6
  ret void
}

declare dso_local i32 @writePin(i32, i32) #1

declare dso_local i32 @writePinHigh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
