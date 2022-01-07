; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_main.c_fastcgi_ini_parser.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_main.c_fastcgi_ini_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_value_s = type { i8*, i8*, i32* }

@ZEND_INI_PARSER_ENTRY = common dso_local global i32 0, align 4
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Passing INI directive through FastCGI: only classic entries are allowed\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Passing INI directive through FastCGI: empty key\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Passing INI directive through FastCGI: empty value for key '%s'\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Passing INI directive through FastCGI: unable to set '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i8*)* @fastcgi_ini_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fastcgi_ini_parser(i32* %0, i32* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.key_value_s, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %11, align 8
  store i8* null, i8** %13, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %5
  br label %69

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @ZEND_INI_PARSER_ENTRY, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @ZLOG_ERROR, align 4
  %29 = call i32 (i32, i8*, ...) @zlog(i32 %28, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %69

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = call i8* @Z_STRVAL_P(i32* %31)
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %30
  %40 = load i32, i32* @ZLOG_ERROR, align 4
  %41 = call i32 (i32, i8*, ...) @zlog(i32 %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %69

42:                                               ; preds = %35
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = call i8* @Z_STRVAL_P(i32* %46)
  store i8* %47, i8** %13, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i8*, i8** %13, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @ZLOG_ERROR, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 (i32, i8*, ...) @zlog(i32 %52, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  br label %69

55:                                               ; preds = %48
  %56 = load i8*, i8** %12, align 8
  %57 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %14, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %14, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  %60 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %14, i32 0, i32 2
  store i32* null, i32** %60, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fpm_php_apply_defines_ex(%struct.key_value_s* %14, i32 %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i32, i32* @ZLOG_ERROR, align 4
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 (i32, i8*, ...) @zlog(i32 %66, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %22, %27, %39, %51, %65, %55
  ret void
}

declare dso_local i32 @zlog(i32, i8*, ...) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fpm_php_apply_defines_ex(%struct.key_value_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
