; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_auth.c_mysqlnd_connect_run_authentication.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_auth.c_mysqlnd_connect_run_authentication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"mysqlnd_connect_run_authentication\00", align 1
@PASS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mysqlnd_connect_run_authentication(i32* %0, i8* %1, i8* %2, i8* %3, i64 %4, i64 %5, i32 %6, i8* %7, i32 %8, i64 %9, i32* %10, i32 %11) #0 {
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store i32* %0, i32** %14, align 8
  store i8* %1, i8** %15, align 8
  store i8* %2, i8** %16, align 8
  store i8* %3, i8** %17, align 8
  store i64 %4, i64* %18, align 8
  store i64 %5, i64* %19, align 8
  store i32 %6, i32* %20, align 4
  store i8* %7, i8** %21, align 8
  store i32 %8, i32* %22, align 4
  store i64 %9, i64* %23, align 8
  store i32* %10, i32** %24, align 8
  store i32 %11, i32* %25, align 4
  %27 = load i64, i64* @FAIL, align 8
  store i64 %27, i64* %26, align 8
  %28 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %29 = load i32*, i32** %14, align 8
  %30 = load i32, i32* %22, align 4
  %31 = load i64, i64* %23, align 8
  %32 = load i32*, i32** %24, align 8
  %33 = load i32, i32* %25, align 4
  %34 = call i64 @mysqlnd_switch_to_ssl_if_needed(i32* %29, i32 %30, i64 %31, i32* %32, i32 %33)
  store i64 %34, i64* %26, align 8
  %35 = load i64, i64* @PASS, align 8
  %36 = load i64, i64* %26, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %12
  %39 = load i32*, i32** %14, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = load i64, i64* %19, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = load i64, i64* %18, align 8
  %45 = load i32, i32* %20, align 4
  %46 = load i8*, i8** %21, align 8
  %47 = load i32, i32* %22, align 4
  %48 = load i32*, i32** %24, align 8
  %49 = load i32, i32* %25, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i64 @mysqlnd_run_authentication(i32* %39, i8* %40, i8* %41, i64 %42, i8* %43, i64 %44, i32 %45, i8* %46, i32 %47, i32* %48, i32 %49, i32 %50, i32 %51)
  store i64 %52, i64* %26, align 8
  br label %53

53:                                               ; preds = %38, %12
  %54 = load i64, i64* %26, align 8
  %55 = call i32 @DBG_RETURN(i64 %54)
  %56 = load i64, i64* %13, align 8
  ret i64 %56
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i64 @mysqlnd_switch_to_ssl_if_needed(i32*, i32, i64, i32*, i32) #1

declare dso_local i64 @mysqlnd_run_authentication(i32*, i8*, i8*, i64, i8*, i64, i32, i8*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @DBG_RETURN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
