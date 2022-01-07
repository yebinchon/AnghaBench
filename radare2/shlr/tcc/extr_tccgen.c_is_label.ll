; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_is_label.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_is_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tok = common dso_local global i8 0, align 1
@TOK_UIDENT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_label() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8, i8* @tok, align 1
  %4 = sext i8 %3 to i32
  %5 = load i8, i8* @TOK_UIDENT, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %22

9:                                                ; preds = %0
  %10 = load i8, i8* @tok, align 1
  %11 = sext i8 %10 to i32
  store i32 %11, i32* %2, align 4
  %12 = call i32 (...) @next()
  %13 = load i8, i8* @tok, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 58
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = call i32 (...) @next()
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* %1, align 4
  br label %22

19:                                               ; preds = %9
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @unget_tok(i32 %20)
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %19, %16, %8
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @next(...) #1

declare dso_local i32 @unget_tok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
