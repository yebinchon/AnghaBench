; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_info_callback.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_info_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_2_VERSION = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@info_cb_failed = common dso_local global i64 0, align 8
@info_cb_this_state = common dso_local global i32 0, align 4
@info_cb_offset = common dso_local global i32 0, align 4
@sslapi_info_callback = common dso_local global i32 0, align 4
@MSG1 = common dso_local global i32 0, align 4
@SSL_READ_EARLY_DATA_SUCCESS = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_ACCEPTED = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_info_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_info_callback(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [80 x i8], align 16
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @TLS1_2_VERSION, align 4
  store i32 %17, i32* %9, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @TLS1_3_VERSION, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %18, %16
  store i64 0, i64* @info_cb_failed, align 8
  store i32 -1, i32* @info_cb_this_state, align 4
  %21 = load i32, i32* %2, align 4
  store i32 %21, i32* @info_cb_offset, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp sge i32 %22, 4
  br i1 %23, label %24, label %90

24:                                               ; preds = %20
  store i32* null, i32** %10, align 8
  %25 = call i32 @setupearly_data_test(i32** %3, i32** %4, i32** %5, i32** %6, i32** %10, i32 0)
  %26 = call i32 @TEST_true(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %170

29:                                               ; preds = %24
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @SSL_SESSION_free(i32* %30)
  %32 = load i32, i32* %2, align 4
  %33 = srem i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  br label %39

37:                                               ; preds = %29
  %38 = load i32*, i32** %5, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32* [ %36, %35 ], [ %38, %37 ]
  %41 = load i32, i32* @sslapi_info_callback, align 4
  %42 = call i32 @SSL_set_info_callback(i32* %40, i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @MSG1, align 4
  %45 = load i32, i32* @MSG1, align 4
  %46 = call i32 @strlen(i32 %45)
  %47 = call i32 @SSL_write_early_data(i32* %43, i32 %44, i32 %46, i64* %11)
  %48 = call i32 @TEST_true(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %39
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* @MSG1, align 4
  %53 = call i32 @strlen(i32 %52)
  %54 = call i32 @TEST_size_t_eq(i64 %51, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %88

56:                                               ; preds = %50
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %59 = call i32 @SSL_read_early_data(i32* %57, i8* %58, i32 80, i64* %12)
  %60 = load i32, i32* @SSL_READ_EARLY_DATA_SUCCESS, align 4
  %61 = call i32 @TEST_int_eq(i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %56
  %64 = load i32, i32* @MSG1, align 4
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %67 = load i32, i32* @MSG1, align 4
  %68 = call i32 @strlen(i32 %67)
  %69 = call i32 @TEST_mem_eq(i32 %64, i64 %65, i8* %66, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %63
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @SSL_get_early_data_status(i32* %72)
  %74 = load i32, i32* @SSL_EARLY_DATA_ACCEPTED, align 4
  %75 = call i32 @TEST_int_eq(i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* @SSL_ERROR_NONE, align 4
  %81 = call i32 @create_ssl_connection(i32* %78, i32* %79, i32 %80)
  %82 = call i32 @TEST_true(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i64, i64* @info_cb_failed, align 8
  %86 = call i32 @TEST_false(i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84, %77, %71, %63, %56, %50, %39
  br label %170

89:                                               ; preds = %84
  store i32 1, i32* %8, align 4
  br label %170

90:                                               ; preds = %20
  %91 = call i32 (...) @TLS_server_method()
  %92 = call i32 (...) @TLS_client_method()
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @cert, align 4
  %96 = load i32, i32* @privkey, align 4
  %97 = call i32 @create_ssl_ctx_pair(i32 %91, i32 %92, i32 %93, i32 %94, i32** %4, i32** %3, i32 %95, i32 %96)
  %98 = call i32 @TEST_true(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %90
  br label %170

101:                                              ; preds = %90
  %102 = load i32, i32* %2, align 4
  %103 = srem i32 %102, 2
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32*, i32** %4, align 8
  br label %109

107:                                              ; preds = %101
  %108 = load i32*, i32** %3, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32* [ %106, %105 ], [ %108, %107 ]
  %111 = load i32, i32* @sslapi_info_callback, align 4
  %112 = call i32 @SSL_CTX_set_info_callback(i32* %110, i32 %111)
  %113 = load i32*, i32** %4, align 8
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @create_ssl_objects(i32* %113, i32* %114, i32** %6, i32** %5, i32* null, i32* null)
  %116 = call i32 @TEST_true(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %109
  %119 = load i32*, i32** %6, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* @SSL_ERROR_NONE, align 4
  %122 = call i32 @create_ssl_connection(i32* %119, i32* %120, i32 %121)
  %123 = call i32 @TEST_true(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i64, i64* @info_cb_failed, align 8
  %127 = call i32 @TEST_false(i64 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125, %118, %109
  br label %170

130:                                              ; preds = %125
  %131 = load i32*, i32** %5, align 8
  %132 = call i32* @SSL_get1_session(i32* %131)
  store i32* %132, i32** %7, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @SSL_shutdown(i32* %133)
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @SSL_shutdown(i32* %135)
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 @SSL_free(i32* %137)
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @SSL_free(i32* %139)
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %141 = load i32*, i32** %4, align 8
  %142 = load i32*, i32** %3, align 8
  %143 = call i32 @create_ssl_objects(i32* %141, i32* %142, i32** %6, i32** %5, i32* null, i32* null)
  %144 = call i32 @TEST_true(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %168

146:                                              ; preds = %130
  %147 = load i32*, i32** %5, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 @SSL_set_session(i32* %147, i32* %148)
  %150 = call i32 @TEST_true(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %146
  %153 = load i32*, i32** %6, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* @SSL_ERROR_NONE, align 4
  %156 = call i32 @create_ssl_connection(i32* %153, i32* %154, i32 %155)
  %157 = call i32 @TEST_true(i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %152
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @SSL_session_reused(i32* %160)
  %162 = call i32 @TEST_true(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load i64, i64* @info_cb_failed, align 8
  %166 = call i32 @TEST_false(i64 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %164, %159, %152, %146, %130
  br label %170

169:                                              ; preds = %164
  store i32 1, i32* %8, align 4
  br label %170

170:                                              ; preds = %169, %168, %129, %100, %89, %88, %28
  %171 = load i32*, i32** %6, align 8
  %172 = call i32 @SSL_free(i32* %171)
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @SSL_free(i32* %173)
  %175 = load i32*, i32** %7, align 8
  %176 = call i32 @SSL_SESSION_free(i32* %175)
  %177 = load i32*, i32** %4, align 8
  %178 = call i32 @SSL_CTX_free(i32* %177)
  %179 = load i32*, i32** %3, align 8
  %180 = call i32 @SSL_CTX_free(i32* %179)
  %181 = load i32, i32* %8, align 4
  ret i32 %181
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @setupearly_data_test(i32**, i32**, i32**, i32**, i32**, i32) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32 @SSL_set_info_callback(i32*, i32) #1

declare dso_local i32 @SSL_write_early_data(i32*, i32, i32, i64*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @TEST_size_t_eq(i64, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_read_early_data(i32*, i8*, i32, i64*) #1

declare dso_local i32 @TEST_mem_eq(i32, i64, i8*, i32) #1

declare dso_local i32 @SSL_get_early_data_status(i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @TEST_false(i64) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_info_callback(i32*, i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32* @SSL_get1_session(i32*) #1

declare dso_local i32 @SSL_shutdown(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_set_session(i32*, i32*) #1

declare dso_local i32 @SSL_session_reused(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
