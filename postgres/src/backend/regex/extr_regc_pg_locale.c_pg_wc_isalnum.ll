; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_pg_locale.c_pg_wc_isalnum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_pg_locale.c_pg_wc_isalnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@pg_regex_strategy = common dso_local global i32 0, align 4
@pg_char_properties = common dso_local global i32* null, align 8
@PG_ISALNUM = common dso_local global i32 0, align 4
@UCHAR_MAX = common dso_local global i32 0, align 4
@pg_regex_locale = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @pg_wc_isalnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_wc_isalnum(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i32, i32* @pg_regex_strategy, align 4
  switch i32 %4, label %38 [
    i32 131, label %5
    i32 129, label %19
    i32 133, label %23
    i32 128, label %36
    i32 132, label %36
    i32 130, label %37
  ]

5:                                                ; preds = %1
  %6 = load i64, i64* %3, align 8
  %7 = icmp ule i64 %6, 127
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i32*, i32** @pg_char_properties, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PG_ISALNUM, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %8, %5
  %17 = phi i1 [ false, %5 ], [ %15, %8 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %39

19:                                               ; preds = %1
  %20 = load i64, i64* %3, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @iswalnum(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %39

23:                                               ; preds = %1
  %24 = load i64, i64* %3, align 8
  %25 = load i32, i32* @UCHAR_MAX, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ule i64 %24, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i64, i64* %3, align 8
  %30 = trunc i64 %29 to i8
  %31 = call i32 @isalnum(i8 zeroext %30)
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ false, %23 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %39

36:                                               ; preds = %1, %1
  br label %38

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %1, %37, %36
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %33, %19, %16
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @iswalnum(i32) #1

declare dso_local i32 @isalnum(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
