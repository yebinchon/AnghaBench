; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-opc.c_ac_branch_or_jump_insn.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-opc.c_ac_branch_or_jump_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ac_branch_or_jump_insn(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @I(i32 -1)
  %10 = and i32 %8, %9
  %11 = call i32 @I(i32 4)
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 18
  %16 = and i32 %15, 15
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %65, label %18

18:                                               ; preds = %13, %7, %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @I(i32 -1)
  %24 = and i32 %22, %23
  %25 = call i32 @I(i32 15)
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %65, label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @I(i32 -1)
  %33 = and i32 %31, %32
  %34 = call i32 @I(i32 1)
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %65, label %36

36:                                               ; preds = %30, %27
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @I(i32 -1)
  %42 = and i32 %40, %41
  %43 = call i32 @I(i32 31)
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %65, label %45

45:                                               ; preds = %39, %36
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @I(i32 -1)
  %51 = and i32 %49, %50
  %52 = call i32 @I(i32 0)
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %65, label %54

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @I(i32 -1)
  %60 = and i32 %58, %59
  %61 = call i32 @I(i32 30)
  %62 = icmp eq i32 %60, %61
  br label %63

63:                                               ; preds = %57, %54
  %64 = phi i1 [ false, %54 ], [ %62, %57 ]
  br label %65

65:                                               ; preds = %63, %48, %39, %30, %21, %13
  %66 = phi i1 [ true, %48 ], [ true, %39 ], [ true, %30 ], [ true, %21 ], [ true, %13 ], [ %64, %63 ]
  %67 = zext i1 %66 to i32
  ret i32 %67
}

declare dso_local i32 @I(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
