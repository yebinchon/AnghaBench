; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_quantum.c_update_tri_layer_state.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_quantum.c_update_tri_layer_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_tri_layer_state(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = shl i64 1, %11
  %13 = load i64, i64* %7, align 8
  %14 = shl i64 1, %13
  %15 = or i64 %12, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load i64, i64* %8, align 8
  %18 = shl i64 1, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %26, %27
  br label %34

29:                                               ; preds = %4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %10, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %28, %25 ], [ %33, %29 ]
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
