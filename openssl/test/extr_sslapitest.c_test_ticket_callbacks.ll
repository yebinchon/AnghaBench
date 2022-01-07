; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_ticket_callbacks.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_ticket_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tick_key_cb_called = common dso_local global i64 0, align 8
@dec_tick_called = common dso_local global i64 0, align 8
@gen_tick_called = common dso_local global i64 0, align 8
@tick_key_renew = common dso_local global i32 0, align 4
@SSL_TICKET_RETURN_IGNORE = common dso_local global i64 0, align 8
@tick_dec_ret = common dso_local global i64 0, align 8
@SSL_TICKET_RETURN_IGNORE_RENEW = common dso_local global i64 0, align 8
@SSL_TICKET_RETURN_USE = common dso_local global i64 0, align 8
@SSL_TICKET_RETURN_USE_RENEW = common dso_local global i64 0, align 8
@SSL_TICKET_RETURN_ABORT = common dso_local global i64 0, align 8
@TLS1_VERSION = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_OFF = common dso_local global i32 0, align 4
@gen_tick_cb = common dso_local global i32 0, align 4
@dec_tick_cb = common dso_local global i32 0, align 4
@tick_key_cb = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_ticket_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ticket_callbacks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* @tick_key_cb_called, align 8
  store i64 0, i64* @dec_tick_called, align 8
  store i64 0, i64* @gen_tick_called, align 8
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 10
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 11
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %1
  store i32 1, i32* @tick_key_renew, align 4
  br label %16

15:                                               ; preds = %11
  store i32 0, i32* @tick_key_renew, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load i32, i32* %2, align 4
  switch i32 %17, label %26 [
    i32 0, label %18
    i32 1, label %18
    i32 2, label %20
    i32 3, label %20
    i32 4, label %22
    i32 5, label %22
    i32 6, label %24
    i32 7, label %24
  ]

18:                                               ; preds = %16, %16
  %19 = load i64, i64* @SSL_TICKET_RETURN_IGNORE, align 8
  store i64 %19, i64* @tick_dec_ret, align 8
  br label %28

20:                                               ; preds = %16, %16
  %21 = load i64, i64* @SSL_TICKET_RETURN_IGNORE_RENEW, align 8
  store i64 %21, i64* @tick_dec_ret, align 8
  br label %28

22:                                               ; preds = %16, %16
  %23 = load i64, i64* @SSL_TICKET_RETURN_USE, align 8
  store i64 %23, i64* @tick_dec_ret, align 8
  br label %28

24:                                               ; preds = %16, %16
  %25 = load i64, i64* @SSL_TICKET_RETURN_USE_RENEW, align 8
  store i64 %25, i64* @tick_dec_ret, align 8
  br label %28

26:                                               ; preds = %16
  %27 = load i64, i64* @SSL_TICKET_RETURN_ABORT, align 8
  store i64 %27, i64* @tick_dec_ret, align 8
  br label %28

28:                                               ; preds = %26, %24, %22, %20, %18
  %29 = call i32 (...) @TLS_server_method()
  %30 = call i32 (...) @TLS_client_method()
  %31 = load i32, i32* @TLS1_VERSION, align 4
  %32 = load i32, i32* %2, align 4
  %33 = srem i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @TLS1_2_VERSION, align 4
  br label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @TLS1_3_VERSION, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load i32, i32* @cert, align 4
  %42 = load i32, i32* @privkey, align 4
  %43 = call i32 @create_ssl_ctx_pair(i32 %29, i32 %30, i32 %31, i32 %40, i32** %4, i32** %3, i32 %41, i32 %42)
  %44 = call i32 @TEST_true(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %176

47:                                               ; preds = %39
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @SSL_SESS_CACHE_OFF, align 4
  %50 = call i32 @SSL_CTX_set_session_cache_mode(i32* %48, i32 %49)
  %51 = call i32 @TEST_true(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %176

54:                                               ; preds = %47
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @gen_tick_cb, align 4
  %57 = load i32, i32* @dec_tick_cb, align 4
  %58 = call i32 @SSL_CTX_set_session_ticket_cb(i32* %55, i32 %56, i32 %57, i32* null)
  %59 = call i32 @TEST_true(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %176

62:                                               ; preds = %54
  %63 = load i32, i32* %2, align 4
  %64 = icmp sge i32 %63, 8
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @tick_key_cb, align 4
  %68 = call i32 @SSL_CTX_set_tlsext_ticket_key_cb(i32* %66, i32 %67)
  %69 = call i32 @TEST_true(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %176

72:                                               ; preds = %65, %62
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @create_ssl_objects(i32* %73, i32* %74, i32** %6, i32** %5, i32* null, i32* null)
  %76 = call i32 @TEST_true(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* @SSL_ERROR_NONE, align 4
  %82 = call i32 @create_ssl_connection(i32* %79, i32* %80, i32 %81)
  %83 = call i32 @TEST_true(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78, %72
  br label %176

86:                                               ; preds = %78
  %87 = load i64, i64* @gen_tick_called, align 8
  %88 = call i32 @TEST_int_eq(i64 %87, i32 1)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i64, i64* @dec_tick_called, align 8
  %92 = load i32, i32* %2, align 4
  %93 = srem i32 %92, 2
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  %97 = call i32 @TEST_int_eq(i64 %91, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %90, %86
  br label %176

100:                                              ; preds = %90
  store i64 0, i64* @dec_tick_called, align 8
  store i64 0, i64* @gen_tick_called, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call i32* @SSL_get1_session(i32* %101)
  store i32* %102, i32** %7, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @SSL_shutdown(i32* %103)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @SSL_shutdown(i32* %105)
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @SSL_free(i32* %107)
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @SSL_free(i32* %109)
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @create_ssl_objects(i32* %111, i32* %112, i32** %6, i32** %5, i32* null, i32* null)
  %114 = call i32 @TEST_true(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %100
  %117 = load i32*, i32** %5, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @SSL_set_session(i32* %117, i32* %118)
  %120 = call i32 @TEST_true(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %116
  %123 = load i32*, i32** %6, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* @SSL_ERROR_NONE, align 4
  %126 = call i32 @create_ssl_connection(i32* %123, i32* %124, i32 %125)
  %127 = call i32 @TEST_true(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %122, %116, %100
  br label %176

130:                                              ; preds = %122
  %131 = load i64, i64* @tick_dec_ret, align 8
  %132 = load i64, i64* @SSL_TICKET_RETURN_IGNORE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* @tick_dec_ret, align 8
  %136 = load i64, i64* @SSL_TICKET_RETURN_IGNORE_RENEW, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134, %130
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @SSL_session_reused(i32* %139)
  %141 = call i32 @TEST_false(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  br label %176

144:                                              ; preds = %138
  br label %152

145:                                              ; preds = %134
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @SSL_session_reused(i32* %146)
  %148 = call i32 @TEST_true(i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  br label %176

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %151, %144
  %153 = load i64, i64* @gen_tick_called, align 8
  %154 = load i32, i32* @tick_key_renew, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %152
  %157 = load i64, i64* @tick_dec_ret, align 8
  %158 = load i64, i64* @SSL_TICKET_RETURN_IGNORE_RENEW, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = load i64, i64* @tick_dec_ret, align 8
  %162 = load i64, i64* @SSL_TICKET_RETURN_USE_RENEW, align 8
  %163 = icmp eq i64 %161, %162
  br label %164

164:                                              ; preds = %160, %156, %152
  %165 = phi i1 [ true, %156 ], [ true, %152 ], [ %163, %160 ]
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 1, i32 0
  %168 = call i32 @TEST_int_eq(i64 %153, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i64, i64* @dec_tick_called, align 8
  %172 = call i32 @TEST_int_eq(i64 %171, i32 1)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %170, %164
  br label %176

175:                                              ; preds = %170
  store i32 1, i32* %8, align 4
  br label %176

176:                                              ; preds = %175, %174, %150, %143, %129, %99, %85, %71, %61, %53, %46
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @SSL_SESSION_free(i32* %177)
  %179 = load i32*, i32** %6, align 8
  %180 = call i32 @SSL_free(i32* %179)
  %181 = load i32*, i32** %5, align 8
  %182 = call i32 @SSL_free(i32* %181)
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 @SSL_CTX_free(i32* %183)
  %185 = load i32*, i32** %3, align 8
  %186 = call i32 @SSL_CTX_free(i32* %185)
  %187 = load i32, i32* %8, align 4
  ret i32 %187
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_session_cache_mode(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_session_ticket_cb(i32*, i32, i32, i32*) #1

declare dso_local i32 @SSL_CTX_set_tlsext_ticket_key_cb(i32*, i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @TEST_int_eq(i64, i32) #1

declare dso_local i32* @SSL_get1_session(i32*) #1

declare dso_local i32 @SSL_shutdown(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_set_session(i32*, i32*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @SSL_session_reused(i32*) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
