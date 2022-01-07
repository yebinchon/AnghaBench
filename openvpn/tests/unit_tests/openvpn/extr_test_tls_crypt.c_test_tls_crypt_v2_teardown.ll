; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_test_tls_crypt_v2_teardown.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c_test_tls_crypt_v2_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_tls_crypt_v2_context = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @test_tls_crypt_v2_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_tls_crypt_v2_teardown(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_tls_crypt_v2_context*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.test_tls_crypt_v2_context*
  store %struct.test_tls_crypt_v2_context* %6, %struct.test_tls_crypt_v2_context** %3, align 8
  %7 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %8 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %7, i32 0, i32 2
  %9 = call i32 @free_key_ctx_bi(i32* %8)
  %10 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %11 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %10, i32 0, i32 1
  %12 = call i32 @free_key_ctx_bi(i32* %11)
  %13 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %14 = getelementptr inbounds %struct.test_tls_crypt_v2_context, %struct.test_tls_crypt_v2_context* %13, i32 0, i32 0
  %15 = call i32 @gc_free(i32* %14)
  %16 = load %struct.test_tls_crypt_v2_context*, %struct.test_tls_crypt_v2_context** %3, align 8
  %17 = call i32 @free(%struct.test_tls_crypt_v2_context* %16)
  ret i32 0
}

declare dso_local i32 @free_key_ctx_bi(i32*) #1

declare dso_local i32 @gc_free(i32*) #1

declare dso_local i32 @free(%struct.test_tls_crypt_v2_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
