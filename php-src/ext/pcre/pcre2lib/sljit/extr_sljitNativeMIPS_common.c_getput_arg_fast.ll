; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeMIPS_common.c_getput_arg_fast.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeMIPS_common.c_getput_arg_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32 }

@SLJIT_MEM = common dso_local global i32 0, align 4
@OFFS_REG_MASK = common dso_local global i32 0, align 4
@SIMM_MAX = common dso_local global i64 0, align 8
@SIMM_MIN = common dso_local global i64 0, align 8
@ARG_TEST = common dso_local global i32 0, align 4
@data_transfer_insts = common dso_local global i32* null, align 8
@MEM_MASK = common dso_local global i32 0, align 4
@REG_MASK = common dso_local global i32 0, align 4
@GPR_REG = common dso_local global i32 0, align 4
@LOAD_DATA = common dso_local global i32 0, align 4
@MOVABLE_INS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sljit_compiler*, i32, i32, i32, i64)* @getput_arg_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getput_arg_fast(%struct.sljit_compiler* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sljit_compiler*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @SLJIT_MEM, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @SLJIT_ASSERT(i32 %14)
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @OFFS_REG_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %73, label %20

20:                                               ; preds = %5
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @SIMM_MAX, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %20
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @SIMM_MIN, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ARG_TEST, align 4
  %31 = and i32 %29, %30
  %32 = call i64 @SLJIT_UNLIKELY(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %74

35:                                               ; preds = %28
  %36 = load %struct.sljit_compiler*, %struct.sljit_compiler** %7, align 8
  %37 = load i32*, i32** @data_transfer_insts, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @MEM_MASK, align 4
  %40 = and i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @REG_MASK, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @S(i32 %46)
  %48 = or i32 %43, %47
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @TA(i32 %49)
  %51 = or i32 %48, %50
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @IMM(i64 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @MEM_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @GPR_REG, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %35
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @LOAD_DATA, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  br label %69

67:                                               ; preds = %60, %35
  %68 = load i32, i32* @MOVABLE_INS, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = call i32 @push_inst(%struct.sljit_compiler* %36, i32 %54, i32 %70)
  %72 = call i32 @FAIL_IF(i32 %71)
  store i32 -1, i32* %6, align 4
  br label %74

73:                                               ; preds = %24, %20, %5
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %69, %34
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @SLJIT_ASSERT(i32) #1

declare dso_local i64 @SLJIT_UNLIKELY(i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @push_inst(%struct.sljit_compiler*, i32, i32) #1

declare dso_local i32 @S(i32) #1

declare dso_local i32 @TA(i32) #1

declare dso_local i32 @IMM(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
