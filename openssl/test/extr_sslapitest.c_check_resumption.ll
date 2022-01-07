; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_check_resumption.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_check_resumption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@new_called = common dso_local global i64 0, align 8
@sesscache = common dso_local global i32** null, align 8
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32)* @check_resumption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_resumption(i32 %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %103, %4
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %15, 2
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %106

18:                                               ; preds = %13
  store i64 0, i64* @new_called, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @create_ssl_objects(i32* %19, i32* %20, i32** %10, i32** %11, i32* null, i32* null)
  %22 = call i32 @TEST_true(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load i32*, i32** %11, align 8
  %26 = load i32**, i32*** @sesscache, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @SSL_set_session(i32* %25, i32* %30)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24, %18
  br label %107

35:                                               ; preds = %24
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @SSL_set_post_handshake_auth(i32* %36, i32 1)
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* @SSL_ERROR_NONE, align 4
  %41 = call i32 @create_ssl_connection(i32* %38, i32* %39, i32 %40)
  %42 = call i32 @TEST_true(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %107

45:                                               ; preds = %35
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @SSL_session_reused(i32* %49)
  %51 = call i32 @TEST_true(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i64, i64* @new_called, align 8
  %55 = call i32 @TEST_int_eq(i64 %54, i32 1)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53, %48
  br label %107

58:                                               ; preds = %53
  br label %71

59:                                               ; preds = %45
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @SSL_session_reused(i32* %60)
  %62 = call i32 @TEST_false(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i64, i64* @new_called, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @TEST_int_eq(i64 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64, %59
  br label %107

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %58
  store i64 0, i64* @new_called, align 8
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @post_handshake_verify(i32* %75, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i64, i64* @new_called, align 8
  %81 = call i32 @TEST_int_eq(i64 %80, i32 1)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79, %74
  br label %107

84:                                               ; preds = %79, %71
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @SSL_shutdown(i32* %85)
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @SSL_shutdown(i32* %87)
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @SSL_free(i32* %89)
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @SSL_free(i32* %91)
  store i32* null, i32** %11, align 8
  store i32* null, i32** %10, align 8
  %93 = load i32**, i32*** @sesscache, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @SSL_SESSION_free(i32* %97)
  %99 = load i32**, i32*** @sesscache, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  store i32* null, i32** %102, align 8
  br label %103

103:                                              ; preds = %84
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %13

106:                                              ; preds = %13
  store i32 1, i32* %5, align 4
  br label %112

107:                                              ; preds = %83, %69, %57, %44, %34
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 @SSL_free(i32* %108)
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @SSL_free(i32* %110)
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %107, %106
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @SSL_set_session(i32*, i32*) #1

declare dso_local i32 @SSL_set_post_handshake_auth(i32*, i32) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @SSL_session_reused(i32*) #1

declare dso_local i32 @TEST_int_eq(i64, i32) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @post_handshake_verify(i32*, i32*) #1

declare dso_local i32 @SSL_shutdown(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
