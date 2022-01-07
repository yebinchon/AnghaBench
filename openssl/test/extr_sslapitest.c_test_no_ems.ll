; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_no_ems.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_no_ems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_VERSION = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to create SSL_CTX pair\0A\00", align 1
@SSL_OP_NO_EXTENDED_MASTER_SECRET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to create SSL objects\0A\00", align 1
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Creating SSL connection failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Server reports Extended Master Secret support\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Client reports Extended Master Secret support\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_no_ems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_no_ems() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @TLS_server_method()
  %7 = call i32 (...) @TLS_client_method()
  %8 = load i32, i32* @TLS1_VERSION, align 4
  %9 = load i32, i32* @TLS1_2_VERSION, align 4
  %10 = load i32, i32* @cert, align 4
  %11 = load i32, i32* @privkey, align 4
  %12 = call i32 @create_ssl_ctx_pair(i32 %6, i32 %7, i32 %8, i32 %9, i32** %2, i32** %1, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %47

16:                                               ; preds = %0
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @SSL_OP_NO_EXTENDED_MASTER_SECRET, align 4
  %19 = call i32 @SSL_CTX_set_options(i32* %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @create_ssl_objects(i32* %20, i32* %21, i32** %4, i32** %3, i32* null, i32* null)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %47

26:                                               ; preds = %16
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @SSL_ERROR_NONE, align 4
  %30 = call i32 @create_ssl_connection(i32* %27, i32* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %47

34:                                               ; preds = %26
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @SSL_get_extms_support(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %47

40:                                               ; preds = %34
  %41 = load i32*, i32** %3, align 8
  %42 = call i64 @SSL_get_extms_support(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %47

46:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %44, %38, %32, %24, %14
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @SSL_free(i32* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @SSL_free(i32* %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @SSL_CTX_free(i32* %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @SSL_CTX_free(i32* %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i64 @SSL_get_extms_support(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
