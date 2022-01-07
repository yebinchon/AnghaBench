; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_crypto.c_main.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_crypto.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMUnitTest = type { i32 }

@crypto_pem_encode_decode_loopback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"crypto tests\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1 x %struct.CMUnitTest], align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [1 x %struct.CMUnitTest], [1 x %struct.CMUnitTest]* %2, i64 0, i64 0
  %5 = load i32, i32* @crypto_pem_encode_decode_loopback, align 4
  %6 = call i32 @cmocka_unit_test(i32 %5)
  %7 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %4, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds [1 x %struct.CMUnitTest], [1 x %struct.CMUnitTest]* %2, i64 0, i64 0
  %9 = call i32 @cmocka_run_group_tests_name(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.CMUnitTest* %8, i32* null, i32* null)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  ret i32 %10
}

declare dso_local i32 @cmocka_unit_test(i32) #1

declare dso_local i32 @cmocka_run_group_tests_name(i8*, %struct.CMUnitTest*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
