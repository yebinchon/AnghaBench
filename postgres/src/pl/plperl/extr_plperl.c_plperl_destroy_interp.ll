; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_destroy_interp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_destroy_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dTHX = common dso_local global i32 0, align 4
@PL_exit_flags = common dso_local global i32 0, align 4
@PERL_EXIT_DESTRUCT_END = common dso_local global i32 0, align 4
@dJMPENV = common dso_local global i32 0, align 4
@PL_endav = common dso_local global i64 0, align 8
@PL_minus_c = common dso_local global i32 0, align 4
@PL_scopestack_ix = common dso_local global i32 0, align 4
@JMPENV_POP = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@FREETMPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**)* @plperl_destroy_interp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plperl_destroy_interp(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  %4 = load i32**, i32*** %2, align 8
  %5 = icmp ne i32** %4, null
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  %7 = load i32**, i32*** %2, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = load i32, i32* @dTHX, align 4
  %12 = load i32, i32* @PL_exit_flags, align 4
  %13 = load i32, i32* @PERL_EXIT_DESTRUCT_END, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load i32, i32* @dJMPENV, align 4
  store i32 0, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @JMPENV_PUSH(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @PERL_UNUSED_VAR(i32 %20)
  %22 = load i64, i64* @PL_endav, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load i32, i32* @PL_minus_c, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @PL_scopestack_ix, align 4
  %29 = load i64, i64* @PL_endav, align 8
  %30 = call i32 @call_list(i32 %28, i64 %29)
  br label %31

31:                                               ; preds = %27, %24, %16
  %32 = load i32, i32* @JMPENV_POP, align 4
  br label %33

33:                                               ; preds = %31, %10
  %34 = load i32, i32* @LEAVE, align 4
  %35 = load i32, i32* @FREETMPS, align 4
  %36 = load i32**, i32*** %2, align 8
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %33, %6, %1
  ret void
}

declare dso_local i32 @JMPENV_PUSH(i32) #1

declare dso_local i32 @PERL_UNUSED_VAR(i32) #1

declare dso_local i32 @call_list(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
