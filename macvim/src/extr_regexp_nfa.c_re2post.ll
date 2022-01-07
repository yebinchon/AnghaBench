; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_regexp_nfa.c_re2post.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_regexp_nfa.c_re2post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_NOPAREN = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@NFA_MOPEN = common dso_local global i32 0, align 4
@post_start = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @re2post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @re2post() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @REG_NOPAREN, align 4
  %3 = call i64 @nfa_reg(i32 %2)
  %4 = load i64, i64* @FAIL, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %11

7:                                                ; preds = %0
  %8 = load i32, i32* @NFA_MOPEN, align 4
  %9 = call i32 @EMIT(i32 %8)
  %10 = load i32*, i32** @post_start, align 8
  store i32* %10, i32** %1, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load i32*, i32** %1, align 8
  ret i32* %12
}

declare dso_local i64 @nfa_reg(i32) #1

declare dso_local i32 @EMIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
