; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_driver.c_dblib_get_tds_version.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_driver.c_dblib_get_tds_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"3.4\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"4.0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"4.2\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"4.6\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"4.9.5\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"5.0\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"7.0\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"7.1\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"7.2\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"7.3\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"7.4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @dblib_get_tds_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dblib_get_tds_version(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %42 [
    i32 139, label %6
    i32 138, label %9
    i32 137, label %12
    i32 136, label %15
    i32 135, label %18
    i32 134, label %21
    i32 133, label %24
    i32 132, label %27
    i32 131, label %30
    i32 130, label %33
    i32 129, label %36
    i32 128, label %39
  ]

6:                                                ; preds = %2
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @ZVAL_STRING(i32* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %45

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @ZVAL_STRING(i32* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %45

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @ZVAL_STRING(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %45

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @ZVAL_STRING(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %45

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @ZVAL_STRING(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %45

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @ZVAL_STRING(i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %45

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @ZVAL_STRING(i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %45

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @ZVAL_STRING(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %45

30:                                               ; preds = %2
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @ZVAL_STRING(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %45

33:                                               ; preds = %2
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @ZVAL_STRING(i32* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %45

36:                                               ; preds = %2
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @ZVAL_STRING(i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %45

39:                                               ; preds = %2
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @ZVAL_STRING(i32* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %45

42:                                               ; preds = %2
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @ZVAL_FALSE(i32* %43)
  br label %45

45:                                               ; preds = %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @ZVAL_STRING(i32*, i8*) #1

declare dso_local i32 @ZVAL_FALSE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
