; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_regexp_nfa.c_nfa_regbranch.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_regexp_nfa.c_nfa_regbranch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@post_ptr = common dso_local global i64 0, align 8
@post_start = common dso_local global i64 0, align 8
@FAIL = common dso_local global i64 0, align 8
@NFA_NOPEN = common dso_local global i32 0, align 4
@NFA_PREV_ATOM_NO_WIDTH = common dso_local global i32 0, align 4
@NFA_EMPTY = common dso_local global i32 0, align 4
@NFA_CONCAT = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @nfa_regbranch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfa_regbranch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @post_ptr, align 8
  %5 = load i64, i64* @post_start, align 8
  %6 = sub nsw i64 %4, %5
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = call i64 (...) @nfa_regconcat()
  %9 = load i64, i64* @FAIL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i64, i64* @FAIL, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %1, align 4
  br label %62

14:                                               ; preds = %0
  %15 = call i32 (...) @peekchr()
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %46, %14
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @Magic(i8 signext 38)
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %16
  %21 = call i32 (...) @skipchr()
  %22 = load i32, i32* @NFA_NOPEN, align 4
  %23 = call i32 @EMIT(i32 %22)
  %24 = load i32, i32* @NFA_PREV_ATOM_NO_WIDTH, align 4
  %25 = call i32 @EMIT(i32 %24)
  %26 = load i64, i64* @post_ptr, align 8
  %27 = load i64, i64* @post_start, align 8
  %28 = sub nsw i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %3, align 4
  %30 = call i64 (...) @nfa_regconcat()
  %31 = load i64, i64* @FAIL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i64, i64* @FAIL, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %1, align 4
  br label %62

36:                                               ; preds = %20
  %37 = load i32, i32* %3, align 4
  %38 = load i64, i64* @post_ptr, align 8
  %39 = load i64, i64* @post_start, align 8
  %40 = sub nsw i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @NFA_EMPTY, align 4
  %45 = call i32 @EMIT(i32 %44)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* @NFA_CONCAT, align 4
  %48 = call i32 @EMIT(i32 %47)
  %49 = call i32 (...) @peekchr()
  store i32 %49, i32* %2, align 4
  br label %16

50:                                               ; preds = %16
  %51 = load i32, i32* %3, align 4
  %52 = load i64, i64* @post_ptr, align 8
  %53 = load i64, i64* @post_start, align 8
  %54 = sub nsw i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @NFA_EMPTY, align 4
  %59 = call i32 @EMIT(i32 %58)
  br label %60

60:                                               ; preds = %57, %50
  %61 = load i32, i32* @OK, align 4
  store i32 %61, i32* %1, align 4
  br label %62

62:                                               ; preds = %60, %33, %11
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i64 @nfa_regconcat(...) #1

declare dso_local i32 @peekchr(...) #1

declare dso_local i32 @Magic(i8 signext) #1

declare dso_local i32 @skipchr(...) #1

declare dso_local i32 @EMIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
