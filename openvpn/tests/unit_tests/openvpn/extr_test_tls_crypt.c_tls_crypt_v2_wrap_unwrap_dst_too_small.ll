; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_v2_wrap_unwrap_dst_too_small.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_v2_wrap_unwrap_dst_too_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_tls_crypt_v2_context = type { i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.key2 = type { i32 }
%struct.buffer = type { i32 }

@TLS_CRYPT_V2_MAX_METADATA_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @tls_crypt_v2_wrap_unwrap_dst_too_small to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_crypt_v2_wrap_unwrap_dst_too_small(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_tls_crypt_v2_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.key2, align 4
  %6 = alloca %struct.buffer, align 4
  %7 = alloca %struct.key2, align 4
  store i8** %0, i8*** %2, align 8
  %8 = load i8**, i8*** %2, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.test_tls_crypt_v2_context*
  store %struct.test_tls_crypt_v2_context* %10, %struct.test_tls_crypt_v2_context** %3, align 8
  %11 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %12 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %11, i32 0, i32 4
  %13 = load i64, i64* @TLS_CRYPT_V2_MAX_METADATA_LEN, align 8
  %14 = call i32* @buf_write_alloc(i32* %12, i64 %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* @TLS_CRYPT_V2_MAX_METADATA_LEN, align 8
  %17 = call i32 @rand_bytes(i32* %15, i64 %16)
  %18 = call i32 @assert_true(i32 %17)
  %19 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %20 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %19, i32 0, i32 2
  %21 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %22 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %21, i32 0, i32 5
  %23 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %24 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %23, i32 0, i32 4
  %25 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %26 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %29 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %28, i32 0, i32 3
  %30 = call i32 @tls_crypt_v2_wrap_client_key(i32* %20, i32* %22, i32* %24, i32* %27, i32* %29)
  %31 = call i32 @assert_true(i32 %30)
  %32 = bitcast %struct.key2* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 4, i1 false)
  %33 = load i64, i64* @TLS_CRYPT_V2_MAX_METADATA_LEN, align 8
  %34 = sub nsw i64 %33, 1
  %35 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %36 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %35, i32 0, i32 3
  %37 = call i32 @alloc_buf_gc(i64 %34, i32* %36)
  %38 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %40 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %43 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @tls_crypt_v2_unwrap_client_key(%struct.key2* %5, %struct.buffer* %6, i32 %41, i32* %44)
  %46 = call i32 @assert_false(i32 %45)
  %47 = bitcast %struct.key2* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %47, i8 0, i64 4, i1 false)
  %48 = call i64 @memcmp(%struct.key2* %5, %struct.key2* %7, i32 4)
  %49 = icmp eq i64 0, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert_true(i32 %50)
  %52 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %53 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %52, i32 0, i32 0
  %54 = call i64 @BLEN(i32* %53)
  %55 = icmp eq i64 0, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert_true(i32 %56)
  ret void
}

declare dso_local i32* @buf_write_alloc(i32*, i64) #1

declare dso_local i32 @assert_true(i32) #1

declare dso_local i32 @rand_bytes(i32*, i64) #1

declare dso_local i32 @tls_crypt_v2_wrap_client_key(i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @alloc_buf_gc(i64, i32*) #1

declare dso_local i32 @assert_false(i32) #1

declare dso_local i32 @tls_crypt_v2_unwrap_client_key(%struct.key2*, %struct.buffer*, i32, i32*) #1

declare dso_local i64 @memcmp(%struct.key2*, %struct.key2*, i32) #1

declare dso_local i64 @BLEN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
