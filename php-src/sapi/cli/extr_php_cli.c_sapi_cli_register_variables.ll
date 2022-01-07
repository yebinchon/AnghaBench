; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli.c_sapi_cli_register_variables.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli.c_sapi_cli_register_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i8*, i8**, i64, i64*)* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@php_self = common dso_local global i8* null, align 8
@sapi_module = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PARSE_SERVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"PHP_SELF\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"SCRIPT_NAME\00", align 1
@script_filename = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"SCRIPT_FILENAME\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"PATH_TRANSLATED\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"DOCUMENT_ROOT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @sapi_cli_register_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sapi_cli_register_variables(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @php_import_environment_variables(i32* %5)
  %7 = load i8*, i8** @php_self, align 8
  %8 = call i64 @strlen(i8* %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64 (i32, i8*, i8**, i64, i64*)*, i64 (i32, i8*, i8**, i64, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sapi_module, i32 0, i32 0), align 8
  %10 = load i32, i32* @PARSE_SERVER, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i64 %9(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** @php_self, i64 %11, i64* %3)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i8*, i8** @php_self, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @php_register_variable(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32* %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i64 (i32, i8*, i8**, i64, i64*)*, i64 (i32, i8*, i8**, i64, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sapi_module, i32 0, i32 0), align 8
  %20 = load i32, i32* @PARSE_SERVER, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i64 %19(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** @php_self, i64 %21, i64* %3)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i8*, i8** @php_self, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @php_register_variable(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %25, i32* %26)
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i8*, i8** @script_filename, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %3, align 8
  %31 = load i64 (i32, i8*, i8**, i64, i64*)*, i64 (i32, i8*, i8**, i64, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sapi_module, i32 0, i32 0), align 8
  %32 = load i32, i32* @PARSE_SERVER, align 4
  %33 = load i64, i64* %3, align 8
  %34 = call i64 %31(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** @script_filename, i64 %33, i64* %3)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i8*, i8** @script_filename, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @php_register_variable(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %37, i32* %38)
  br label %40

40:                                               ; preds = %36, %28
  %41 = load i64 (i32, i8*, i8**, i64, i64*)*, i64 (i32, i8*, i8**, i64, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sapi_module, i32 0, i32 0), align 8
  %42 = load i32, i32* @PARSE_SERVER, align 4
  %43 = load i64, i64* %3, align 8
  %44 = call i64 %41(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** @script_filename, i64 %43, i64* %3)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i8*, i8** @script_filename, align 8
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @php_register_variable(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %47, i32* %48)
  br label %50

50:                                               ; preds = %46, %40
  store i64 0, i64* %3, align 8
  %51 = load i64 (i32, i8*, i8**, i64, i64*)*, i64 (i32, i8*, i8**, i64, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sapi_module, i32 0, i32 0), align 8
  %52 = load i32, i32* @PARSE_SERVER, align 4
  %53 = load i64, i64* %3, align 8
  %54 = call i64 %51(i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %4, i64 %53, i64* %3)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i8*, i8** %4, align 8
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @php_register_variable(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %57, i32* %58)
  br label %60

60:                                               ; preds = %56, %50
  ret void
}

declare dso_local i32 @php_import_environment_variables(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @php_register_variable(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
