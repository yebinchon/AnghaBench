; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_v2_wrap_unwrap_wrong_key.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_v2_wrap_unwrap_wrong_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_tls_crypt_v2_context = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.key_type = type { i32 }
%struct.key2 = type { i32 }

@KEY_DIRECTION_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"wrong tls-crypt-v2 server key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @tls_crypt_v2_wrap_unwrap_wrong_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_crypt_v2_wrap_unwrap_wrong_key(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_tls_crypt_v2_context*, align 8
  %4 = alloca %struct.key_type, align 4
  %5 = alloca %struct.key2, align 4
  %6 = alloca %struct.key2, align 4
  store i8** %0, i8*** %2, align 8
  %7 = load i8**, i8*** %2, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = bitcast i8* %8 to %struct.test_tls_crypt_v2_context*
  store %struct.test_tls_crypt_v2_context* %9, %struct.test_tls_crypt_v2_context** %3, align 8
  %10 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %11 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %10, i32 0, i32 2
  %12 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %13 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %12, i32 0, i32 6
  %14 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %15 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %14, i32 0, i32 5
  %16 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %17 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %20 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %19, i32 0, i32 4
  %21 = call i32 @tls_crypt_v2_wrap_client_key(i32* %11, i32* %13, i32* %15, i32* %18, i32* %20)
  %22 = call i32 @assert_true(i32 %21)
  %23 = call i32 (...) @tls_crypt_kt()
  %24 = getelementptr inbounds %struct.key_type, %struct.key_type* %4, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %26 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %25, i32 0, i32 1
  %27 = call i32 @free_key_ctx_bi(%struct.TYPE_4__* %26)
  %28 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %29 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @memset(i32* %30, i32 0, i32 4)
  %32 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %33 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %32, i32 0, i32 1
  %34 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %35 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %34, i32 0, i32 3
  %36 = load i32, i32* @KEY_DIRECTION_BIDIRECTIONAL, align 4
  %37 = call i32 @init_key_ctx_bi(%struct.TYPE_4__* %33, %struct.TYPE_5__* %35, i32 %36, %struct.key_type* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %38 = bitcast %struct.key2* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %38, i8 0, i64 4, i1 false)
  %39 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %40 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %39, i32 0, i32 0
  %41 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %42 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %45 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @tls_crypt_v2_unwrap_client_key(%struct.key2* %5, i32* %40, i32 %43, i32* %46)
  %48 = call i32 @assert_false(i32 %47)
  %49 = bitcast %struct.key2* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %49, i8 0, i64 4, i1 false)
  %50 = call i64 @memcmp(%struct.key2* %5, %struct.key2* %6, i32 4)
  %51 = icmp eq i64 0, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert_true(i32 %52)
  %54 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %55 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %54, i32 0, i32 0
  %56 = call i64 @BLEN(i32* %55)
  %57 = icmp eq i64 0, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert_true(i32 %58)
  ret void
}

declare dso_local i32 @assert_true(i32) #1

declare dso_local i32 @tls_crypt_v2_wrap_client_key(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @tls_crypt_kt(...) #1

declare dso_local i32 @free_key_ctx_bi(%struct.TYPE_4__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @init_key_ctx_bi(%struct.TYPE_4__*, %struct.TYPE_5__*, i32, %struct.key_type*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @assert_false(i32) #1

declare dso_local i32 @tls_crypt_v2_unwrap_client_key(%struct.key2*, i32*, i32, i32*) #1

declare dso_local i64 @memcmp(%struct.key2*, %struct.key2*, i32) #1

declare dso_local i64 @BLEN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
