; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_expr_eq.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_expr_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tok = common dso_local global i8 0, align 1
@TOK_A_MOD = common dso_local global i8 0, align 1
@TOK_A_DIV = common dso_local global i8 0, align 1
@TOK_A_XOR = common dso_local global i8 0, align 1
@TOK_A_OR = common dso_local global i8 0, align 1
@TOK_A_SHL = common dso_local global i8 0, align 1
@TOK_A_SAR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @expr_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr_eq() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @expr_cond()
  %3 = load i8, i8* @tok, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 61
  br i1 %5, label %42, label %6

6:                                                ; preds = %0
  %7 = load i8, i8* @tok, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* @TOK_A_MOD, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp sge i32 %8, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load i8, i8* @tok, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @TOK_A_DIV, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sle i32 %14, %16
  br i1 %17, label %42, label %18

18:                                               ; preds = %12, %6
  %19 = load i8, i8* @tok, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* @TOK_A_XOR, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %18
  %25 = load i8, i8* @tok, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @TOK_A_OR, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = load i8, i8* @tok, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @TOK_A_SHL, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i8, i8* @tok, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @TOK_A_SAR, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36, %30, %24, %18, %12, %0
  %43 = call i32 (...) @test_lvalue()
  %44 = load i8, i8* @tok, align 1
  %45 = sext i8 %44 to i32
  store i32 %45, i32* %1, align 4
  %46 = call i32 (...) @next()
  %47 = load i32, i32* %1, align 4
  %48 = icmp eq i32 %47, 61
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  call void @expr_eq()
  br label %52

50:                                               ; preds = %42
  %51 = call i32 (...) @vdup()
  call void @expr_eq()
  br label %52

52:                                               ; preds = %50, %49
  br label %53

53:                                               ; preds = %52, %36
  ret void
}

declare dso_local i32 @expr_cond(...) #1

declare dso_local i32 @test_lvalue(...) #1

declare dso_local i32 @next(...) #1

declare dso_local i32 @vdup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
