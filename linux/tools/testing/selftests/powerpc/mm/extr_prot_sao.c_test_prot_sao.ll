; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_prot_sao.c_test_prot_sao.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_prot_sao.c_test_prot_sao.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PPC_FEATURE_ARCH_2_06 = common dso_local global i32 0, align 4
@SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_SAO = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_prot_sao() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @PPC_FEATURE_ARCH_2_06, align 4
  %3 = call i32 @have_hwcap(i32 %2)
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @SKIP_IF(i32 %6)
  %8 = load i32, i32* @SIZE, align 4
  %9 = load i32, i32* @PROT_READ, align 4
  %10 = load i32, i32* @PROT_WRITE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PROT_SAO, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MAP_ANONYMOUS, align 4
  %15 = load i32, i32* @MAP_PRIVATE, align 4
  %16 = or i32 %14, %15
  %17 = call i8* @mmap(i32* null, i32 %8, i32 %13, i32 %16, i32 -1, i32 0)
  store i8* %17, i8** %1, align 8
  %18 = load i8*, i8** %1, align 8
  %19 = load i8*, i8** @MAP_FAILED, align 8
  %20 = icmp eq i8* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @FAIL_IF(i32 %21)
  %23 = load i8*, i8** %1, align 8
  %24 = load i32, i32* @SIZE, align 4
  %25 = call i32 @memset(i8* %23, i32 170, i32 %24)
  ret i32 0
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @have_hwcap(i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
