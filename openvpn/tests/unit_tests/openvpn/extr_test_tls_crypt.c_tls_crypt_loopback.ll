; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_loopback.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_tls_crypt_context = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @tls_crypt_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_crypt_loopback(i8** %0) #0 {
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
  %11 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %12 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %11, i32 0, i32 3
  %13 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %14 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %13, i32 0, i32 2
  %15 = call i32 @tls_crypt_wrap(i32* %10, i32* %12, i32* %14)
  %16 = call i32 @assert_true(i32 %15)
  %17 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %18 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %17, i32 0, i32 0
  %19 = call i64 @BLEN(i32* %18)
  %20 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %21 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %20, i32 0, i32 3
  %22 = call i64 @BLEN(i32* %21)
  %23 = icmp slt i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_true(i32 %24)
  %26 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %27 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %26, i32 0, i32 3
  %28 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %29 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %28, i32 0, i32 1
  %30 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %31 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %30, i32 0, i32 2
  %32 = call i32 @tls_crypt_unwrap(i32* %27, i32* %29, i32* %31)
  %33 = call i32 @assert_true(i32 %32)
  %34 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %35 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %34, i32 0, i32 0
  %36 = call i64 @BLEN(i32* %35)
  %37 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %38 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %37, i32 0, i32 1
  %39 = call i64 @BLEN(i32* %38)
  %40 = call i32 @assert_int_equal(i64 %36, i64 %39)
  %41 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %42 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %41, i32 0, i32 0
  %43 = call i32 @BPTR(i32* %42)
  %44 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %45 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %44, i32 0, i32 1
  %46 = call i32 @BPTR(i32* %45)
  %47 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %48 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %47, i32 0, i32 0
  %49 = call i64 @BLEN(i32* %48)
  %50 = call i32 @assert_memory_equal(i32 %43, i32 %46, i64 %49)
  ret void
}

declare dso_local i32 @skip_if_tls_crypt_not_supported(%struct.test_tls_crypt_context*) #1

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
