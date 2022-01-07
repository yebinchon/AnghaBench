; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_get_perl_array_ref.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_get_perl_array_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dTHX = common dso_local global i32 0, align 4
@SVt_PVAV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"PostgreSQL::InServer::ARRAY\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"could not get array reference from PostgreSQL::InServer::ARRAY object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @get_perl_array_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_perl_array_ref(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @dTHX, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @SvOK(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %60

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @SvROK(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @SvRV(i32* %15)
  %17 = call i64 @SvTYPE(i64 %16)
  %18 = load i64, i64* @SVt_PVAV, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32*, i32** %3, align 8
  store i32* %21, i32** %2, align 8
  br label %61

22:                                               ; preds = %14
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @sv_isa(i32* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @SvRV(i32* %27)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32** @hv_fetch_string(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32** %31, i32*** %5, align 8
  %32 = load i32**, i32*** %5, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %26
  %36 = load i32**, i32*** %5, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @SvOK(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load i32**, i32*** %5, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @SvROK(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i32**, i32*** %5, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @SvRV(i32* %47)
  %49 = call i64 @SvTYPE(i64 %48)
  %50 = load i64, i64* @SVt_PVAV, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32**, i32*** %5, align 8
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %2, align 8
  br label %61

55:                                               ; preds = %45, %40, %35, %26
  %56 = load i32, i32* @ERROR, align 4
  %57 = call i32 @elog(i32 %56, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %22
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59, %10, %1
  store i32* null, i32** %2, align 8
  br label %61

61:                                               ; preds = %60, %52, %20
  %62 = load i32*, i32** %2, align 8
  ret i32* %62
}

declare dso_local i64 @SvOK(i32*) #1

declare dso_local i64 @SvROK(i32*) #1

declare dso_local i64 @SvTYPE(i64) #1

declare dso_local i64 @SvRV(i32*) #1

declare dso_local i64 @sv_isa(i32*, i8*) #1

declare dso_local i32** @hv_fetch_string(i32*, i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
