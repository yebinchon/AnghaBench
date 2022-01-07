; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tls_crypt.c_tls_crypt_v2_init_client_key.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tls_crypt.c_tls_crypt_v2_init_client_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_ctx_bi = type { i32 }
%struct.buffer = type { i32 }
%struct.key2 = type { i32 }

@TLS_CRYPT_V2_CLIENT_KEY_LEN = common dso_local global i64 0, align 8
@TLS_CRYPT_V2_MAX_WKC_LEN = common dso_local global i64 0, align 8
@tls_crypt_v2_cli_pem_name = common dso_local global i32 0, align 4
@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ERROR: invalid tls-crypt-v2 client key format\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"ERROR: not enough data in tls-crypt-v2 client key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_crypt_v2_init_client_key(%struct.key_ctx_bi* %0, %struct.buffer* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.key_ctx_bi*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.buffer, align 4
  %10 = alloca %struct.key2, align 4
  store %struct.key_ctx_bi* %0, %struct.key_ctx_bi** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i64, i64* @TLS_CRYPT_V2_CLIENT_KEY_LEN, align 8
  %12 = load i64, i64* @TLS_CRYPT_V2_MAX_WKC_LEN, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @alloc_buf(i64 %13)
  %15 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @tls_crypt_v2_cli_pem_name, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @read_pem_key_file(%struct.buffer* %9, i32 %16, i8* %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @M_FATAL, align 4
  %23 = call i32 @msg(i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %4
  %25 = getelementptr inbounds %struct.key2, %struct.key2* %10, i32 0, i32 0
  %26 = call i32 @buf_read(%struct.buffer* %9, i32* %25, i32 4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @M_FATAL, align 4
  %30 = call i32 @msg(i32 %29, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.key_ctx_bi*, %struct.key_ctx_bi** %5, align 8
  %33 = call i32 @tls_crypt_v2_load_client_key(%struct.key_ctx_bi* %32, %struct.key2* %10, i32 0)
  %34 = call i32 @secure_memzero(%struct.key2* %10, i32 4)
  %35 = load %struct.buffer*, %struct.buffer** %6, align 8
  %36 = bitcast %struct.buffer* %35 to i8*
  %37 = bitcast %struct.buffer* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  ret void
}

declare dso_local i32 @alloc_buf(i64) #1

declare dso_local i32 @read_pem_key_file(%struct.buffer*, i32, i8*, i8*) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @buf_read(%struct.buffer*, i32*, i32) #1

declare dso_local i32 @tls_crypt_v2_load_client_key(%struct.key_ctx_bi*, %struct.key2*, i32) #1

declare dso_local i32 @secure_memzero(%struct.key2*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
