; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_loopback_max_len.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_loopback_max_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_tls_crypt_context = type { i32, i32, i32, i32 }

@TESTBUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @tls_crypt_loopback_max_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_crypt_loopback_max_len(i8** %0) #0 {
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
  %14 = load i64, i64* @TESTBUF_SIZE, align 8
  %15 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %16 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %15, i32 0, i32 3
  %17 = call i64 @BLEN(i32* %16)
  %18 = sub nsw i64 %14, %17
  %19 = call i64 (...) @tls_crypt_buf_overhead()
  %20 = sub nsw i64 %18, %19
  %21 = call i32 @buf_write_alloc(i32* %13, i64 %20)
  %22 = call i32 @assert_non_null(i32 %21)
  %23 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %24 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %23, i32 0, i32 0
  %25 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %26 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %25, i32 0, i32 3
  %27 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %28 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %27, i32 0, i32 2
  %29 = call i32 @tls_crypt_wrap(i32* %24, i32* %26, i32* %28)
  %30 = call i32 @assert_true(i32 %29)
  %31 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %32 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %31, i32 0, i32 0
  %33 = call i64 @BLEN(i32* %32)
  %34 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %35 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %34, i32 0, i32 3
  %36 = call i64 @BLEN(i32* %35)
  %37 = icmp slt i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert_true(i32 %38)
  %40 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %41 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %40, i32 0, i32 3
  %42 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %43 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %42, i32 0, i32 1
  %44 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %45 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %44, i32 0, i32 2
  %46 = call i32 @tls_crypt_unwrap(i32* %41, i32* %43, i32* %45)
  %47 = call i32 @assert_true(i32 %46)
  %48 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %49 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %48, i32 0, i32 0
  %50 = call i64 @BLEN(i32* %49)
  %51 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %52 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %51, i32 0, i32 1
  %53 = call i64 @BLEN(i32* %52)
  %54 = call i32 @assert_int_equal(i64 %50, i64 %53)
  %55 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %56 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %55, i32 0, i32 0
  %57 = call i32 @BPTR(i32* %56)
  %58 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %59 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %58, i32 0, i32 1
  %60 = call i32 @BPTR(i32* %59)
  %61 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %62 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %61, i32 0, i32 0
  %63 = call i64 @BLEN(i32* %62)
  %64 = call i32 @assert_memory_equal(i32 %57, i32 %60, i64 %63)
  ret void
}

declare dso_local i32 @skip_if_tls_crypt_not_supported(%struct.test_tls_crypt_context*) #1

declare dso_local i32 @buf_clear(i32*) #1

declare dso_local i32 @assert_non_null(i32) #1

declare dso_local i32 @buf_write_alloc(i32*, i64) #1

declare dso_local i64 @BLEN(i32*) #1

declare dso_local i64 @tls_crypt_buf_overhead(...) #1

declare dso_local i32 @assert_true(i32) #1

declare dso_local i32 @tls_crypt_wrap(i32*, i32*, i32*) #1

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
