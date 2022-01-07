; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeSPARC_common.c_getput_arg_fast.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeSPARC_common.c_getput_arg_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32 }

@SLJIT_MEM = common dso_local global i32 0, align 4
@OFFS_REG_MASK = common dso_local global i32 0, align 4
@SIMM_MAX = common dso_local global i32 0, align 4
@SIMM_MIN = common dso_local global i32 0, align 4
@ARG_TEST = common dso_local global i32 0, align 4
@data_transfer_insts = common dso_local global i32* null, align 8
@MEM_MASK = common dso_local global i32 0, align 4
@GPR_REG = common dso_local global i32 0, align 4
@REG_MASK = common dso_local global i32 0, align 4
@LOAD_DATA = common dso_local global i32 0, align 4
@MOVABLE_INS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sljit_compiler*, i32, i32, i32, i32)* @getput_arg_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getput_arg_fast(%struct.sljit_compiler* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sljit_compiler*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @SLJIT_MEM, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @SLJIT_ASSERT(i32 %14)
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @OFFS_REG_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @SIMM_MAX, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @SIMM_MIN, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %24, %20, %5
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @OFFS_REG_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %105

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, 3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %105

37:                                               ; preds = %33, %24
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ARG_TEST, align 4
  %40 = and i32 %38, %39
  %41 = call i64 @SLJIT_UNLIKELY(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %106

44:                                               ; preds = %37
  %45 = load %struct.sljit_compiler*, %struct.sljit_compiler** %7, align 8
  %46 = load i32*, i32** @data_transfer_insts, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @MEM_MASK, align 4
  %49 = and i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @MEM_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @GPR_REG, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @D(i32 %59)
  br label %64

61:                                               ; preds = %44
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @FD(i32 %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i32 [ %60, %58 ], [ %63, %61 ]
  %66 = or i32 %52, %65
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @REG_MASK, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @S1(i32 %69)
  %71 = or i32 %66, %70
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @OFFS_REG_MASK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @OFFS_REG(i32 %77)
  %79 = call i32 @S2(i32 %78)
  br label %83

80:                                               ; preds = %64
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @IMM(i32 %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = phi i32 [ %79, %76 ], [ %82, %80 ]
  %85 = or i32 %71, %84
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @MEM_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @GPR_REG, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @LOAD_DATA, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @DR(i32 %97)
  br label %101

99:                                               ; preds = %91, %83
  %100 = load i32, i32* @MOVABLE_INS, align 4
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi i32 [ %98, %96 ], [ %100, %99 ]
  %103 = call i32 @push_inst(%struct.sljit_compiler* %45, i32 %85, i32 %102)
  %104 = call i32 @FAIL_IF(i32 %103)
  store i32 -1, i32* %6, align 4
  br label %106

105:                                              ; preds = %33, %28
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %101, %43
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @SLJIT_ASSERT(i32) #1

declare dso_local i64 @SLJIT_UNLIKELY(i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @push_inst(%struct.sljit_compiler*, i32, i32) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @FD(i32) #1

declare dso_local i32 @S1(i32) #1

declare dso_local i32 @S2(i32) #1

declare dso_local i32 @OFFS_REG(i32) #1

declare dso_local i32 @IMM(i32) #1

declare dso_local i32 @DR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
