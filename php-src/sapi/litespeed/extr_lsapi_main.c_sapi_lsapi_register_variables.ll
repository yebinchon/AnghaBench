; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_sapi_lsapi_register_variables.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_sapi_lsapi_register_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lsapi_mode = common dso_local global i64 0, align 8
@request_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"PHP_SELF\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"SCRIPT_NAME\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"SCRIPT_FILENAME\00", align 1
@script_filename = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"PATH_TRANSLATED\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"DOCUMENT_ROOT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @sapi_lsapi_register_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sapi_lsapi_register_variables(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_2__, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  store i32* %0, i32** %2, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %6 = load i64, i64* @lsapi_mode, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load i32, i32* @request_info, align 4
  %10 = call i8* @SG(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load i32, i32* @request_info, align 4
  %17 = call i8* @SG(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %3, align 8
  br label %21

21:                                               ; preds = %15, %8
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @litespeed_php_import_environment_variables(i32* %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @LSAPI_ForeachHeader(i32 (i8*, i32, i8*, i32, i32*)* @add_variable, i32* %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @LSAPI_ForeachEnv(i32 (i8*, i32, i8*, i32, i32*)* @add_variable, i32* %26)
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @add_variable(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8, i8* %28, i32 %30, i32* %31)
  br label %50

33:                                               ; preds = %1
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @php_import_environment_variables(i32* %34)
  %36 = load i8*, i8** %3, align 8
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @php_register_variable(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32* %37)
  %39 = load i8*, i8** %3, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @php_register_variable(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32* %40)
  %42 = load i8*, i8** @script_filename, align 8
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @php_register_variable(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %42, i32* %43)
  %45 = load i8*, i8** @script_filename, align 8
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @php_register_variable(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %45, i32* %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @php_register_variable(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %48)
  br label %50

50:                                               ; preds = %33, %21
  ret void
}

declare dso_local i8* @SG(i32) #1

declare dso_local i32 @litespeed_php_import_environment_variables(i32*) #1

declare dso_local i32 @LSAPI_ForeachHeader(i32 (i8*, i32, i8*, i32, i32*)*, i32*) #1

declare dso_local i32 @add_variable(i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @LSAPI_ForeachEnv(i32 (i8*, i32, i8*, i32, i32*)*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @php_import_environment_variables(i32*) #1

declare dso_local i32 @php_register_variable(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
