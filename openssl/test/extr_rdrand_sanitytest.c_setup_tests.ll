; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rdrand_sanitytest.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rdrand_sanitytest.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENSSL_ia32cap_P = common dso_local global i32* null, align 8
@sanity_check_rdrand_bytes = common dso_local global i32 0, align 4
@sanity_check_rdseed_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @OPENSSL_cpuid_setup()
  %4 = load i32*, i32** @OPENSSL_ia32cap_P, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 2
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 262144
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %1, align 4
  %10 = load i32*, i32** @OPENSSL_ia32cap_P, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 1073741824
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i32, i32* @sanity_check_rdrand_bytes, align 4
  %20 = call i32 @ADD_TEST(i32 %19)
  br label %21

21:                                               ; preds = %18, %0
  %22 = load i32, i32* %1, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @sanity_check_rdseed_bytes, align 4
  %26 = call i32 @ADD_TEST(i32 %25)
  br label %27

27:                                               ; preds = %24, %21
  ret i32 1
}

declare dso_local i32 @OPENSSL_cpuid_setup(...) #1

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
