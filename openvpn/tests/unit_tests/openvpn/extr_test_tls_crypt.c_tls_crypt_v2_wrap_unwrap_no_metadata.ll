; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_v2_wrap_unwrap_no_metadata.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_v2_wrap_unwrap_no_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_tls_crypt_v2_context = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.buffer = type { i32 }
%struct.key2 = type { i32, i32 }

@TLS_CRYPT_V2_MAX_WKC_LEN = common dso_local global i32 0, align 4
@TLS_CRYPT_V2_MAX_METADATA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @tls_crypt_v2_wrap_unwrap_no_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_crypt_v2_wrap_unwrap_no_metadata(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_tls_crypt_v2_context*, align 8
  %4 = alloca %struct.buffer, align 4
  %5 = alloca %struct.buffer, align 4
  %6 = alloca %struct.key2, align 4
  store i8** %0, i8*** %2, align 8
  %7 = load i8**, i8*** %2, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = bitcast i8* %8 to %struct.test_tls_crypt_v2_context*
  store %struct.test_tls_crypt_v2_context* %9, %struct.test_tls_crypt_v2_context** %3, align 8
  %10 = load i32, i32* @TLS_CRYPT_V2_MAX_WKC_LEN, align 4
  %11 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %12 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %11, i32 0, i32 2
  %13 = call i32 @alloc_buf_gc(i32 %10, i32* %12)
  %14 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %16 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %15, i32 0, i32 0
  %17 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %18 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %17, i32 0, i32 3
  %19 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %20 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %23 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %22, i32 0, i32 2
  %24 = call i32 @tls_crypt_v2_wrap_client_key(%struct.buffer* %4, %struct.TYPE_4__* %16, i32* %18, i32* %21, i32* %23)
  %25 = call i32 @assert_true(i32 %24)
  %26 = load i32, i32* @TLS_CRYPT_V2_MAX_METADATA_LEN, align 4
  %27 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %28 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %27, i32 0, i32 2
  %29 = call i32 @alloc_buf_gc(i32 %26, i32* %28)
  %30 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = bitcast %struct.key2* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 8, i1 false)
  %32 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %33 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @tls_crypt_v2_unwrap_client_key(%struct.key2* %6, %struct.buffer* %5, i32 %36, i32* %34)
  %38 = call i32 @assert_true(i32 %37)
  %39 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %40 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.key2, %struct.key2* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @memcmp(i32 %42, i32 %44, i32 4)
  %46 = icmp eq i64 0, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert_true(i32 %47)
  ret void
}

declare dso_local i32 @alloc_buf_gc(i32, i32*) #1

declare dso_local i32 @assert_true(i32) #1

declare dso_local i32 @tls_crypt_v2_wrap_client_key(%struct.buffer*, %struct.TYPE_4__*, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @tls_crypt_v2_unwrap_client_key(%struct.key2*, %struct.buffer*, i32, i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
