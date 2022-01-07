; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_expr_prod.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_expr_prod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tok = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expr_prod() #0 {
  %1 = call i32 (...) @unary()
  br label %2

2:                                                ; preds = %16, %0
  %3 = load i8, i8* @tok, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 42
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load i8, i8* @tok, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 47
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i8, i8* @tok, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 37
  br label %14

14:                                               ; preds = %10, %6, %2
  %15 = phi i1 [ true, %6 ], [ true, %2 ], [ %13, %10 ]
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = call i32 (...) @next()
  %18 = call i32 (...) @unary()
  br label %2

19:                                               ; preds = %14
  ret void
}

declare dso_local i32 @unary(...) #1

declare dso_local i32 @next(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
