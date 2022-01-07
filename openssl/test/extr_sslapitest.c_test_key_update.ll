; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_key_update.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_key_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_key_update.mess = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [15 x i8] c"A test message\00", align 1
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@NUM_KEY_UPDATE_MESSAGES = common dso_local global i32 0, align 4
@SSL_KEY_UPDATE_NOT_REQUESTED = common dso_local global i32 0, align 4
@SSL_KEY_UPDATE_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_key_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_key_update() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [20 x i8], align 16
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = call i32 (...) @TLS_server_method()
  %10 = call i32 (...) @TLS_client_method()
  %11 = load i32, i32* @TLS1_3_VERSION, align 4
  %12 = load i32, i32* @cert, align 4
  %13 = load i32, i32* @privkey, align 4
  %14 = call i32 @create_ssl_ctx_pair(i32 %9, i32 %10, i32 %11, i32 0, i32** %2, i32** %1, i32 %12, i32 %13)
  %15 = call i32 @TEST_true(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %0
  %18 = load i32*, i32** %2, align 8
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @create_ssl_objects(i32* %18, i32* %19, i32** %4, i32** %3, i32* null, i32* null)
  %21 = call i32 @TEST_true(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @SSL_ERROR_NONE, align 4
  %27 = call i32 @create_ssl_connection(i32* %24, i32* %25, i32 %26)
  %28 = call i32 @TEST_true(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23, %17, %0
  br label %106

31:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %102, %31
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %105

35:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @NUM_KEY_UPDATE_MESSAGES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @SSL_KEY_UPDATE_NOT_REQUESTED, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @SSL_KEY_UPDATE_REQUESTED, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = call i32 @SSL_key_update(i32* %41, i32 %49)
  %51 = call i32 @TEST_true(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @SSL_do_handshake(i32* %54)
  %56 = call i32 @TEST_true(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53, %48
  br label %106

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %36

63:                                               ; preds = %36
  %64 = load i32*, i32** %3, align 8
  %65 = load i8*, i8** @test_key_update.mess, align 8
  %66 = load i8*, i8** @test_key_update.mess, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = call i32 @SSL_write(i32* %64, i8* %65, i32 %67)
  %69 = load i8*, i8** @test_key_update.mess, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = call i32 @TEST_int_eq(i32 %68, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %76 = call i32 @SSL_read(i32* %74, i8* %75, i32 20)
  %77 = load i8*, i8** @test_key_update.mess, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = call i32 @TEST_int_eq(i32 %76, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73, %63
  br label %106

82:                                               ; preds = %73
  %83 = load i32*, i32** %4, align 8
  %84 = load i8*, i8** @test_key_update.mess, align 8
  %85 = load i8*, i8** @test_key_update.mess, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = call i32 @SSL_write(i32* %83, i8* %84, i32 %86)
  %88 = load i8*, i8** @test_key_update.mess, align 8
  %89 = call i32 @strlen(i8* %88)
  %90 = call i32 @TEST_int_eq(i32 %87, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = load i32*, i32** %3, align 8
  %94 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %95 = call i32 @SSL_read(i32* %93, i8* %94, i32 20)
  %96 = load i8*, i8** @test_key_update.mess, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = call i32 @TEST_int_eq(i32 %95, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %92, %82
  br label %106

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %32

105:                                              ; preds = %32
  store i32 1, i32* %5, align 4
  br label %106

106:                                              ; preds = %105, %100, %81, %58, %30
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @SSL_free(i32* %107)
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @SSL_free(i32* %109)
  %111 = load i32*, i32** %2, align 8
  %112 = call i32 @SSL_CTX_free(i32* %111)
  %113 = load i32*, i32** %1, align 8
  %114 = call i32 @SSL_CTX_free(i32* %113)
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @SSL_key_update(i32*, i32) #1

declare dso_local i32 @SSL_do_handshake(i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_write(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @SSL_read(i32*, i8*, i32) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
