; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_env.c_fpm_env_setproctitle.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_env.c_fpm_env_setproctitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fpm_env_argv = common dso_local global i32** null, align 8
@fpm_env_argv_len = common dso_local global i64 0, align 8
@SETPROCTITLE_PREFIX = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpm_env_setproctitle(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32**, i32*** @fpm_env_argv, align 8
  %4 = icmp ne i32** %3, null
  br i1 %4, label %5, label %39

5:                                                ; preds = %1
  %6 = load i64, i64* @fpm_env_argv_len, align 8
  %7 = load i8*, i8** @SETPROCTITLE_PREFIX, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = add nsw i64 %8, 3
  %10 = icmp sgt i64 %6, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %5
  %12 = load i32**, i32*** @fpm_env_argv, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @fpm_env_argv_len, align 8
  %16 = call i32 @memset(i32* %14, i32 0, i64 %15)
  %17 = load i32**, i32*** @fpm_env_argv, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i8*, i8** @SETPROCTITLE_PREFIX, align 8
  %21 = load i64, i64* @fpm_env_argv_len, align 8
  %22 = sub nsw i64 %21, 2
  %23 = call i32 @strncpy(i32* %19, i8* %20, i64 %22)
  %24 = load i32**, i32*** @fpm_env_argv, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i8*, i8** @SETPROCTITLE_PREFIX, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i8*, i8** %2, align 8
  %31 = load i64, i64* @fpm_env_argv_len, align 8
  %32 = load i8*, i8** @SETPROCTITLE_PREFIX, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = sub nsw i64 %31, %33
  %35 = sub nsw i64 %34, 2
  %36 = call i32 @strncpy(i32* %29, i8* %30, i64 %35)
  %37 = load i32**, i32*** @fpm_env_argv, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 1
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %11, %5, %1
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @strncpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
