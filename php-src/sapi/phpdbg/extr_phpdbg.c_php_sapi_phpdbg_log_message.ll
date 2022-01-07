; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg.c_php_sapi_phpdbg_log_message.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg.c_php_sapi_phpdbg_log_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phpdbg_booted = common dso_local global i64 0, align 8
@flags = common dso_local global i32 0, align 4
@PHPDBG_IN_EVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"msg=\22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"php\00", align 1
@PHPDBG_PREVENT_INTERACTIVE = common dso_local global i32 0, align 4
@last_error_type = common dso_local global i32 0, align 4
@phpdbg_fully_started = common dso_local global i32 0, align 4
@PHPDBG_IS_STOPPING = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @php_sapi_phpdbg_log_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_sapi_phpdbg_log_message(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @phpdbg_booted, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %60

9:                                                ; preds = %2
  %10 = load i32, i32* @flags, align 4
  %11 = call i32 @PHPDBG_G(i32 %10)
  %12 = load i32, i32* @PHPDBG_IN_EVAL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @phpdbg_error(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  br label %64

18:                                               ; preds = %9
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @phpdbg_error(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @flags, align 4
  %22 = call i32 @PHPDBG_G(i32 %21)
  %23 = load i32, i32* @PHPDBG_PREVENT_INTERACTIVE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %64

27:                                               ; preds = %18
  %28 = load i32, i32* @last_error_type, align 4
  %29 = call i32 @PG(i32 %28)
  switch i32 %29, label %59 [
    i32 135, label %30
    i32 136, label %30
    i32 137, label %30
    i32 132, label %30
    i32 134, label %30
    i32 133, label %30
  ]

30:                                               ; preds = %27, %27, %27, %27, %27, %27
  %31 = call i8* (...) @zend_get_executed_filename()
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = call i32* @zend_string_init(i8* %32, i32 %34, i32 0)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 (...) @zend_get_executed_lineno()
  %38 = sub nsw i32 %37, 1
  %39 = call i32 (...) @zend_get_executed_lineno()
  %40 = call i32 @phpdbg_list_file(i32* %36, i32 3, i32 %38, i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @zend_string_release(i32* %41)
  %43 = load i32, i32* @phpdbg_fully_started, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %30
  br label %64

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %51, %46
  %48 = call i32 @phpdbg_interactive(i32 1, i32* null)
  switch i32 %48, label %50 [
    i32 130, label %49
    i32 131, label %49
    i32 128, label %49
    i32 129, label %49
  ]

49:                                               ; preds = %47, %47, %47, %47
  br label %64

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* @flags, align 4
  %53 = call i32 @PHPDBG_G(i32 %52)
  %54 = load i32, i32* @PHPDBG_IS_STOPPING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %47, label %58

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %27
  br label %64

60:                                               ; preds = %2
  %61 = load i32, i32* @stdout, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %15, %26, %45, %49, %60, %59
  ret void
}

declare dso_local i32 @PHPDBG_G(i32) #1

declare dso_local i32 @phpdbg_error(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @PG(i32) #1

declare dso_local i8* @zend_get_executed_filename(...) #1

declare dso_local i32* @zend_string_init(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @phpdbg_list_file(i32*, i32, i32, i32) #1

declare dso_local i32 @zend_get_executed_lineno(...) #1

declare dso_local i32 @zend_string_release(i32*) #1

declare dso_local i32 @phpdbg_interactive(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
