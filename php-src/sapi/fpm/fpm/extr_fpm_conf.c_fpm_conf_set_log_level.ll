; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_set_log_level.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_set_log_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"notice\00", align 1
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@ZLOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"alert\00", align 1
@ZLOG_ALERT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"invalid value for 'log_level'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8**, i64)* @fpm_conf_set_log_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fpm_conf_set_log_level(i32* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i8* @Z_STRVAL_P(i32* %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ZLOG_DEBUG, align 4
  store i32 %16, i32* %9, align 4
  br label %50

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @ZLOG_NOTICE, align 4
  store i32 %22, i32* %9, align 4
  br label %49

23:                                               ; preds = %17
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strcasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @ZLOG_WARNING, align 4
  store i32 %32, i32* %9, align 4
  br label %48

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @strcasecmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @ZLOG_ERROR, align 4
  store i32 %38, i32* %9, align 4
  br label %47

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @ZLOG_ALERT, align 4
  store i32 %44, i32* %9, align 4
  br label %46

45:                                               ; preds = %39
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %57

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %37
  br label %48

48:                                               ; preds = %47, %31
  br label %49

49:                                               ; preds = %48, %21
  br label %50

50:                                               ; preds = %49, %15
  %51 = load i32, i32* %9, align 4
  %52 = load i8**, i8*** %6, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = bitcast i8* %55 to i32*
  store i32 %51, i32* %56, align 4
  store i8* null, i8** %4, align 8
  br label %57

57:                                               ; preds = %50, %45
  %58 = load i8*, i8** %4, align 8
  ret i8* %58
}

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
