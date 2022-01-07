; ModuleID = '/home/carl/AnghaBench/openssl/crypto/err/extr_err_prn.c_ERR_print_errors_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/err/extr_err_prn.c_ERR_print_errors_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"unknown function\00", align 1
@ERR_TXT_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s:error:%s:%s:%s:%s:%d:%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ERR_print_errors_cb(i32 (i8*, i64, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32 (i8*, i64, i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 (i8*, i64, i8*)* %0, i32 (i8*, i64, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = call i32 (...) @CRYPTO_THREAD_get_current_id()
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %56, %2
  %18 = call i64 @ERR_get_error_all(i8** %11, i32* %14, i8** %13, i8** %12, i32* %15)
  store i64 %18, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %17
  %21 = load i64, i64* %6, align 8
  %22 = call i8* @ERR_lib_error_string(i64 %21)
  store i8* %22, i8** %9, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i8* @ERR_reason_error_string(i64 %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @ERR_TXT_STRING, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %34

34:                                               ; preds = %33, %28
  %35 = bitcast i32* %5 to i8*
  %36 = call i8* @OPENSSL_buf2hexstr(i8* %35, i32 4)
  store i8* %36, i8** %8, align 8
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @BIO_snprintf(i8* %37, i32 4096, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %38, i8* %39, i8* %40, i8* %41, i8* %42, i32 %43, i8* %44)
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @OPENSSL_free(i8* %46)
  %48 = load i32 (i8*, i64, i8*)*, i32 (i8*, i64, i8*)** %3, align 8
  %49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %51 = call i64 @strlen(i8* %50)
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 %48(i8* %49, i64 %51, i8* %52)
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %34
  br label %57

56:                                               ; preds = %34
  br label %17

57:                                               ; preds = %55, %17
  ret void
}

declare dso_local i32 @CRYPTO_THREAD_get_current_id(...) #1

declare dso_local i64 @ERR_get_error_all(i8**, i32*, i8**, i8**, i32*) #1

declare dso_local i8* @ERR_lib_error_string(i64) #1

declare dso_local i8* @ERR_reason_error_string(i64) #1

declare dso_local i8* @OPENSSL_buf2hexstr(i8*, i32) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
