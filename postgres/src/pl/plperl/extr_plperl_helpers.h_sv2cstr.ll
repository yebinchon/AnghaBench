; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl_helpers.h_sv2cstr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl_helpers.h_sv2cstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dTHX = common dso_local global i32 0, align 4
@SVt_PVLV = common dso_local global i64 0, align 8
@SVt_PVFM = common dso_local global i64 0, align 8
@PG_SQL_ASCII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @sv2cstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sv2cstr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @dTHX, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @SvREADONLY(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @isGV_with_GP(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @SvTYPE(i32* %15)
  %17 = load i64, i64* @SVt_PVLV, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @SvTYPE(i32* %20)
  %22 = load i64, i64* @SVt_PVFM, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %10, %1
  %25 = load i32*, i32** %2, align 8
  %26 = call i32* @newSVsv(i32* %25)
  store i32* %26, i32** %2, align 8
  br label %30

27:                                               ; preds = %19, %14
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @SvREFCNT_inc_simple_void(i32* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = call i64 (...) @GetDatabaseEncoding()
  %32 = load i64, i64* @PG_SQL_ASCII, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i8* @SvPV(i32* %35, i32 %36)
  store i8* %37, i8** %3, align 8
  br label %42

38:                                               ; preds = %30
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i8* @SvPVutf8(i32* %39, i32 %40)
  store i8* %41, i8** %3, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i8* @utf_u2e(i8* %43, i32 %44)
  store i8* %45, i8** %4, align 8
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @SvREFCNT_dec(i32* %46)
  %48 = load i8*, i8** %4, align 8
  ret i8* %48
}

declare dso_local i64 @SvREADONLY(i32*) #1

declare dso_local i64 @isGV_with_GP(i32*) #1

declare dso_local i64 @SvTYPE(i32*) #1

declare dso_local i32* @newSVsv(i32*) #1

declare dso_local i32 @SvREFCNT_inc_simple_void(i32*) #1

declare dso_local i64 @GetDatabaseEncoding(...) #1

declare dso_local i8* @SvPV(i32*, i32) #1

declare dso_local i8* @SvPVutf8(i32*, i32) #1

declare dso_local i8* @utf_u2e(i8*, i32) #1

declare dso_local i32 @SvREFCNT_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
