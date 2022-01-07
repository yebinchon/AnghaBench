; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_early_data_replay_int.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_early_data_replay_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@allow_ed_cb_called = common dso_local global i64 0, align 8
@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@SSL_OP_NO_ANTI_REPLAY = common dso_local global i32 0, align 4
@SSL_CONF_FLAG_FILE = common dso_local global i32 0, align 4
@SSL_CONF_FLAG_SERVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Options\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"-AntiReplay\00", align 1
@allow_early_data_cb = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@MSG1 = common dso_local global i32 0, align 4
@SSL_READ_EARLY_DATA_FINISH = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_REJECTED = common dso_local global i32 0, align 4
@SSL_READ_EARLY_DATA_SUCCESS = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_ACCEPTED = common dso_local global i32 0, align 4
@clientpsk = common dso_local global i32* null, align 8
@serverpsk = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @test_early_data_replay_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_early_data_replay_int(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [20 x i8], align 16
  %17 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i64 0, i64* @allow_ed_cb_called, align 8
  %18 = call i32 (...) @TLS_server_method()
  %19 = call i32 (...) @TLS_client_method()
  %20 = load i32, i32* @TLS1_VERSION, align 4
  %21 = load i32, i32* @cert, align 4
  %22 = load i32, i32* @privkey, align 4
  %23 = call i64 @create_ssl_ctx_pair(i32 %18, i32 %19, i32 %20, i32 0, i32** %9, i32** %8, i32 %21, i32 %22)
  %24 = call i32 @TEST_true(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %216

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @SSL_OP_NO_ANTI_REPLAY, align 4
  %36 = call i32 @SSL_CTX_set_options(i32* %34, i32 %35)
  br label %62

37:                                               ; preds = %30
  %38 = call i32* (...) @SSL_CONF_CTX_new()
  store i32* %38, i32** %17, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = call i32 @TEST_ptr(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %200

43:                                               ; preds = %37
  %44 = load i32*, i32** %17, align 8
  %45 = load i32, i32* @SSL_CONF_FLAG_FILE, align 4
  %46 = load i32, i32* @SSL_CONF_FLAG_SERVER, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @SSL_CONF_CTX_set_flags(i32* %44, i32 %47)
  %49 = load i32*, i32** %17, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @SSL_CONF_CTX_set_ssl_ctx(i32* %49, i32* %50)
  %52 = load i32*, i32** %17, align 8
  %53 = call i64 @SSL_CONF_cmd(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @TEST_int_eq(i64 %53, i32 2)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %43
  %57 = load i32*, i32** %17, align 8
  %58 = call i32 @SSL_CONF_CTX_free(i32* %57)
  br label %200

59:                                               ; preds = %43
  %60 = load i32*, i32** %17, align 8
  %61 = call i32 @SSL_CONF_CTX_free(i32* %60)
  br label %62

62:                                               ; preds = %59, %33
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* @allow_early_data_cb, align 4
  %65 = call i32 @SSL_CTX_set_allow_early_data_cb(i32* %63, i32 %64, i32* %6)
  br label %66

66:                                               ; preds = %62, %27
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @setupearly_data_test(i32** %8, i32** %9, i32** %10, i32** %11, i32** %13, i32 %67)
  %69 = call i32 @TEST_true(i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %200

72:                                               ; preds = %66
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* @SSL_ERROR_NONE, align 4
  %76 = call i64 @create_ssl_connection(i32* %73, i32* %74, i32 %75)
  %77 = call i32 @TEST_true(i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i32*, i32** %10, align 8
  %81 = call i64 @SSL_session_reused(i32* %80)
  %82 = call i32 @TEST_true(i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79, %72
  br label %200

85:                                               ; preds = %79
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @SSL_shutdown(i32* %86)
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @SSL_shutdown(i32* %88)
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @SSL_free(i32* %90)
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @SSL_free(i32* %92)
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = call i64 @create_ssl_objects(i32* %94, i32* %95, i32** %11, i32** %10, i32* null, i32* null)
  %97 = call i32 @TEST_true(i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %85
  %100 = load i32*, i32** %10, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = call i64 @SSL_set_session(i32* %100, i32* %101)
  %103 = call i32 @TEST_true(i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %99, %85
  br label %200

106:                                              ; preds = %99
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* @MSG1, align 4
  %109 = load i32, i32* @MSG1, align 4
  %110 = call i32 @strlen(i32 %109)
  %111 = call i64 @SSL_write_early_data(i32* %107, i32 %108, i32 %110, i64* %15)
  %112 = call i32 @TEST_true(i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load i64, i64* %15, align 8
  %116 = load i32, i32* @MSG1, align 4
  %117 = call i32 @strlen(i32 %116)
  %118 = call i32 @TEST_size_t_eq(i64 %115, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %114, %106
  br label %200

121:                                              ; preds = %114
  %122 = load i32, i32* %6, align 4
  %123 = icmp sle i32 %122, 1
  br i1 %123, label %124, label %139

124:                                              ; preds = %121
  %125 = load i32*, i32** %11, align 8
  %126 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %127 = call i64 @SSL_read_early_data(i32* %125, i8* %126, i32 20, i64* %14)
  %128 = load i32, i32* @SSL_READ_EARLY_DATA_FINISH, align 4
  %129 = call i32 @TEST_int_eq(i64 %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load i32*, i32** %11, align 8
  %133 = call i64 @SSL_get_early_data_status(i32* %132)
  %134 = load i32, i32* @SSL_EARLY_DATA_REJECTED, align 4
  %135 = call i32 @TEST_int_eq(i64 %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %131, %124
  br label %200

138:                                              ; preds = %131
  br label %174

139:                                              ; preds = %121
  %140 = load i32*, i32** %11, align 8
  %141 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %142 = call i64 @SSL_read_early_data(i32* %140, i8* %141, i32 20, i64* %14)
  %143 = load i32, i32* @SSL_READ_EARLY_DATA_SUCCESS, align 4
  %144 = call i32 @TEST_int_eq(i64 %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %139
  %147 = load i32, i32* @MSG1, align 4
  %148 = load i32, i32* @MSG1, align 4
  %149 = call i32 @strlen(i32 %148)
  %150 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %151 = load i64, i64* %14, align 8
  %152 = call i32 @TEST_mem_eq(i32 %147, i32 %149, i8* %150, i64 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %146
  %155 = load i32*, i32** %10, align 8
  %156 = call i32 @SSL_connect(i32* %155)
  %157 = call i32 @TEST_int_gt(i32 %156, i32 0)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %154
  %160 = load i32*, i32** %11, align 8
  %161 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %162 = call i64 @SSL_read_early_data(i32* %160, i8* %161, i32 20, i64* %14)
  %163 = load i32, i32* @SSL_READ_EARLY_DATA_FINISH, align 4
  %164 = call i32 @TEST_int_eq(i64 %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %159
  %167 = load i32*, i32** %11, align 8
  %168 = call i64 @SSL_get_early_data_status(i32* %167)
  %169 = load i32, i32* @SSL_EARLY_DATA_ACCEPTED, align 4
  %170 = call i32 @TEST_int_eq(i64 %168, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %166, %159, %154, %146, %139
  br label %200

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %173, %138
  %175 = load i32*, i32** %11, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* @SSL_ERROR_NONE, align 4
  %178 = call i64 @create_ssl_connection(i32* %175, i32* %176, i32 %177)
  %179 = call i32 @TEST_true(i64 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %198

181:                                              ; preds = %174
  %182 = load i32*, i32** %10, align 8
  %183 = call i64 @SSL_session_reused(i32* %182)
  %184 = load i32, i32* %6, align 4
  %185 = icmp sgt i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 1, i32 0
  %188 = call i32 @TEST_int_eq(i64 %183, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %181
  %191 = load i64, i64* @allow_ed_cb_called, align 8
  %192 = load i32, i32* %6, align 4
  %193 = icmp sgt i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 1, i32 0
  %196 = call i32 @TEST_int_eq(i64 %191, i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %190, %181, %174
  br label %200

199:                                              ; preds = %190
  store i32 1, i32* %12, align 4
  br label %200

200:                                              ; preds = %199, %198, %172, %137, %120, %105, %84, %71, %56, %42
  %201 = load i32*, i32** %13, align 8
  %202 = call i32 @SSL_SESSION_free(i32* %201)
  %203 = load i32*, i32** @clientpsk, align 8
  %204 = call i32 @SSL_SESSION_free(i32* %203)
  %205 = load i32*, i32** @serverpsk, align 8
  %206 = call i32 @SSL_SESSION_free(i32* %205)
  store i32* null, i32** @serverpsk, align 8
  store i32* null, i32** @clientpsk, align 8
  %207 = load i32*, i32** %11, align 8
  %208 = call i32 @SSL_free(i32* %207)
  %209 = load i32*, i32** %10, align 8
  %210 = call i32 @SSL_free(i32* %209)
  %211 = load i32*, i32** %9, align 8
  %212 = call i32 @SSL_CTX_free(i32* %211)
  %213 = load i32*, i32** %8, align 8
  %214 = call i32 @SSL_CTX_free(i32* %213)
  %215 = load i32, i32* %12, align 4
  store i32 %215, i32* %4, align 4
  br label %216

216:                                              ; preds = %200, %26
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @TEST_true(i64) #1

declare dso_local i64 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #1

declare dso_local i32* @SSL_CONF_CTX_new(...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @SSL_CONF_CTX_set_flags(i32*, i32) #1

declare dso_local i32 @SSL_CONF_CTX_set_ssl_ctx(i32*, i32*) #1

declare dso_local i32 @TEST_int_eq(i64, i32) #1

declare dso_local i64 @SSL_CONF_cmd(i32*, i8*, i8*) #1

declare dso_local i32 @SSL_CONF_CTX_free(i32*) #1

declare dso_local i32 @SSL_CTX_set_allow_early_data_cb(i32*, i32, i32*) #1

declare dso_local i64 @setupearly_data_test(i32**, i32**, i32**, i32**, i32**, i32) #1

declare dso_local i64 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i64 @SSL_session_reused(i32*) #1

declare dso_local i32 @SSL_shutdown(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i64 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i64 @SSL_set_session(i32*, i32*) #1

declare dso_local i64 @SSL_write_early_data(i32*, i32, i32, i64*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @TEST_size_t_eq(i64, i32) #1

declare dso_local i64 @SSL_read_early_data(i32*, i8*, i32, i64*) #1

declare dso_local i64 @SSL_get_early_data_status(i32*) #1

declare dso_local i32 @TEST_mem_eq(i32, i32, i8*, i64) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @SSL_connect(i32*) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
