; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rc4test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rc4test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_rc4_encrypt = common dso_local global i32 0, align 4
@data_len = common dso_local global i32* null, align 8
@test_rc4_end_processing = common dso_local global i32 0, align 4
@test_rc4_multi_call = common dso_local global i32 0, align 4
@test_rc_bulk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = load i32, i32* @test_rc4_encrypt, align 4
  %2 = load i32*, i32** @data_len, align 8
  %3 = call i32 @OSSL_NELEM(i32* %2)
  %4 = call i32 @ADD_ALL_TESTS(i32 %1, i32 %3)
  %5 = load i32, i32* @test_rc4_end_processing, align 4
  %6 = load i32*, i32** @data_len, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ADD_ALL_TESTS(i32 %5, i32 %8)
  %10 = load i32, i32* @test_rc4_multi_call, align 4
  %11 = load i32*, i32** @data_len, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ADD_ALL_TESTS(i32 %10, i32 %13)
  %15 = load i32, i32* @test_rc_bulk, align 4
  %16 = call i32 @ADD_TEST(i32 %15)
  ret i32 1
}

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32*) #1

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
