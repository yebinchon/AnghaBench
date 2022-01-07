; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setlocales.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setlocales.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@locale = common dso_local global i8* null, align 8
@lc_ctype = common dso_local global i8* null, align 8
@lc_collate = common dso_local global i8* null, align 8
@lc_numeric = common dso_local global i8* null, align 8
@lc_time = common dso_local global i8* null, align 8
@lc_monetary = common dso_local global i8* null, align 8
@lc_messages = common dso_local global i8* null, align 8
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_COLLATE = common dso_local global i32 0, align 4
@LC_NUMERIC = common dso_local global i32 0, align 4
@LC_TIME = common dso_local global i32 0, align 4
@LC_MONETARY = common dso_local global i32 0, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setlocales to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setlocales() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @locale, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %35

4:                                                ; preds = %0
  %5 = load i8*, i8** @lc_ctype, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = load i8*, i8** @locale, align 8
  store i8* %8, i8** @lc_ctype, align 8
  br label %9

9:                                                ; preds = %7, %4
  %10 = load i8*, i8** @lc_collate, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load i8*, i8** @locale, align 8
  store i8* %13, i8** @lc_collate, align 8
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i8*, i8** @lc_numeric, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** @locale, align 8
  store i8* %18, i8** @lc_numeric, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i8*, i8** @lc_time, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** @locale, align 8
  store i8* %23, i8** @lc_time, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i8*, i8** @lc_monetary, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @locale, align 8
  store i8* %28, i8** @lc_monetary, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i8*, i8** @lc_messages, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** @locale, align 8
  store i8* %33, i8** @lc_messages, align 8
  br label %34

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %0
  %36 = load i32, i32* @LC_CTYPE, align 4
  %37 = load i8*, i8** @lc_ctype, align 8
  %38 = call i32 @check_locale_name(i32 %36, i8* %37, i8** %1)
  %39 = load i8*, i8** %1, align 8
  store i8* %39, i8** @lc_ctype, align 8
  %40 = load i32, i32* @LC_COLLATE, align 4
  %41 = load i8*, i8** @lc_collate, align 8
  %42 = call i32 @check_locale_name(i32 %40, i8* %41, i8** %1)
  %43 = load i8*, i8** %1, align 8
  store i8* %43, i8** @lc_collate, align 8
  %44 = load i32, i32* @LC_NUMERIC, align 4
  %45 = load i8*, i8** @lc_numeric, align 8
  %46 = call i32 @check_locale_name(i32 %44, i8* %45, i8** %1)
  %47 = load i8*, i8** %1, align 8
  store i8* %47, i8** @lc_numeric, align 8
  %48 = load i32, i32* @LC_TIME, align 4
  %49 = load i8*, i8** @lc_time, align 8
  %50 = call i32 @check_locale_name(i32 %48, i8* %49, i8** %1)
  %51 = load i8*, i8** %1, align 8
  store i8* %51, i8** @lc_time, align 8
  %52 = load i32, i32* @LC_MONETARY, align 4
  %53 = load i8*, i8** @lc_monetary, align 8
  %54 = call i32 @check_locale_name(i32 %52, i8* %53, i8** %1)
  %55 = load i8*, i8** %1, align 8
  store i8* %55, i8** @lc_monetary, align 8
  %56 = load i32, i32* @LC_CTYPE, align 4
  %57 = load i8*, i8** @lc_messages, align 8
  %58 = call i32 @check_locale_name(i32 %56, i8* %57, i8** %1)
  %59 = load i8*, i8** %1, align 8
  store i8* %59, i8** @lc_messages, align 8
  ret void
}

declare dso_local i32 @check_locale_name(i32, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
