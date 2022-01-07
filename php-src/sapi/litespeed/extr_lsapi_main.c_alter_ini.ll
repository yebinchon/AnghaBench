; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_alter_ini.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_alter_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZEND_INI_PERDIR = common dso_local global i32 0, align 4
@PHP_INI_STAGE_RUNTIME = common dso_local global i32 0, align 4
@ZEND_INI_SYSTEM = common dso_local global i32 0, align 4
@mod_lsapi_mode = common dso_local global i32 0, align 4
@PHP_INI_STAGE_ACTIVATE = common dso_local global i32 0, align 4
@PHP_INI_STAGE_HTACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@engine = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i8*)* @alter_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alter_ini(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load i32, i32* @ZEND_INI_PERDIR, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @PHP_INI_STAGE_RUNTIME, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 1, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %5
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* @ZEND_INI_SYSTEM, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* @mod_lsapi_mode, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @PHP_INI_STAGE_ACTIVATE, align 4
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %31, %27
  br label %36

34:                                               ; preds = %20
  %35 = load i32, i32* @PHP_INI_STAGE_HTACCESS, align 4
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 7
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @strncasecmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 48
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i64 0, i64* @engine, align 8
  br label %53

53:                                               ; preds = %52, %47
  br label %68

54:                                               ; preds = %43, %36
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %7, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32* @zend_string_init(i8* %57, i32 %58, i32 1)
  store i32* %59, i32** %11, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @zend_alter_ini_entry_chars(i32* %60, i8* %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @zend_string_release_ex(i32* %66, i32 1)
  br label %68

68:                                               ; preds = %54, %53
  br label %69

69:                                               ; preds = %68, %5
  ret i32 1
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32* @zend_string_init(i8*, i32, i32) #1

declare dso_local i32 @zend_alter_ini_entry_chars(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
