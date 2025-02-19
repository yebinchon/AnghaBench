; ModuleID = '/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_file_get_pass.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_file_get_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_STORE_F_FILE_GET_PASS = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"pass phrase\00", align 1
@UI_INPUT_FLAG_DEFAULT_PWD = common dso_local global i32 0, align 4
@ERR_R_UI_LIB = common dso_local global i32 0, align 4
@OSSL_STORE_R_UI_PROCESS_INTERRUPTED_OR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i64, i8*, i8*)* @file_get_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @file_get_pass(i32* %0, i8* %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = call i32* (...) @UI_new()
  store i32* %14, i32** %12, align 8
  store i8* null, i8** %13, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i32, i32* @OSSL_STORE_F_FILE_GET_PASS, align 4
  %19 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %20 = call i32 @OSSL_STOREerr(i32 %18, i32 %19)
  store i8* null, i8** %6, align 8
  br label %73

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32*, i32** %12, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @UI_set_method(i32* %25, i32* %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32*, i32** %12, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @UI_add_user_data(i32* %29, i8* %30)
  %32 = load i32*, i32** %12, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i8* @UI_construct_prompt(i32* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %33)
  store i8* %34, i8** %13, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @OSSL_STORE_F_FILE_GET_PASS, align 4
  %38 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %39 = call i32 @OSSL_STOREerr(i32 %37, i32 %38)
  store i8* null, i8** %8, align 8
  br label %67

40:                                               ; preds = %28
  %41 = load i32*, i32** %12, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* @UI_INPUT_FLAG_DEFAULT_PWD, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub i64 %45, 1
  %47 = call i32 @UI_add_input_string(i32* %41, i8* %42, i32 %43, i8* %44, i32 0, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @OSSL_STORE_F_FILE_GET_PASS, align 4
  %51 = load i32, i32* @ERR_R_UI_LIB, align 4
  %52 = call i32 @OSSL_STOREerr(i32 %50, i32 %51)
  store i8* null, i8** %8, align 8
  br label %66

53:                                               ; preds = %40
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @UI_process(i32* %54)
  switch i32 %55, label %64 [
    i32 -2, label %56
    i32 -1, label %60
  ]

56:                                               ; preds = %53
  %57 = load i32, i32* @OSSL_STORE_F_FILE_GET_PASS, align 4
  %58 = load i32, i32* @OSSL_STORE_R_UI_PROCESS_INTERRUPTED_OR_CANCELLED, align 4
  %59 = call i32 @OSSL_STOREerr(i32 %57, i32 %58)
  store i8* null, i8** %8, align 8
  br label %65

60:                                               ; preds = %53
  %61 = load i32, i32* @OSSL_STORE_F_FILE_GET_PASS, align 4
  %62 = load i32, i32* @ERR_R_UI_LIB, align 4
  %63 = call i32 @OSSL_STOREerr(i32 %61, i32 %62)
  store i8* null, i8** %8, align 8
  br label %65

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %60, %56
  br label %66

66:                                               ; preds = %65, %49
  br label %67

67:                                               ; preds = %66, %36
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @OPENSSL_free(i8* %68)
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @UI_free(i32* %70)
  %72 = load i8*, i8** %8, align 8
  store i8* %72, i8** %6, align 8
  br label %73

73:                                               ; preds = %67, %17
  %74 = load i8*, i8** %6, align 8
  ret i8* %74
}

declare dso_local i32* @UI_new(...) #1

declare dso_local i32 @OSSL_STOREerr(i32, i32) #1

declare dso_local i32 @UI_set_method(i32*, i32*) #1

declare dso_local i32 @UI_add_user_data(i32*, i8*) #1

declare dso_local i8* @UI_construct_prompt(i32*, i8*, i8*) #1

declare dso_local i32 @UI_add_input_string(i32*, i8*, i32, i8*, i32, i64) #1

declare dso_local i32 @UI_process(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @UI_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
