; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tls_crypt.c_tls_crypt_v2_write_client_key_file.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tls_crypt.c_tls_crypt_v2_write_client_key_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key2 = type { i32, i32* }
%struct.gc_arena = type { i32 }
%struct.key_ctx = type { i32 }
%struct.buffer = type { i32 }
%struct.key_ctx_bi = type { i32 }

@TLS_CRYPT_V2_CLIENT_KEY_LEN = common dso_local global i64 0, align 8
@TLS_CRYPT_V2_MAX_WKC_LEN = common dso_local global i64 0, align 8
@__const.tls_crypt_v2_write_client_key_file.client_key = private unnamed_addr constant %struct.key2 { i32 2, i32* null }, align 8
@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ERROR: could not generate random key\00", align 1
@TLS_CRYPT_V2_MAX_METADATA_LEN = common dso_local global i64 0, align 8
@TLS_CRYPT_V2_MAX_B64_METADATA_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"ERROR: metadata too long (%d bytes, max %u bytes)\00", align 1
@TLS_CRYPT_METADATA_TYPE_USER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"ERROR: failed to base64 decode provided metadata\00", align 1
@now = common dso_local global i64 0, align 8
@TLS_CRYPT_METADATA_TYPE_TIMESTAMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"ERROR: could not wrap generated client key\00", align 1
@tls_crypt_v2_cli_pem_name = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"ERROR: could not PEM-encode client key\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@INLINE_FILE_TAG = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [39 x i8] c"ERROR: could not write client key file\00", align 1
@D_GENKEY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"Testing client-side key loading...\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Testing server-side key loading...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_crypt_v2_write_client_key_file(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.gc_arena, align 4
  %10 = alloca %struct.key_ctx, align 4
  %11 = alloca %struct.buffer, align 4
  %12 = alloca %struct.buffer, align 4
  %13 = alloca %struct.key2, align 8
  %14 = alloca %struct.buffer, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.key_ctx_bi, align 4
  %20 = alloca %struct.buffer, align 4
  %21 = alloca %struct.buffer, align 4
  %22 = alloca %struct.key2, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %23 = call i32 (...) @gc_new()
  %24 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %9, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = bitcast %struct.key_ctx* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  %26 = bitcast %struct.buffer* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 4, i1 false)
  %27 = load i64, i64* @TLS_CRYPT_V2_CLIENT_KEY_LEN, align 8
  %28 = load i64, i64* @TLS_CRYPT_V2_MAX_WKC_LEN, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @alloc_buf_gc(i64 %29, %struct.gc_arena* %9)
  %31 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = bitcast %struct.key2* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.key2* @__const.tls_crypt_v2_write_client_key_file.client_key to i8*), i64 16, i1 false)
  %33 = getelementptr inbounds %struct.key2, %struct.key2* %13, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = call i32 @rand_bytes(i8* %35, i32 8)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* @M_FATAL, align 4
  %40 = call i32 (i32, i8*, ...) @msg(i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %147

41:                                               ; preds = %4
  %42 = getelementptr inbounds %struct.key2, %struct.key2* %13, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @buf_write(%struct.buffer* %12, i32* %43, i32 8)
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load i64, i64* @TLS_CRYPT_V2_MAX_METADATA_LEN, align 8
  %47 = call i32 @alloc_buf_gc(i64 %46, %struct.gc_arena* %9)
  %48 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %79

51:                                               ; preds = %41
  %52 = load i64, i64* @TLS_CRYPT_V2_MAX_B64_METADATA_LEN, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @strlen(i8* %53)
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* @M_FATAL, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = trunc i64 %59 to i32
  %61 = load i64, i64* @TLS_CRYPT_V2_MAX_B64_METADATA_LEN, align 8
  %62 = call i32 (i32, i8*, ...) @msg(i32 %57, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %56, %51
  %64 = call i32 @buf_write(%struct.buffer* %14, i32* @TLS_CRYPT_METADATA_TYPE_USER, i32 1)
  %65 = call i32 @ASSERT(i32 %64)
  %66 = load i8*, i8** %6, align 8
  %67 = call i8* @BPTR(%struct.buffer* %14)
  %68 = call i32 @BCAP(%struct.buffer* %14)
  %69 = call i32 @openvpn_base64_decode(i8* %66, i8* %67, i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @M_FATAL, align 4
  %74 = call i32 (i32, i8*, ...) @msg(i32 %73, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %147

75:                                               ; preds = %63
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @buf_inc_len(%struct.buffer* %14, i32 %76)
  %78 = call i32 @ASSERT(i32 %77)
  br label %87

79:                                               ; preds = %41
  %80 = load i64, i64* @now, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @htonll(i32 %81)
  store i32 %82, i32* %16, align 4
  %83 = call i32 @buf_write(%struct.buffer* %14, i32* @TLS_CRYPT_METADATA_TYPE_TIMESTAMP, i32 1)
  %84 = call i32 @ASSERT(i32 %83)
  %85 = call i32 @buf_write(%struct.buffer* %14, i32* %16, i32 4)
  %86 = call i32 @ASSERT(i32 %85)
  br label %87

87:                                               ; preds = %79, %75
  %88 = load i8*, i8** %7, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @tls_crypt_v2_init_server_key(%struct.key_ctx* %10, i32 1, i8* %88, i8* %89)
  %91 = call i32 @tls_crypt_v2_wrap_client_key(%struct.buffer* %12, %struct.key2* %13, %struct.buffer* %14, %struct.key_ctx* %10, %struct.gc_arena* %9)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @M_FATAL, align 4
  %95 = call i32 (i32, i8*, ...) @msg(i32 %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %147

96:                                               ; preds = %87
  %97 = load i32, i32* @tls_crypt_v2_cli_pem_name, align 4
  %98 = call i32 @crypto_pem_encode(i32 %97, %struct.buffer* %11, %struct.buffer* %12, %struct.gc_arena* %9)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @M_FATAL, align 4
  %102 = call i32 (i32, i8*, ...) @msg(i32 %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %147

103:                                              ; preds = %96
  %104 = load i8*, i8** %5, align 8
  store i8* %104, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i8*, i8** %5, align 8
  %109 = call i64 @streq(i8* %108, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107, %103
  %112 = call i8* @BPTR(%struct.buffer* %11)
  %113 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %112)
  %114 = load i8*, i8** @INLINE_FILE_TAG, align 8
  store i8* %114, i8** %17, align 8
  %115 = call i8* @BPTR(%struct.buffer* %11)
  store i8* %115, i8** %18, align 8
  br label %124

116:                                              ; preds = %107
  %117 = load i8*, i8** %5, align 8
  %118 = call i32 @buffer_write_file(i8* %117, %struct.buffer* %11)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* @M_FATAL, align 4
  %122 = call i32 (i32, i8*, ...) @msg(i32 %121, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %147

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %111
  %125 = load i32, i32* @D_GENKEY, align 4
  %126 = call i32 (i32, i8*, ...) @msg(i32 %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %127 = load i8*, i8** %17, align 8
  %128 = load i8*, i8** %18, align 8
  %129 = call i32 @tls_crypt_v2_init_client_key(%struct.key_ctx_bi* %19, %struct.buffer* %20, i8* %127, i8* %128)
  %130 = call i32 @free_key_ctx_bi(%struct.key_ctx_bi* %19)
  %131 = load i64, i64* @TLS_CRYPT_V2_MAX_METADATA_LEN, align 8
  %132 = call i32 @alloc_buf_gc(i64 %131, %struct.gc_arena* %9)
  %133 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  %134 = bitcast %struct.key2* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %134, i8 0, i64 16, i1 false)
  %135 = call i32 @free_key_ctx(%struct.key_ctx* %10)
  %136 = load i8*, i8** %7, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @tls_crypt_v2_init_server_key(%struct.key_ctx* %10, i32 0, i8* %136, i8* %137)
  %139 = load i32, i32* @D_GENKEY, align 4
  %140 = call i32 (i32, i8*, ...) @msg(i32 %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %141 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @tls_crypt_v2_unwrap_client_key(%struct.key2* %22, %struct.buffer* %21, i32 %142, %struct.key_ctx* %10)
  %144 = call i32 @ASSERT(i32 %143)
  %145 = call i32 @secure_memzero(%struct.key2* %22, i32 16)
  %146 = call i32 @free_buf(%struct.buffer* %20)
  br label %147

147:                                              ; preds = %124, %120, %100, %93, %72, %38
  %148 = call i32 @secure_memzero(%struct.key2* %13, i32 16)
  %149 = call i32 @free_key_ctx(%struct.key_ctx* %10)
  %150 = call i32 @buf_clear(%struct.buffer* %11)
  %151 = call i32 @buf_clear(%struct.buffer* %12)
  %152 = call i32 @gc_free(%struct.gc_arena* %9)
  ret void
}

declare dso_local i32 @gc_new(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @alloc_buf_gc(i64, %struct.gc_arena*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rand_bytes(i8*, i32) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_write(%struct.buffer*, i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @openvpn_base64_decode(i8*, i8*, i32) #1

declare dso_local i8* @BPTR(%struct.buffer*) #1

declare dso_local i32 @BCAP(%struct.buffer*) #1

declare dso_local i32 @buf_inc_len(%struct.buffer*, i32) #1

declare dso_local i32 @htonll(i32) #1

declare dso_local i32 @tls_crypt_v2_init_server_key(%struct.key_ctx*, i32, i8*, i8*) #1

declare dso_local i32 @tls_crypt_v2_wrap_client_key(%struct.buffer*, %struct.key2*, %struct.buffer*, %struct.key_ctx*, %struct.gc_arena*) #1

declare dso_local i32 @crypto_pem_encode(i32, %struct.buffer*, %struct.buffer*, %struct.gc_arena*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @buffer_write_file(i8*, %struct.buffer*) #1

declare dso_local i32 @tls_crypt_v2_init_client_key(%struct.key_ctx_bi*, %struct.buffer*, i8*, i8*) #1

declare dso_local i32 @free_key_ctx_bi(%struct.key_ctx_bi*) #1

declare dso_local i32 @free_key_ctx(%struct.key_ctx*) #1

declare dso_local i32 @tls_crypt_v2_unwrap_client_key(%struct.key2*, %struct.buffer*, i32, %struct.key_ctx*) #1

declare dso_local i32 @secure_memzero(%struct.key2*, i32) #1

declare dso_local i32 @free_buf(%struct.buffer*) #1

declare dso_local i32 @buf_clear(%struct.buffer*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
