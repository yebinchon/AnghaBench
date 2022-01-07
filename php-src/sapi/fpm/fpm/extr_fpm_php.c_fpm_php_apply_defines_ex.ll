; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_php.c_fpm_php_apply_defines_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_php.c_fpm_php_apply_defines_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_value_s = type { i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"extension\00", align 1
@MODULE_PERSISTENT = common dso_local global i32 0, align 4
@IS_TRUE = common dso_local global i64 0, align 8
@PHP_INI_STAGE_ACTIVATE = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"disable_functions\00", align 1
@zend_disable_function = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"disable_classes\00", align 1
@zend_disable_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_php_apply_defines_ex(%struct.key_value_s* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.key_value_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.key_value_s* %0, %struct.key_value_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.key_value_s*, %struct.key_value_s** %4, align 8
  %16 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load %struct.key_value_s*, %struct.key_value_s** %4, align 8
  %19 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %2
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @MODULE_PERSISTENT, align 4
  %36 = call i32 @php_dl(i8* %34, i32 %35, i32* %10, i32 1)
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @Z_TYPE(i32 %37)
  %39 = load i64, i64* @IS_TRUE, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %86

42:                                               ; preds = %28, %2
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @PHP_INI_STAGE_ACTIVATE, align 4
  %49 = call i64 @fpm_php_zend_ini_alter_master(i8* %43, i32 %44, i8* %45, i32 %46, i32 %47, i32 %48)
  %50 = load i64, i64* @FAILURE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %86

53:                                               ; preds = %42
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i8*, i8** %7, align 8
  %64 = call i8* @strdup(i8* %63)
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  store i8* %65, i8** %12, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* @zend_disable_function, align 4
  %68 = call i32 @fpm_php_disable(i8* %66, i32 %67)
  store i32 1, i32* %3, align 4
  br label %86

69:                                               ; preds = %57, %53
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %7, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i8*, i8** %7, align 8
  %80 = call i8* @strdup(i8* %79)
  store i8* %80, i8** %13, align 8
  %81 = load i8*, i8** %13, align 8
  store i8* %81, i8** %14, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = load i32, i32* @zend_disable_class, align 4
  %84 = call i32 @fpm_php_disable(i8* %82, i32 %83)
  store i32 1, i32* %3, align 4
  br label %86

85:                                               ; preds = %73, %69
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %78, %62, %52, %33
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @php_dl(i8*, i32, i32*, i32) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i64 @fpm_php_zend_ini_alter_master(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fpm_php_disable(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
