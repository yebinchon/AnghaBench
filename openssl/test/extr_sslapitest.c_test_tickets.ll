; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_tickets.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_tickets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@new_called = common dso_local global i64 0, align 8
@do_cache = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@sesscache = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @test_tickets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_tickets(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* @new_called, align 8
  store i32 1, i32* @do_cache, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @setup_ticket_test(i32 %11, i32 %12, i32** %5, i32** %6)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %121

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @create_ssl_objects(i32* %17, i32* %18, i32** %7, i32** %8, i32* null, i32* null)
  %20 = call i32 @TEST_true(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %121

23:                                               ; preds = %16
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @SSL_ERROR_NONE, align 4
  %27 = call i32 @create_ssl_connection(i32* %24, i32* %25, i32 %26)
  %28 = call i32 @TEST_true(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = load i64, i64* @new_called, align 8
  %33 = call i32 @TEST_int_eq(i32 %31, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %23
  br label %121

36:                                               ; preds = %30
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @SSL_shutdown(i32* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @SSL_shutdown(i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @SSL_free(i32* %41)
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @SSL_free(i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @SSL_CTX_free(i32* %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @SSL_CTX_free(i32* %47)
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* @do_cache, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @setup_ticket_test(i32 %49, i32 %50, i32** %5, i32** %6)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %36
  br label %121

54:                                               ; preds = %36
  %55 = load i32, i32* %4, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @check_resumption(i32 %55, i32* %56, i32* %57, i32 0)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %121

61:                                               ; preds = %54
  store i64 0, i64* @new_called, align 8
  store i32 1, i32* @do_cache, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @SSL_CTX_free(i32* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @SSL_CTX_free(i32* %64)
  store i32* null, i32** %6, align 8
  store i32* null, i32** %5, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @setup_ticket_test(i32 %66, i32 %67, i32** %5, i32** %6)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  br label %121

71:                                               ; preds = %61
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @create_ssl_objects(i32* %72, i32* %73, i32** %7, i32** %8, i32* null, i32* null)
  %75 = call i32 @TEST_true(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br label %121

78:                                               ; preds = %71
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @SSL_set_post_handshake_auth(i32* %79, i32 1)
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* @SSL_ERROR_NONE, align 4
  %84 = call i32 @create_ssl_connection(i32* %81, i32* %82, i32 %83)
  %85 = call i32 @TEST_true(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load i32, i32* %4, align 4
  %89 = load i64, i64* @new_called, align 8
  %90 = call i32 @TEST_int_eq(i32 %88, i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87, %78
  br label %121

93:                                               ; preds = %87
  %94 = load i32*, i32** %7, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @post_handshake_verify(i32* %94, i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32, i32* %4, align 4
  %100 = mul nsw i32 %99, 2
  %101 = load i64, i64* @new_called, align 8
  %102 = call i32 @TEST_int_eq(i32 %100, i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %98, %93
  br label %121

105:                                              ; preds = %98
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 @SSL_shutdown(i32* %106)
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @SSL_shutdown(i32* %108)
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @SSL_free(i32* %110)
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @SSL_free(i32* %112)
  store i32* null, i32** %8, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* @do_cache, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @check_resumption(i32 %114, i32* %115, i32* %116, i32 1)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %105
  br label %121

120:                                              ; preds = %105
  store i32 1, i32* %9, align 4
  br label %121

121:                                              ; preds = %120, %119, %104, %92, %77, %70, %60, %53, %35, %22, %15
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @SSL_free(i32* %122)
  %124 = load i32*, i32** %8, align 8
  %125 = call i32 @SSL_free(i32* %124)
  store i64 0, i64* %10, align 8
  br label %126

126:                                              ; preds = %140, %121
  %127 = load i64, i64* %10, align 8
  %128 = load i32**, i32*** @sesscache, align 8
  %129 = call i64 @OSSL_NELEM(i32** %128)
  %130 = icmp ult i64 %127, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load i32**, i32*** @sesscache, align 8
  %133 = load i64, i64* %10, align 8
  %134 = getelementptr inbounds i32*, i32** %132, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @SSL_SESSION_free(i32* %135)
  %137 = load i32**, i32*** @sesscache, align 8
  %138 = load i64, i64* %10, align 8
  %139 = getelementptr inbounds i32*, i32** %137, i64 %138
  store i32* null, i32** %139, align 8
  br label %140

140:                                              ; preds = %131
  %141 = load i64, i64* %10, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %10, align 8
  br label %126

143:                                              ; preds = %126
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @SSL_CTX_free(i32* %144)
  %146 = load i32*, i32** %6, align 8
  %147 = call i32 @SSL_CTX_free(i32* %146)
  %148 = load i32, i32* %9, align 4
  ret i32 %148
}

declare dso_local i32 @setup_ticket_test(i32, i32, i32**, i32**) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i64) #1

declare dso_local i32 @SSL_shutdown(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

declare dso_local i32 @check_resumption(i32, i32*, i32*, i32) #1

declare dso_local i32 @SSL_set_post_handshake_auth(i32*, i32) #1

declare dso_local i32 @post_handshake_verify(i32*, i32*) #1

declare dso_local i64 @OSSL_NELEM(i32**) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
