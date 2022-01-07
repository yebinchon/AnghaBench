; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/datahand/keymaps/default/extr_keymap.c_set_nas.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/datahand/keymaps/default/extr_keymap.c_set_nas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAS = common dso_local global i32 0, align 4
@numlock_enabled = common dso_local global i64 0, align 8
@NAS_NUMLOCK = common dso_local global i32 0, align 4
@tenkey_enabled = common dso_local global i64 0, align 8
@NAS_TENKEY = common dso_local global i32 0, align 4
@NAS_TENKEY_NUMLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_nas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_nas(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @NAS, align 4
  %5 = call i32 @layer_set(i32 %3, i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* @numlock_enabled, align 8
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i1 [ false, %1 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @NAS_NUMLOCK, align 4
  %15 = call i32 @layer_set(i32 %13, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i64, i64* @tenkey_enabled, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %18, %11
  %22 = phi i1 [ false, %11 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @NAS_TENKEY, align 4
  %25 = call i32 @layer_set(i32 %23, i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i64, i64* @tenkey_enabled, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64, i64* @numlock_enabled, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %31, %28, %21
  %35 = phi i1 [ false, %28 ], [ false, %21 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* @NAS_TENKEY_NUMLOCK, align 4
  %38 = call i32 @layer_set(i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @layer_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
