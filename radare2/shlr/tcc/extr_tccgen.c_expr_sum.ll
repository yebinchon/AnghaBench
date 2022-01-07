; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_expr_sum.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_expr_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tok = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expr_sum() #0 {
  %1 = call i32 (...) @expr_prod()
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i8, i8* @tok, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load i8, i8* @tok, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 45
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i1 [ true, %2 ], [ %9, %6 ]
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = call i32 (...) @next()
  %14 = call i32 (...) @expr_prod()
  br label %2

15:                                               ; preds = %10
  ret void
}

declare dso_local i32 @expr_prod(...) #1

declare dso_local i32 @next(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
