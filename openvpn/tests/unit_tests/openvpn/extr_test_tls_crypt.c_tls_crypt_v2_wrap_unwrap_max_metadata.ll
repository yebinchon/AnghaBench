; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_v2_wrap_unwrap_max_metadata.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_v2_wrap_unwrap_max_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_tls_crypt_v2_context = type { i32, %struct.TYPE_3__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.buffer = type { i32 }
%struct.key2 = type { i32, i32 }
%struct.tls_wrap_ctx = type { i32, i32 }

@TLS_CRYPT_V2_MAX_METADATA_LEN = common dso_local global i32 0, align 4
@TLS_WRAP_CRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @tls_crypt_v2_wrap_unwrap_max_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_crypt_v2_wrap_unwrap_max_metadata(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_tls_crypt_v2_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.buffer, align 4
  %6 = alloca %struct.key2, align 4
  %7 = alloca %struct.tls_wrap_ctx, align 4
  store i8** %0, i8*** %2, align 8
  %8 = load i8**, i8*** %2, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.test_tls_crypt_v2_context*
  store %struct.test_tls_crypt_v2_context* %10, %struct.test_tls_crypt_v2_context** %3, align 8
  %11 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %12 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %11, i32 0, i32 2
  %13 = load i32, i32* @TLS_CRYPT_V2_MAX_METADATA_LEN, align 4
  %14 = call i32* @buf_write_alloc(i32* %12, i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @TLS_CRYPT_V2_MAX_METADATA_LEN, align 4
  %17 = call i32 @rand_bytes(i32* %15, i32 %16)
  %18 = call i32 @assert_true(i32 %17)
  %19 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %20 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %19, i32 0, i32 0
  %21 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %22 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %21, i32 0, i32 3
  %23 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %24 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %23, i32 0, i32 2
  %25 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %26 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %29 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %28, i32 0, i32 4
  %30 = call i32 @tls_crypt_v2_wrap_client_key(i32* %20, %struct.TYPE_4__* %22, i32* %24, i32* %27, i32* %29)
  %31 = call i32 @assert_true(i32 %30)
  %32 = load i32, i32* @TLS_CRYPT_V2_MAX_METADATA_LEN, align 4
  %33 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %34 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %33, i32 0, i32 4
  %35 = call i32 @alloc_buf_gc(i32 %32, i32* %34)
  %36 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = bitcast %struct.key2* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %37, i8 0, i64 8, i1 false)
  %38 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %39 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %42 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = call i32 @tls_crypt_v2_unwrap_client_key(%struct.key2* %6, %struct.buffer* %5, i32 %40, i32* %43)
  %45 = call i32 @assert_true(i32 %44)
  %46 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %47 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.key2, %struct.key2* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @memcmp(i32 %49, i32 %51, i32 4)
  %53 = icmp eq i64 0, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert_true(i32 %54)
  %56 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %57 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %56, i32 0, i32 2
  %58 = call i32 @buf_equal(i32* %57, %struct.buffer* %5)
  %59 = call i32 @assert_true(i32 %58)
  %60 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %7, i32 0, i32 0
  %61 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %62 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %60, align 4
  %65 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %7, i32 0, i32 1
  %66 = load i32, i32* @TLS_WRAP_CRYPT, align 4
  store i32 %66, i32* %65, align 4
  %67 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %68 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %67, i32 0, i32 0
  %69 = call i32 @tls_crypt_v2_extract_client_key(i32* %68, %struct.tls_wrap_ctx* %7, i32* null)
  %70 = call i32 @assert_true(i32 %69)
  %71 = call i32 @tls_wrap_free(%struct.tls_wrap_ctx* %7)
  ret void
}

declare dso_local i32* @buf_write_alloc(i32*, i32) #1

declare dso_local i32 @assert_true(i32) #1

declare dso_local i32 @rand_bytes(i32*, i32) #1

declare dso_local i32 @tls_crypt_v2_wrap_client_key(i32*, %struct.TYPE_4__*, i32*, i32*, i32*) #1

declare dso_local i32 @alloc_buf_gc(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @tls_crypt_v2_unwrap_client_key(%struct.key2*, %struct.buffer*, i32, i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @buf_equal(i32*, %struct.buffer*) #1

declare dso_local i32 @tls_crypt_v2_extract_client_key(i32*, %struct.tls_wrap_ctx*, i32*) #1

declare dso_local i32 @tls_wrap_free(%struct.tls_wrap_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
