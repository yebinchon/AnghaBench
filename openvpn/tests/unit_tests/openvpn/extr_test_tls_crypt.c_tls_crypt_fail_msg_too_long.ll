; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_fail_msg_too_long.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_tls_crypt_fail_msg_too_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_tls_crypt_context = type { i32, i32, i32 }

@TESTBUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @tls_crypt_fail_msg_too_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_crypt_fail_msg_too_long(i8** %0) #0 {
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
  %10 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %9, i32 0, i32 2
  %11 = call i32 @buf_clear(i32* %10)
  %12 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %13 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %12, i32 0, i32 2
  %14 = load i64, i64* @TESTBUF_SIZE, align 8
  %15 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %16 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %15, i32 0, i32 1
  %17 = call i64 @BLEN(i32* %16)
  %18 = sub nsw i64 %14, %17
  %19 = call i64 (...) @tls_crypt_buf_overhead()
  %20 = sub nsw i64 %18, %19
  %21 = add nsw i64 %20, 1
  %22 = call i32 @buf_write_alloc(i32* %13, i64 %21)
  %23 = call i32 @assert_non_null(i32 %22)
  %24 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %25 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %24, i32 0, i32 2
  %26 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %27 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %26, i32 0, i32 1
  %28 = load %struct.test_tls_crypt_context*, %struct.test_tls_crypt_context** %3, align 8
  %29 = getelementptr inbounds %struct.test_tls_crypt_context, %struct.test_tls_crypt_context* %28, i32 0, i32 0
  %30 = call i32 @tls_crypt_wrap(i32* %25, i32* %27, i32* %29)
  %31 = call i32 @assert_false(i32 %30)
  ret void
}

declare dso_local i32 @skip_if_tls_crypt_not_supported(%struct.test_tls_crypt_context*) #1

declare dso_local i32 @buf_clear(i32*) #1

declare dso_local i32 @assert_non_null(i32) #1

declare dso_local i32 @buf_write_alloc(i32*, i64) #1

declare dso_local i64 @BLEN(i32*) #1

declare dso_local i64 @tls_crypt_buf_overhead(...) #1

declare dso_local i32 @assert_false(i32) #1

declare dso_local i32 @tls_crypt_wrap(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
