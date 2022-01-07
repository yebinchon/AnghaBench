; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_pg_locale.c_pg_wc_tolower.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_pg_locale.c_pg_wc_tolower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@pg_regex_strategy = common dso_local global i32 0, align 4
@UCHAR_MAX = common dso_local global i32 0, align 4
@pg_regex_locale = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @pg_wc_tolower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pg_wc_tolower(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i32, i32* @pg_regex_strategy, align 4
  switch i32 %4, label %46 [
    i32 131, label %5
    i32 129, label %14
    i32 133, label %25
    i32 128, label %43
    i32 132, label %43
    i32 130, label %45
  ]

5:                                                ; preds = %1
  %6 = load i64, i64* %3, align 8
  %7 = icmp sle i64 %6, 127
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i64, i64* %3, align 8
  %10 = trunc i64 %9 to i8
  %11 = call i64 @pg_ascii_tolower(i8 zeroext %10)
  store i64 %11, i64* %2, align 8
  br label %47

12:                                               ; preds = %5
  %13 = load i64, i64* %3, align 8
  store i64 %13, i64* %2, align 8
  br label %47

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = icmp sle i64 %15, 127
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i64, i64* %3, align 8
  %19 = trunc i64 %18 to i8
  %20 = call i64 @pg_ascii_tolower(i8 zeroext %19)
  store i64 %20, i64* %2, align 8
  br label %47

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i64 @towlower(i32 %23)
  store i64 %24, i64* %2, align 8
  br label %47

25:                                               ; preds = %1
  %26 = load i64, i64* %3, align 8
  %27 = icmp sle i64 %26, 127
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, i64* %3, align 8
  %30 = trunc i64 %29 to i8
  %31 = call i64 @pg_ascii_tolower(i8 zeroext %30)
  store i64 %31, i64* %2, align 8
  br label %47

32:                                               ; preds = %25
  %33 = load i64, i64* %3, align 8
  %34 = load i32, i32* @UCHAR_MAX, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp sle i64 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64, i64* %3, align 8
  %39 = trunc i64 %38 to i8
  %40 = call i64 @tolower(i8 zeroext %39)
  store i64 %40, i64* %2, align 8
  br label %47

41:                                               ; preds = %32
  %42 = load i64, i64* %3, align 8
  store i64 %42, i64* %2, align 8
  br label %47

43:                                               ; preds = %1, %1
  %44 = load i64, i64* %3, align 8
  store i64 %44, i64* %2, align 8
  br label %47

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %1, %45
  store i64 0, i64* %2, align 8
  br label %47

47:                                               ; preds = %46, %43, %41, %37, %28, %21, %17, %12, %8
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local i64 @pg_ascii_tolower(i8 zeroext) #1

declare dso_local i64 @towlower(i32) #1

declare dso_local i64 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
