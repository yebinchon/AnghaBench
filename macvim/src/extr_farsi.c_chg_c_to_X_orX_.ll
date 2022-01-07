; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_farsi.c_chg_c_to_X_orX_.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_farsi.c_chg_c_to_X_orX_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALEF_ = common dso_local global i32 0, align 4
@ALEF_U_H_ = common dso_local global i32 0, align 4
@_AYN_ = common dso_local global i32 0, align 4
@AYN_ = common dso_local global i32 0, align 4
@_GHAYN_ = common dso_local global i32 0, align 4
@GHAYN_ = common dso_local global i32 0, align 4
@_HE_ = common dso_local global i32 0, align 4
@YE_ = common dso_local global i32 0, align 4
@IE_ = common dso_local global i32 0, align 4
@TEE_ = common dso_local global i32 0, align 4
@YEE_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @chg_c_to_X_orX_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chg_c_to_X_orX_() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @gchar_cursor()
  switch i32 %2, label %25 [
    i32 138, label %3
    i32 137, label %5
    i32 130, label %7
    i32 136, label %9
    i32 129, label %11
    i32 135, label %13
    i32 128, label %15
    i32 132, label %17
    i32 134, label %19
    i32 133, label %21
    i32 131, label %23
  ]

3:                                                ; preds = %0
  %4 = load i32, i32* @ALEF_, align 4
  store i32 %4, i32* %1, align 4
  br label %26

5:                                                ; preds = %0
  %6 = load i32, i32* @ALEF_U_H_, align 4
  store i32 %6, i32* %1, align 4
  br label %26

7:                                                ; preds = %0
  %8 = load i32, i32* @_AYN_, align 4
  store i32 %8, i32* %1, align 4
  br label %26

9:                                                ; preds = %0
  %10 = load i32, i32* @AYN_, align 4
  store i32 %10, i32* %1, align 4
  br label %26

11:                                               ; preds = %0
  %12 = load i32, i32* @_GHAYN_, align 4
  store i32 %12, i32* %1, align 4
  br label %26

13:                                               ; preds = %0
  %14 = load i32, i32* @GHAYN_, align 4
  store i32 %14, i32* %1, align 4
  br label %26

15:                                               ; preds = %0
  %16 = load i32, i32* @_HE_, align 4
  store i32 %16, i32* %1, align 4
  br label %26

17:                                               ; preds = %0
  %18 = load i32, i32* @YE_, align 4
  store i32 %18, i32* %1, align 4
  br label %26

19:                                               ; preds = %0
  %20 = load i32, i32* @IE_, align 4
  store i32 %20, i32* %1, align 4
  br label %26

21:                                               ; preds = %0
  %22 = load i32, i32* @TEE_, align 4
  store i32 %22, i32* %1, align 4
  br label %26

23:                                               ; preds = %0
  %24 = load i32, i32* @YEE_, align 4
  store i32 %24, i32* %1, align 4
  br label %26

25:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5, %3
  %27 = load i32, i32* %1, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @put_and_redo(i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  ret void
}

declare dso_local i32 @gchar_cursor(...) #1

declare dso_local i32 @put_and_redo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
