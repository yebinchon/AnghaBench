; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativePPC_common.c_emit_op_mem.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativePPC_common.c_emit_op_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32 }

@SLJIT_MEM = common dso_local global i64 0, align 8
@OFFS_REG_MASK = common dso_local global i64 0, align 8
@data_transfer_insts = common dso_local global i32* null, align 8
@INDEXED = common dso_local global i64 0, align 8
@MEM_MASK = common dso_local global i64 0, align 8
@REG_MASK = common dso_local global i64 0, align 8
@SIMM_MAX = common dso_local global i32 0, align 4
@SIMM_MIN = common dso_local global i32 0, align 4
@ADDIS = common dso_local global i32 0, align 4
@INT_ALIGNED = common dso_local global i32 0, align 4
@RLWINM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sljit_compiler*, i64, i64, i64, i32, i64)* @emit_op_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @emit_op_mem(%struct.sljit_compiler* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.sljit_compiler*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = call i32 @A(i64 0)
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @SLJIT_ASSERT(i32 %19)
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @SLJIT_MEM, align 8
  %23 = and i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32 @SLJIT_ASSERT(i32 %24)
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @OFFS_REG_MASK, align 8
  %28 = and i64 %26, %27
  %29 = call i64 @SLJIT_UNLIKELY(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %6
  %32 = load i32, i32* %12, align 4
  %33 = and i32 %32, 3
  store i32 %33, i32* %12, align 4
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @OFFS_REG(i64 %34)
  store i64 %35, i64* %15, align 8
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %31
  %39 = load %struct.sljit_compiler*, %struct.sljit_compiler** %8, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @OFFS_REG(i64 %41)
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = sub nsw i32 63, %44
  %46 = call i32 @RLDI(i64 %40, i64 %42, i32 %43, i32 %45, i32 1)
  %47 = call i64 @push_inst(%struct.sljit_compiler* %39, i32 %46)
  %48 = call i32 @FAIL_IF(i64 %47)
  %49 = load i64, i64* %13, align 8
  store i64 %49, i64* %15, align 8
  br label %50

50:                                               ; preds = %38, %31
  %51 = load i32*, i32** @data_transfer_insts, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @INDEXED, align 8
  %54 = or i64 %52, %53
  %55 = load i64, i64* @MEM_MASK, align 8
  %56 = and i64 %54, %55
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  %59 = load %struct.sljit_compiler*, %struct.sljit_compiler** %8, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @INST_CODE_AND_DST(i32 %60, i64 %61, i64 %62)
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @REG_MASK, align 8
  %66 = and i64 %64, %65
  %67 = call i32 @A(i64 %66)
  %68 = or i32 %63, %67
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @B(i64 %69)
  %71 = or i32 %68, %70
  %72 = call i64 @push_inst(%struct.sljit_compiler* %59, i32 %71)
  store i64 %72, i64* %7, align 8
  br label %140

73:                                               ; preds = %6
  %74 = load i32*, i32** @data_transfer_insts, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* @MEM_MASK, align 8
  %77 = and i64 %75, %76
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %14, align 4
  %80 = load i64, i64* @REG_MASK, align 8
  %81 = load i64, i64* %11, align 8
  %82 = and i64 %81, %80
  store i64 %82, i64* %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @SIMM_MAX, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %73
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @SIMM_MIN, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load %struct.sljit_compiler*, %struct.sljit_compiler** %8, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @INST_CODE_AND_DST(i32 %92, i64 %93, i64 %94)
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @A(i64 %96)
  %98 = or i32 %95, %97
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @IMM(i32 %99)
  %101 = or i32 %98, %100
  %102 = call i64 @push_inst(%struct.sljit_compiler* %91, i32 %101)
  store i64 %102, i64* %7, align 8
  br label %140

103:                                              ; preds = %86, %73
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = and i32 %105, 32768
  %107 = shl i32 %106, 1
  %108 = add nsw i32 %104, %107
  %109 = sext i32 %108 to i64
  %110 = and i64 %109, -65536
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @SLJIT_ASSERT(i32 %112)
  %114 = load %struct.sljit_compiler*, %struct.sljit_compiler** %8, align 8
  %115 = load i32, i32* @ADDIS, align 4
  %116 = load i64, i64* %13, align 8
  %117 = call i32 @D(i64 %116)
  %118 = or i32 %115, %117
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @A(i64 %119)
  %121 = or i32 %118, %120
  %122 = load i32, i32* %16, align 4
  %123 = ashr i32 %122, 16
  %124 = call i32 @IMM(i32 %123)
  %125 = or i32 %121, %124
  %126 = call i64 @push_inst(%struct.sljit_compiler* %114, i32 %125)
  %127 = call i32 @FAIL_IF(i64 %126)
  %128 = load %struct.sljit_compiler*, %struct.sljit_compiler** %8, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* %10, align 8
  %132 = call i32 @INST_CODE_AND_DST(i32 %129, i64 %130, i64 %131)
  %133 = load i64, i64* %13, align 8
  %134 = call i32 @A(i64 %133)
  %135 = or i32 %132, %134
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @IMM(i32 %136)
  %138 = or i32 %135, %137
  %139 = call i64 @push_inst(%struct.sljit_compiler* %128, i32 %138)
  store i64 %139, i64* %7, align 8
  br label %140

140:                                              ; preds = %103, %90, %50
  %141 = load i64, i64* %7, align 8
  ret i64 %141
}

declare dso_local i32 @SLJIT_ASSERT(i32) #1

declare dso_local i32 @A(i64) #1

declare dso_local i64 @SLJIT_UNLIKELY(i64) #1

declare dso_local i64 @OFFS_REG(i64) #1

declare dso_local i32 @FAIL_IF(i64) #1

declare dso_local i64 @push_inst(%struct.sljit_compiler*, i32) #1

declare dso_local i32 @RLDI(i64, i64, i32, i32, i32) #1

declare dso_local i32 @INST_CODE_AND_DST(i32, i64, i64) #1

declare dso_local i32 @B(i64) #1

declare dso_local i32 @IMM(i32) #1

declare dso_local i32 @D(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
