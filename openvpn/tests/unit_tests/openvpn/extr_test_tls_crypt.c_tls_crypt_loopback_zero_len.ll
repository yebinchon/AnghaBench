; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_loopback_zero_len.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_loopback_zero_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_tls_crypt_context = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @tls_crypt_loopback_zero_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_crypt_loopback_zero_len(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_tls_crypt_context*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.test_tls_crypt_context*
  store %struct.test_tls_crypt_context* %6, %struct.test_tls_crypt_context** %3, align 8
  %7 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %8 = call i32 @skip_if_tls_crypt_not_supported(%struct.test_tls_crypt_context* %7)
  %9 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %10 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %9, i32 0, i32 0
  %11 = call i32 @buf_clear(i32* %10)
  %12 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %13 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %12, i32 0, i32 0
  %14 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %15 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %14, i32 0, i32 3
  %16 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %17 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %16, i32 0, i32 2
  %18 = call i32 @tls_crypt_wrap(i32* %13, i32* %15, i32* %17)
  %19 = call i32 @assert_true(i32 %18)
  %20 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %21 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %20, i32 0, i32 0
  %22 = call i64 @BLEN(i32* %21)
  %23 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %24 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %23, i32 0, i32 3
  %25 = call i64 @BLEN(i32* %24)
  %26 = icmp slt i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_true(i32 %27)
  %29 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %30 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %29, i32 0, i32 3
  %31 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %32 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %31, i32 0, i32 1
  %33 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %34 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %33, i32 0, i32 2
  %35 = call i32 @tls_crypt_unwrap(i32* %30, i32* %32, i32* %34)
  %36 = call i32 @assert_true(i32 %35)
  %37 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %38 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %37, i32 0, i32 0
  %39 = call i64 @BLEN(i32* %38)
  %40 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %41 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %40, i32 0, i32 1
  %42 = call i64 @BLEN(i32* %41)
  %43 = call i32 @assert_int_equal(i64 %39, i64 %42)
  %44 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %45 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %44, i32 0, i32 0
  %46 = call i32 @BPTR(i32* %45)
  %47 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %48 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %47, i32 0, i32 1
  %49 = call i32 @BPTR(i32* %48)
  %50 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %51 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %50, i32 0, i32 0
  %52 = call i64 @BLEN(i32* %51)
  %53 = call i32 @assert_memory_equal(i32 %46, i32 %49, i64 %52)
  ret void
}

declare dso_local i32 @skip_if_tls_crypt_not_supported(%struct.test_tls_crypt_context*) #1

declare dso_local i32 @buf_clear(i32*) #1

declare dso_local i32 @assert_true(i32) #1

declare dso_local i32 @tls_crypt_wrap(i32*, i32*, i32*) #1

declare dso_local i64 @BLEN(i32*) #1

declare dso_local i32 @tls_crypt_unwrap(i32*, i32*, i32*) #1

declare dso_local i32 @assert_int_equal(i64, i64) #1

declare dso_local i32 @assert_memory_equal(i32, i32, i64) #1

declare dso_local i32 @BPTR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
