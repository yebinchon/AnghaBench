; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_regexp.c_cleanup_zsubexpr.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_regexp.c_cleanup_zsubexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@need_clear_zsubexpr = common dso_local global i64 0, align 8
@REG_MULTI = common dso_local global i64 0, align 8
@reg_startzpos = common dso_local global i32 0, align 4
@NSUBEXP = common dso_local global i32 0, align 4
@reg_endzpos = common dso_local global i32 0, align 4
@reg_startzp = common dso_local global i32 0, align 4
@reg_endzp = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_zsubexpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_zsubexpr() #0 {
  %1 = load i64, i64* @need_clear_zsubexpr, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %34

3:                                                ; preds = %0
  %4 = load i64, i64* @REG_MULTI, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, i32* @reg_startzpos, align 4
  %8 = load i32, i32* @NSUBEXP, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = trunc i64 %10 to i32
  %12 = call i32 @vim_memset(i32 %7, i32 255, i32 %11)
  %13 = load i32, i32* @reg_endzpos, align 4
  %14 = load i32, i32* @NSUBEXP, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 @vim_memset(i32 %13, i32 255, i32 %17)
  br label %32

19:                                               ; preds = %3
  %20 = load i32, i32* @reg_startzp, align 4
  %21 = load i32, i32* @NSUBEXP, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 8, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32 @vim_memset(i32 %20, i32 0, i32 %24)
  %26 = load i32, i32* @reg_endzp, align 4
  %27 = load i32, i32* @NSUBEXP, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 8, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @vim_memset(i32 %26, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %19, %6
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* @need_clear_zsubexpr, align 8
  br label %34

34:                                               ; preds = %32, %0
  ret void
}

declare dso_local i32 @vim_memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
