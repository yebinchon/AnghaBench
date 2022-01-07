; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_fail_invalid_key.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_fail_invalid_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.test_tls_crypt_context = type { %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@__const.tls_crypt_fail_invalid_key.key = private unnamed_addr constant %struct.key { %struct.TYPE_5__ { i32 1 } }, align 4
@.str = private unnamed_addr constant [5 x i8] c"TEST\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @tls_crypt_fail_invalid_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_crypt_fail_invalid_key(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_tls_crypt_context*, align 8
  %4 = alloca %struct.key, align 4
  store i8** %0, i8*** %2, align 8
  %5 = load i8**, i8*** %2, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.test_tls_crypt_context*
  store %struct.test_tls_crypt_context* %7, %struct.test_tls_crypt_context** %3, align 8
  %8 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %9 = call i32 @skip_if_tls_crypt_not_supported(%struct.test_tls_crypt_context* %8)
  %10 = bitcast %struct.key* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.key* @__const.tls_crypt_fail_invalid_key.key to i8*), i64 4, i1 false)
  %11 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %12 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = call i32 @free_key_ctx(i32* %14)
  %16 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %17 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %21 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %20, i32 0, i32 4
  %22 = call i32 @init_key_ctx(i32* %19, %struct.key* %4, i32* %21, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %24 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %23, i32 0, i32 3
  %25 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %26 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %25, i32 0, i32 2
  %27 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %28 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %27, i32 0, i32 0
  %29 = call i32 @tls_crypt_wrap(i32* %24, i32* %26, %struct.TYPE_7__* %28)
  %30 = call i32 @assert_true(i32 %29)
  %31 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %32 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %31, i32 0, i32 3
  %33 = call i64 @BLEN(i32* %32)
  %34 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %35 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %34, i32 0, i32 2
  %36 = call i64 @BLEN(i32* %35)
  %37 = icmp slt i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert_true(i32 %38)
  %40 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %41 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %40, i32 0, i32 2
  %42 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %43 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %42, i32 0, i32 1
  %44 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %45 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %44, i32 0, i32 0
  %46 = call i32 @tls_crypt_unwrap(i32* %41, i32* %43, %struct.TYPE_7__* %45)
  %47 = call i32 @assert_false(i32 %46)
  ret void
}

declare dso_local i32 @skip_if_tls_crypt_not_supported(%struct.test_tls_crypt_context*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free_key_ctx(i32*) #1

declare dso_local i32 @init_key_ctx(i32*, %struct.key*, i32*, i32, i8*) #1

declare dso_local i32 @assert_true(i32) #1

declare dso_local i32 @tls_crypt_wrap(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @BLEN(i32*) #1

declare dso_local i32 @assert_false(i32) #1

declare dso_local i32 @tls_crypt_unwrap(i32*, i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
