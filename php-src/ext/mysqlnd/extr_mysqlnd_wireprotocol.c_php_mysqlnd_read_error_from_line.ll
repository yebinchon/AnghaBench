; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_wireprotocol.c_php_mysqlnd_read_error_from_line.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_wireprotocol.c_php_mysqlnd_read_error_from_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"php_mysqlnd_read_error_from_line\00", align 1
@CR_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@unknown_sqlstate = common dso_local global i8* null, align 8
@MYSQLND_SQLSTATE_LENGTH = common dso_local global i64 0, align 8
@FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i32*, i8*)* @php_mysqlnd_read_error_from_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_mysqlnd_read_error_from_line(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %14, align 8
  store i64 0, i64* %15, align 8
  %17 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @CR_UNKNOWN_ERROR, align 4
  %19 = load i32*, i32** %12, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i8*, i8** %13, align 8
  %21 = load i8*, i8** @unknown_sqlstate, align 8
  %22 = load i64, i64* @MYSQLND_SQLSTATE_LENGTH, align 8
  %23 = call i32 @memcpy(i8* %20, i8* %21, i64 %22)
  %24 = load i64, i64* %9, align 8
  %25 = icmp ugt i64 %24, 2
  br i1 %25, label %26, label %85

26:                                               ; preds = %6
  %27 = load i8*, i8** %14, align 8
  %28 = call i32 @uint2korr(i8* %27)
  %29 = load i32*, i32** %12, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i8*, i8** %14, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %31, i8** %14, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 35
  br i1 %35, label %36, label %58

36:                                               ; preds = %26
  %37 = load i8*, i8** %14, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %14, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sub i64 %39, %44
  %46 = load i64, i64* @MYSQLND_SQLSTATE_LENGTH, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %36
  %49 = load i8*, i8** %13, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load i64, i64* @MYSQLND_SQLSTATE_LENGTH, align 8
  %52 = call i32 @memcpy(i8* %49, i8* %50, i64 %51)
  %53 = load i64, i64* @MYSQLND_SQLSTATE_LENGTH, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %14, align 8
  br label %57

56:                                               ; preds = %36
  br label %86

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %26
  %59 = load i64, i64* %9, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sub i64 %59, %64
  %66 = icmp ugt i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %58
  %68 = load i64, i64* %9, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = sub i64 %68, %73
  %75 = trunc i64 %74 to i32
  %76 = load i64, i64* %11, align 8
  %77 = sub i64 %76, 1
  %78 = trunc i64 %77 to i32
  %79 = call i64 @MIN(i32 %75, i32 %78)
  store i64 %79, i64* %15, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load i64, i64* %15, align 8
  %83 = call i32 @memcpy(i8* %80, i8* %81, i64 %82)
  br label %84

84:                                               ; preds = %67, %58
  br label %85

85:                                               ; preds = %84, %6
  br label %86

86:                                               ; preds = %85, %56
  %87 = load i8*, i8** %13, align 8
  %88 = load i64, i64* @MYSQLND_SQLSTATE_LENGTH, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %10, align 8
  %91 = load i64, i64* %15, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load i32, i32* @FAIL, align 4
  %94 = call i32 @DBG_RETURN(i32 %93)
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @uint2korr(i8*) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i32 @DBG_RETURN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
