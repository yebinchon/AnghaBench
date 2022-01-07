; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_fail_replay.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_fail_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_tls_crypt_context = type { i32, i32, %struct.buffer, %struct.buffer }
%struct.buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @tls_crypt_fail_replay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_crypt_fail_replay(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_tls_crypt_context*, align 8
  %4 = alloca %struct.buffer, align 4
  store i8** %0, i8*** %2, align 8
  %5 = load i8**, i8*** %2, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.test_tls_crypt_context*
  store %struct.test_tls_crypt_context* %7, %struct.test_tls_crypt_context** %3, align 8
  %8 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %9 = call i32 @skip_if_tls_crypt_not_supported(%struct.test_tls_crypt_context* %8)
  %10 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %11 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %10, i32 0, i32 3
  %12 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %13 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %12, i32 0, i32 2
  %14 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %15 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %14, i32 0, i32 0
  %16 = call i32 @tls_crypt_wrap(%struct.buffer* %11, %struct.buffer* %13, i32* %15)
  %17 = call i32 @assert_true(i32 %16)
  %18 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %19 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %18, i32 0, i32 3
  %20 = call i64 @BLEN(%struct.buffer* %19)
  %21 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %22 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %21, i32 0, i32 2
  %23 = call i64 @BLEN(%struct.buffer* %22)
  %24 = icmp slt i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert_true(i32 %25)
  %27 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %28 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %27, i32 0, i32 2
  %29 = bitcast %struct.buffer* %4 to i8*
  %30 = bitcast %struct.buffer* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %32 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %31, i32 0, i32 1
  %33 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %34 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %33, i32 0, i32 0
  %35 = call i32 @tls_crypt_unwrap(%struct.buffer* %4, i32* %32, i32* %34)
  %36 = call i32 @assert_true(i32 %35)
  %37 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %38 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %37, i32 0, i32 1
  %39 = call i32 @buf_clear(i32* %38)
  %40 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %41 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %40, i32 0, i32 2
  %42 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %43 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %42, i32 0, i32 1
  %44 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %45 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %44, i32 0, i32 0
  %46 = call i32 @tls_crypt_unwrap(%struct.buffer* %41, i32* %43, i32* %45)
  %47 = call i32 @assert_false(i32 %46)
  ret void
}

declare dso_local i32 @skip_if_tls_crypt_not_supported(%struct.test_tls_crypt_context*) #1

declare dso_local i32 @assert_true(i32) #1

declare dso_local i32 @tls_crypt_wrap(%struct.buffer*, %struct.buffer*, i32*) #1

declare dso_local i64 @BLEN(%struct.buffer*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tls_crypt_unwrap(%struct.buffer*, i32*, i32*) #1

declare dso_local i32 @buf_clear(i32*) #1

declare dso_local i32 @assert_false(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
