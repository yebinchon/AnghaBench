; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_php.c_fpm_php_limit_extensions.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_php.c_fpm_php_limit_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@limit_extensions = common dso_local global i8** null, align 8
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Access to the script '%s' has been denied (see security.limit_extensions)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_php_limit_extensions(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8**, i8*** @limit_extensions, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %55

14:                                               ; preds = %10
  %15 = load i8**, i8*** @limit_extensions, align 8
  store i8** %15, i8*** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %48, %14
  %19 = load i8**, i8*** %4, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8**, i8*** %4, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %27, label %51

27:                                               ; preds = %25
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load i8*, i8** %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i64, i64* %6, align 8
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %7, align 8
  %41 = load i8**, i8*** %4, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @strcmp(i8* %42, i8* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %55

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %27
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %4, align 8
  br label %18

51:                                               ; preds = %25
  %52 = load i32, i32* @ZLOG_NOTICE, align 4
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @zlog(i32 %52, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %53)
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %46, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @zlog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
