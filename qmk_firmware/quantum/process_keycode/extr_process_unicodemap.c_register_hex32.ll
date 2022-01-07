; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_unicodemap.c_register_hex32.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_unicodemap.c_register_hex32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_hex32(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  store i32 7, i32* %4, align 4
  br label %6

6:                                                ; preds = %41, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %4, align 4
  %16 = mul nsw i32 %15, 4
  %17 = ashr i32 %14, %16
  %18 = and i32 %17, 15
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @hex_to_keycode(i64 %26)
  %28 = call i32 @register_code(i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @hex_to_keycode(i64 %29)
  %31 = call i32 @unregister_code(i32 %30)
  br label %32

32:                                               ; preds = %25, %22
  br label %40

33:                                               ; preds = %13
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @hex_to_keycode(i64 %34)
  %36 = call i32 @register_code(i32 %35)
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @hex_to_keycode(i64 %37)
  %39 = call i32 @unregister_code(i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %33, %32
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %4, align 4
  br label %6

44:                                               ; preds = %6
  ret void
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @hex_to_keycode(i64) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
