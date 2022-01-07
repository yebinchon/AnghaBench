; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_regexp.c_skipchr.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_regexp.c_skipchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@regparse = common dso_local global i8* null, align 8
@prevchr_len = common dso_local global i64 0, align 8
@NUL = common dso_local global i8 0, align 1
@at_start = common dso_local global i32 0, align 4
@prev_at_start = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@prevchr = common dso_local global i32 0, align 4
@prevprevchr = common dso_local global i32 0, align 4
@curchr = common dso_local global i32 0, align 4
@nextchr = common dso_local global i32 0, align 4
@enc_utf8 = common dso_local global i64 0, align 8
@has_mbyte = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @skipchr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skipchr() #0 {
  %1 = load i8*, i8** @regparse, align 8
  %2 = load i8, i8* %1, align 1
  %3 = sext i8 %2 to i32
  %4 = icmp eq i32 %3, 92
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i64 1, i64* @prevchr_len, align 8
  br label %7

6:                                                ; preds = %0
  store i64 0, i64* @prevchr_len, align 8
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i8*, i8** @regparse, align 8
  %9 = load i64, i64* @prevchr_len, align 8
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = load i8, i8* @NUL, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = load i64, i64* @prevchr_len, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* @prevchr_len, align 8
  br label %19

19:                                               ; preds = %16, %7
  %20 = load i64, i64* @prevchr_len, align 8
  %21 = load i8*, i8** @regparse, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %22, i8** @regparse, align 8
  %23 = load i32, i32* @at_start, align 4
  store i32 %23, i32* @prev_at_start, align 4
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* @at_start, align 4
  %25 = load i32, i32* @prevchr, align 4
  store i32 %25, i32* @prevprevchr, align 4
  %26 = load i32, i32* @curchr, align 4
  store i32 %26, i32* @prevchr, align 4
  %27 = load i32, i32* @nextchr, align 4
  store i32 %27, i32* @curchr, align 4
  store i32 -1, i32* @nextchr, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
