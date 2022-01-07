; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_expr_cmp.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_expr_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tok = common dso_local global i64 0, align 8
@TOK_ULE = common dso_local global i64 0, align 8
@TOK_GT = common dso_local global i64 0, align 8
@TOK_ULT = common dso_local global i64 0, align 8
@TOK_UGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @expr_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr_cmp() #0 {
  %1 = call i32 (...) @expr_shift()
  br label %2

2:                                                ; preds = %20, %0
  %3 = load i64, i64* @tok, align 8
  %4 = load i64, i64* @TOK_ULE, align 8
  %5 = icmp sge i64 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load i64, i64* @tok, align 8
  %8 = load i64, i64* @TOK_GT, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %6, %2
  %11 = load i64, i64* @tok, align 8
  %12 = load i64, i64* @TOK_ULT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* @tok, align 8
  %16 = load i64, i64* @TOK_UGE, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %14, %10, %6
  %19 = phi i1 [ true, %10 ], [ true, %6 ], [ %17, %14 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = call i32 (...) @next()
  %22 = call i32 (...) @expr_shift()
  br label %2

23:                                               ; preds = %18
  ret void
}

declare dso_local i32 @expr_shift(...) #1

declare dso_local i32 @next(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
