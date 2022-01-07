; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_mail.c_php_mail_build_headers_elem.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_mail.c_php_mail_build_headers_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUCCESS = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Header field name (%s) contains invalid chars\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Header field value (%s => %s) contains invalid chars or format\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"headers array elements must be string or array (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @php_mail_build_headers_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_mail_build_headers_elem(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @Z_TYPE_P(i32* %7)
  switch i32 %8, label %48 [
    i32 128, label %9
    i32 129, label %43
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @php_mail_build_headers_check_field_name(i32* %10)
  %12 = load i32, i32* @SUCCESS, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i32, i32* @E_WARNING, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @ZSTR_VAL(i32* %16)
  %18 = call i32 (i32*, i32, i8*, i32, ...) @php_error_docref(i32* null, i32 %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %53

19:                                               ; preds = %9
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @php_mail_build_headers_check_field_value(i32* %20)
  %22 = load i32, i32* @SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* @E_WARNING, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @ZSTR_VAL(i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @Z_STRVAL_P(i32* %28)
  %30 = call i32 (i32*, i32, i8*, i32, ...) @php_error_docref(i32* null, i32 %25, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %29)
  br label %53

31:                                               ; preds = %19
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @smart_str_append(i32* %32, i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @smart_str_appendl(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @Z_STRVAL_P(i32* %38)
  %40 = call i32 @smart_str_appends(i32* %37, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @smart_str_appendl(i32* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  br label %53

43:                                               ; preds = %3
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @php_mail_build_headers_elems(i32* %44, i32* %45, i32* %46)
  br label %53

48:                                               ; preds = %3
  %49 = load i32, i32* @E_WARNING, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @ZSTR_VAL(i32* %50)
  %52 = call i32 (i32*, i32, i8*, i32, ...) @php_error_docref(i32* null, i32 %49, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %14, %24, %48, %43, %31
  ret void
}

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @php_mail_build_headers_check_field_name(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @php_mail_build_headers_check_field_value(i32*) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @smart_str_append(i32*, i32*) #1

declare dso_local i32 @smart_str_appendl(i32*, i8*, i32) #1

declare dso_local i32 @smart_str_appends(i32*, i32) #1

declare dso_local i32 @php_mail_build_headers_elems(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
