; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_memleaktest.c_main.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_memleaktest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"OPENSSL_DEBUG_MEMORY\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@CRYPTO_MEM_CHECK_ON = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"freeit\00", align 1
@stderr = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @CRYPTO_set_mem_debug(i32 1)
  br label %18

18:                                               ; preds = %16, %12, %2
  %19 = load i32, i32* @CRYPTO_MEM_CHECK_ON, align 4
  %20 = call i32 @CRYPTO_mem_ctrl(i32 %19)
  %21 = call i8* @OPENSSL_malloc(i32 3)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @TEST_ptr(i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %26, i32* %3, align 4
  br label %64

27:                                               ; preds = %18
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @OPENSSL_free(i8* %39)
  store i8* null, i8** %7, align 8
  br label %41

41:                                               ; preds = %38, %32, %27
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 @CRYPTO_mem_leaks_fp(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @TEST_int_ne(i32 %44, i32 -1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %48, i32* %3, align 4
  br label %64

49:                                               ; preds = %41
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ne i8* %50, null
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i64 @TEST_int_eq(i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @EXIT_FAILURE, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %47, %25
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @CRYPTO_set_mem_debug(i32) #1

declare dso_local i32 @CRYPTO_mem_ctrl(i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @CRYPTO_mem_leaks_fp(i32) #1

declare dso_local i32 @TEST_int_ne(i32, i32) #1

declare dso_local i64 @TEST_int_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
