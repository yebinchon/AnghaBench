; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_ignore_replay.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_ignore_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_tls_crypt_context = type { %struct.TYPE_3__, i32, %struct.buffer, %struct.buffer }
%struct.TYPE_3__ = type { i32 }
%struct.buffer = type { i32 }

@CO_IGNORE_PACKET_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @tls_crypt_ignore_replay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_crypt_ignore_replay(i8** %0) #0 {
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
  %10 = load i32, i32* @CO_IGNORE_PACKET_ID, align 4
  %11 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %12 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %10
  store i32 %15, i32* %13, align 4
  %16 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %17 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %16, i32 0, i32 3
  %18 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %19 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %18, i32 0, i32 2
  %20 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %21 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %20, i32 0, i32 0
  %22 = call i32 @tls_crypt_wrap(%struct.buffer* %17, %struct.buffer* %19, %struct.TYPE_3__* %21)
  %23 = call i32 @assert_true(i32 %22)
  %24 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %25 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %24, i32 0, i32 3
  %26 = call i64 @BLEN(%struct.buffer* %25)
  %27 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %28 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %27, i32 0, i32 2
  %29 = call i64 @BLEN(%struct.buffer* %28)
  %30 = icmp slt i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_true(i32 %31)
  %33 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %34 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %33, i32 0, i32 2
  %35 = bitcast %struct.buffer* %4 to i8*
  %36 = bitcast %struct.buffer* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %38 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %37, i32 0, i32 1
  %39 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %40 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %39, i32 0, i32 0
  %41 = call i32 @tls_crypt_unwrap(%struct.buffer* %4, i32* %38, %struct.TYPE_3__* %40)
  %42 = call i32 @assert_true(i32 %41)
  %43 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %44 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %43, i32 0, i32 1
  %45 = call i32 @buf_clear(i32* %44)
  %46 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %47 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %46, i32 0, i32 2
  %48 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %49 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %48, i32 0, i32 1
  %50 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %51 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %50, i32 0, i32 0
  %52 = call i32 @tls_crypt_unwrap(%struct.buffer* %47, i32* %49, %struct.TYPE_3__* %51)
  %53 = call i32 @assert_true(i32 %52)
  ret void
}

declare dso_local i32 @skip_if_tls_crypt_not_supported(%struct.test_tls_crypt_context*) #1

declare dso_local i32 @assert_true(i32) #1

declare dso_local i32 @tls_crypt_wrap(%struct.buffer*, %struct.buffer*, %struct.TYPE_3__*) #1

declare dso_local i64 @BLEN(%struct.buffer*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tls_crypt_unwrap(%struct.buffer*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @buf_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
