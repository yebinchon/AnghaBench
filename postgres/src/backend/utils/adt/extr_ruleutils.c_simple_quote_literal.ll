; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_simple_quote_literal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_simple_quote_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@standard_conforming_strings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @simple_quote_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simple_quote_literal(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @appendStringInfoChar(i32 %7, i8 signext 39)
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %5, align 8
  br label %10

10:                                               ; preds = %32, %2
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %6, align 1
  %17 = load i8, i8* %6, align 1
  %18 = load i32, i32* @standard_conforming_strings, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @SQL_STR_DOUBLE(i8 signext %17, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = load i8, i8* %6, align 1
  %27 = call i32 @appendStringInfoChar(i32 %25, i8 signext %26)
  br label %28

28:                                               ; preds = %24, %14
  %29 = load i32, i32* %3, align 4
  %30 = load i8, i8* %6, align 1
  %31 = call i32 @appendStringInfoChar(i32 %29, i8 signext %30)
  br label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %5, align 8
  br label %10

35:                                               ; preds = %10
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @appendStringInfoChar(i32 %36, i8 signext 39)
  ret void
}

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i64 @SQL_STR_DOUBLE(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
