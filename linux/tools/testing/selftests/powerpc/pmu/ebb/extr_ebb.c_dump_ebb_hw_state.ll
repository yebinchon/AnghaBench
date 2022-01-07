; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb.c_dump_ebb_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb.c_dump_ebb_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPRN_MMCR0 = common dso_local global i32 0, align 4
@SPRN_BESCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [182 x i8] c"HW state:\0AMMCR0 0x%016x %s\0AMMCR2 0x%016lx\0AEBBHR 0x%016lx\0ABESCR 0x%016llx %s\0APMC1  0x%016lx\0APMC2  0x%016lx\0APMC3  0x%016lx\0APMC4  0x%016lx\0APMC5  0x%016lx\0APMC6  0x%016lx\0ASIAR  0x%016lx\0A\00", align 1
@SPRN_MMCR2 = common dso_local global i32 0, align 4
@SPRN_EBBHR = common dso_local global i32 0, align 4
@SPRN_PMC1 = common dso_local global i32 0, align 4
@SPRN_PMC2 = common dso_local global i32 0, align 4
@SPRN_PMC3 = common dso_local global i32 0, align 4
@SPRN_PMC4 = common dso_local global i32 0, align 4
@SPRN_PMC5 = common dso_local global i32 0, align 4
@SPRN_PMC6 = common dso_local global i32 0, align 4
@SPRN_SIAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_ebb_hw_state() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @SPRN_MMCR0, align 4
  %4 = call i8* @mfspr(i32 %3)
  %5 = ptrtoint i8* %4 to i32
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @SPRN_BESCR, align 4
  %7 = call i8* @mfspr(i32 %6)
  store i8* %7, i8** %1, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i8* @decode_mmcr0(i32 %9)
  %11 = load i32, i32* @SPRN_MMCR2, align 4
  %12 = call i8* @mfspr(i32 %11)
  %13 = load i32, i32* @SPRN_EBBHR, align 4
  %14 = call i8* @mfspr(i32 %13)
  %15 = load i8*, i8** %1, align 8
  %16 = load i8*, i8** %1, align 8
  %17 = call i32 @decode_bescr(i8* %16)
  %18 = load i32, i32* @SPRN_PMC1, align 4
  %19 = call i8* @mfspr(i32 %18)
  %20 = load i32, i32* @SPRN_PMC2, align 4
  %21 = call i8* @mfspr(i32 %20)
  %22 = load i32, i32* @SPRN_PMC3, align 4
  %23 = call i8* @mfspr(i32 %22)
  %24 = load i32, i32* @SPRN_PMC4, align 4
  %25 = call i8* @mfspr(i32 %24)
  %26 = load i32, i32* @SPRN_PMC5, align 4
  %27 = call i8* @mfspr(i32 %26)
  %28 = load i32, i32* @SPRN_PMC6, align 4
  %29 = call i8* @mfspr(i32 %28)
  %30 = load i32, i32* @SPRN_SIAR, align 4
  %31 = call i8* @mfspr(i32 %30)
  %32 = call i32 @printf(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %10, i8* %12, i8* %14, i8* %15, i32 %17, i8* %19, i8* %21, i8* %23, i8* %25, i8* %27, i8* %29, i8* %31)
  ret void
}

declare dso_local i8* @mfspr(i32) #1

declare dso_local i32 @printf(i8*, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @decode_mmcr0(i32) #1

declare dso_local i32 @decode_bescr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
