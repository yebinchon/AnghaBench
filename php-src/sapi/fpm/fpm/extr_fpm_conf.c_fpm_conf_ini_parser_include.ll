; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_ini_parser_include.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_ini_parser_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ini_filename = common dso_local global i32 0, align 4
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to include %s from %s at line %d\00", align 1
@ini_lineno = common dso_local global i32 0, align 4
@GLOB_ERR = common dso_local global i32 0, align 4
@GLOB_MARK = common dso_local global i32 0, align 4
@GLOB_NOMATCH = common dso_local global i64 0, align 8
@ZLOG_WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @fpm_conf_ini_parser_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_conf_ini_parser_include(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  br label %39

16:                                               ; preds = %12
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %39

21:                                               ; preds = %16
  %22 = load i32, i32* @ini_filename, align 4
  %23 = call i32 @spprintf(i8** %5, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @fpm_conf_load_ini_file(i8* %24)
  %26 = icmp sgt i64 0, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i32, i32* @ZLOG_ERROR, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @ini_lineno, align 4
  %32 = call i32 (i32, i8*, i8*, ...) @zlog(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  store i32 1, i32* %33, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @efree(i8* %34)
  br label %39

36:                                               ; preds = %21
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @efree(i8* %37)
  br label %39

39:                                               ; preds = %36, %27, %20, %15
  ret void
}

declare dso_local i32 @spprintf(i8**, i32, i8*, i32) #1

declare dso_local i64 @fpm_conf_load_ini_file(i8*) #1

declare dso_local i32 @zlog(i32, i8*, i8*, ...) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
