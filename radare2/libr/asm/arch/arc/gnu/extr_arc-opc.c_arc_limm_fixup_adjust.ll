; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-opc.c_arc_limm_fixup_adjust.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-opc.c_arc_limm_fixup_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARC_REG_SHIMM = common dso_local global i32 0, align 4
@ARC_REG_LIMM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arc_limm_fixup_adjust(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @I(i32 -1)
  %6 = call i32 @C(i32 -1)
  %7 = or i32 %5, %6
  %8 = call i32 @B(i32 -1)
  %9 = or i32 %7, %8
  %10 = and i32 %4, %9
  %11 = call i32 @I(i32 2)
  %12 = load i32, i32* @ARC_REG_SHIMM, align 4
  %13 = call i32 @C(i32 %12)
  %14 = or i32 %11, %13
  %15 = load i32, i32* @ARC_REG_LIMM, align 4
  %16 = call i32 @B(i32 %15)
  %17 = or i32 %14, %16
  %18 = icmp eq i32 %10, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = and i32 %20, 511
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 256
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, -512
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %19
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 0, %30
  ret i32 %31
}

declare dso_local i32 @I(i32) #1

declare dso_local i32 @C(i32) #1

declare dso_local i32 @B(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
