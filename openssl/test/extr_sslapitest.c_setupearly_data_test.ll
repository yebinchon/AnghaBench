; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_setupearly_data_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_setupearly_data_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@SSL3_RT_MAX_PLAIN_LENGTH = common dso_local global i32 0, align 4
@use_session_cb = common dso_local global i32 0, align 4
@find_session_cb = common dso_local global i32 0, align 4
@use_session_cb_cnt = common dso_local global i64 0, align 8
@find_session_cb_cnt = common dso_local global i64 0, align 8
@pskid = common dso_local global i32 0, align 4
@srvid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@clientpsk = common dso_local global i32* null, align 8
@serverpsk = common dso_local global i32* null, align 8
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i32**, i32**, i32**, i32)* @setupearly_data_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setupearly_data_test(i32** %0, i32** %1, i32** %2, i32** %3, i32** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load i32**, i32*** %9, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %6
  %18 = call i32 (...) @TLS_server_method()
  %19 = call i32 (...) @TLS_client_method()
  %20 = load i32, i32* @TLS1_VERSION, align 4
  %21 = load i32**, i32*** %9, align 8
  %22 = load i32**, i32*** %8, align 8
  %23 = load i32, i32* @cert, align 4
  %24 = load i32, i32* @privkey, align 4
  %25 = call i32 @create_ssl_ctx_pair(i32 %18, i32 %19, i32 %20, i32 0, i32** %21, i32** %22, i32 %23, i32 %24)
  %26 = call i32 @TEST_true(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %175

29:                                               ; preds = %17, %6
  %30 = load i32**, i32*** %9, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @SSL3_RT_MAX_PLAIN_LENGTH, align 4
  %33 = call i32 @SSL_CTX_set_max_early_data(i32* %31, i32 %32)
  %34 = call i32 @TEST_true(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %175

37:                                               ; preds = %29
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32**, i32*** %8, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @SSL_CTX_set_read_ahead(i32* %42, i32 1)
  %44 = load i32**, i32*** %9, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @SSL_CTX_set_read_ahead(i32* %45, i32 1)
  br label %61

47:                                               ; preds = %37
  %48 = load i32, i32* %13, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32**, i32*** %8, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @use_session_cb, align 4
  %54 = call i32 @SSL_CTX_set_psk_use_session_callback(i32* %52, i32 %53)
  %55 = load i32**, i32*** %9, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @find_session_cb, align 4
  %58 = call i32 @SSL_CTX_set_psk_find_session_callback(i32* %56, i32 %57)
  store i64 0, i64* @use_session_cb_cnt, align 8
  store i64 0, i64* @find_session_cb_cnt, align 8
  %59 = load i32, i32* @pskid, align 4
  store i32 %59, i32* @srvid, align 4
  br label %60

60:                                               ; preds = %50, %47
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i32**, i32*** %9, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = load i32**, i32*** %8, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = load i32**, i32*** %11, align 8
  %67 = load i32**, i32*** %10, align 8
  %68 = call i32 @create_ssl_objects(i32* %63, i32* %65, i32** %66, i32** %67, i32* null, i32* null)
  %69 = call i32 @TEST_true(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %175

72:                                               ; preds = %61
  %73 = load i32, i32* %13, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32**, i32*** %10, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @SSL_set_tlsext_host_name(i32* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %79 = call i32 @TEST_true(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  br label %175

82:                                               ; preds = %75, %72
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %123

85:                                               ; preds = %82
  %86 = load i32**, i32*** %10, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = call i32* @create_a_psk(i32* %87)
  store i32* %88, i32** @clientpsk, align 8
  %89 = load i32*, i32** @clientpsk, align 8
  %90 = call i32 @TEST_ptr(i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %85
  %93 = load i32*, i32** @clientpsk, align 8
  %94 = call i32 @SSL_SESSION_set_max_early_data(i32* %93, i32 256)
  %95 = call i32 @TEST_true(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32*, i32** @clientpsk, align 8
  %99 = call i32 @SSL_SESSION_up_ref(i32* %98)
  %100 = call i32 @TEST_true(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97, %92, %85
  %103 = load i32*, i32** @clientpsk, align 8
  %104 = call i32 @SSL_SESSION_free(i32* %103)
  store i32* null, i32** @clientpsk, align 8
  store i32 0, i32* %7, align 4
  br label %175

105:                                              ; preds = %97
  %106 = load i32*, i32** @clientpsk, align 8
  store i32* %106, i32** @serverpsk, align 8
  %107 = load i32**, i32*** %12, align 8
  %108 = icmp ne i32** %107, null
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load i32*, i32** @clientpsk, align 8
  %111 = call i32 @SSL_SESSION_up_ref(i32* %110)
  %112 = call i32 @TEST_true(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i32*, i32** @clientpsk, align 8
  %116 = call i32 @SSL_SESSION_free(i32* %115)
  %117 = load i32*, i32** @serverpsk, align 8
  %118 = call i32 @SSL_SESSION_free(i32* %117)
  store i32* null, i32** @serverpsk, align 8
  store i32* null, i32** @clientpsk, align 8
  store i32 0, i32* %7, align 4
  br label %175

119:                                              ; preds = %109
  %120 = load i32*, i32** @clientpsk, align 8
  %121 = load i32**, i32*** %12, align 8
  store i32* %120, i32** %121, align 8
  br label %122

122:                                              ; preds = %119, %105
  store i32 1, i32* %7, align 4
  br label %175

123:                                              ; preds = %82
  %124 = load i32**, i32*** %12, align 8
  %125 = icmp eq i32** %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 1, i32* %7, align 4
  br label %175

127:                                              ; preds = %123
  %128 = load i32**, i32*** %11, align 8
  %129 = load i32*, i32** %128, align 8
  %130 = load i32**, i32*** %10, align 8
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @SSL_ERROR_NONE, align 4
  %133 = call i32 @create_ssl_connection(i32* %129, i32* %131, i32 %132)
  %134 = call i32 @TEST_true(i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %127
  store i32 0, i32* %7, align 4
  br label %175

137:                                              ; preds = %127
  %138 = load i32**, i32*** %10, align 8
  %139 = load i32*, i32** %138, align 8
  %140 = call i32* @SSL_get1_session(i32* %139)
  %141 = load i32**, i32*** %12, align 8
  store i32* %140, i32** %141, align 8
  %142 = load i32**, i32*** %10, align 8
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @SSL_shutdown(i32* %143)
  %145 = load i32**, i32*** %11, align 8
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @SSL_shutdown(i32* %146)
  %148 = load i32**, i32*** %11, align 8
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @SSL_free(i32* %149)
  %151 = load i32**, i32*** %10, align 8
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @SSL_free(i32* %152)
  %154 = load i32**, i32*** %10, align 8
  store i32* null, i32** %154, align 8
  %155 = load i32**, i32*** %11, align 8
  store i32* null, i32** %155, align 8
  %156 = load i32**, i32*** %9, align 8
  %157 = load i32*, i32** %156, align 8
  %158 = load i32**, i32*** %8, align 8
  %159 = load i32*, i32** %158, align 8
  %160 = load i32**, i32*** %11, align 8
  %161 = load i32**, i32*** %10, align 8
  %162 = call i32 @create_ssl_objects(i32* %157, i32* %159, i32** %160, i32** %161, i32* null, i32* null)
  %163 = call i32 @TEST_true(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %137
  %166 = load i32**, i32*** %10, align 8
  %167 = load i32*, i32** %166, align 8
  %168 = load i32**, i32*** %12, align 8
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @SSL_set_session(i32* %167, i32* %169)
  %171 = call i32 @TEST_true(i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %165, %137
  store i32 0, i32* %7, align 4
  br label %175

174:                                              ; preds = %165
  store i32 1, i32* %7, align 4
  br label %175

175:                                              ; preds = %174, %173, %136, %126, %122, %114, %102, %81, %71, %36, %28
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_max_early_data(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_read_ahead(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_psk_use_session_callback(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_psk_find_session_callback(i32*, i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @SSL_set_tlsext_host_name(i32*, i8*) #1

declare dso_local i32* @create_a_psk(i32*) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @SSL_SESSION_set_max_early_data(i32*, i32) #1

declare dso_local i32 @SSL_SESSION_up_ref(i32*) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32* @SSL_get1_session(i32*) #1

declare dso_local i32 @SSL_shutdown(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_set_session(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
