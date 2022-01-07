; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_expr_cond.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_expr_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@const_wanted = common dso_local global i64 0, align 8
@tok = common dso_local global i8 0, align 1
@gnu_ext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @expr_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr_cond() #0 {
  %1 = load i64, i64* @const_wanted, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %22

3:                                                ; preds = %0
  %4 = call i32 (...) @expr_lor_const()
  %5 = load i8, i8* @tok, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 63
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = call i32 (...) @vdup()
  %10 = call i32 (...) @next()
  %11 = load i8, i8* @tok, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 58
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* @gnu_ext, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %8
  %18 = call i32 (...) @gexpr()
  br label %19

19:                                               ; preds = %17, %14
  %20 = call i32 @skip(i8 signext 58)
  call void @expr_cond()
  br label %21

21:                                               ; preds = %19, %3
  br label %24

22:                                               ; preds = %0
  %23 = call i32 (...) @expr_lor()
  br label %24

24:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @expr_lor_const(...) #1

declare dso_local i32 @vdup(...) #1

declare dso_local i32 @next(...) #1

declare dso_local i32 @gexpr(...) #1

declare dso_local i32 @skip(i8 signext) #1

declare dso_local i32 @expr_lor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
