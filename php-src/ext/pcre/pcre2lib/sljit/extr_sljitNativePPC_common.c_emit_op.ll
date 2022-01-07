; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativePPC_common.c_emit_op.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativePPC_common.c_emit_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32 }

@TMP_REG2 = common dso_local global i64 0, align 8
@ALT_FORM1 = common dso_local global i64 0, align 8
@ALT_FORM2 = common dso_local global i64 0, align 8
@ALT_FORM3 = common dso_local global i64 0, align 8
@ALT_FORM4 = common dso_local global i64 0, align 8
@ALT_FORM5 = common dso_local global i64 0, align 8
@ALT_SIGN_EXT = common dso_local global i64 0, align 8
@ALT_SET_FLAGS = common dso_local global i64 0, align 8
@REG_DEST = common dso_local global i64 0, align 8
@SLJIT_MOV = common dso_local global i64 0, align 8
@SLJIT_MOV_P = common dso_local global i64 0, align 8
@REG1_SOURCE = common dso_local global i64 0, align 8
@SLJIT_IMM = common dso_local global i64 0, align 8
@TMP_REG1 = common dso_local global i64 0, align 8
@LOAD_DATA = common dso_local global i64 0, align 8
@REG2_SOURCE = common dso_local global i64 0, align 8
@SLJIT_MEM = common dso_local global i64 0, align 8
@SLJIT_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sljit_compiler*, i64, i64, i64, i32, i64, i32, i64, i32)* @emit_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @emit_op(%struct.sljit_compiler* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5, i32 %6, i64 %7, i32 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.sljit_compiler*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %25 = load i64, i64* @TMP_REG2, align 8
  store i64 %25, i64* %20, align 8
  %26 = load i64, i64* @TMP_REG2, align 8
  store i64 %26, i64* %23, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @ALT_FORM1, align 8
  %29 = load i64, i64* @ALT_FORM2, align 8
  %30 = or i64 %28, %29
  %31 = load i64, i64* @ALT_FORM3, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* @ALT_FORM4, align 8
  %34 = or i64 %32, %33
  %35 = load i64, i64* @ALT_FORM5, align 8
  %36 = or i64 %34, %35
  %37 = load i64, i64* @ALT_SIGN_EXT, align 8
  %38 = or i64 %36, %37
  %39 = load i64, i64* @ALT_SET_FLAGS, align 8
  %40 = or i64 %38, %39
  %41 = and i64 %27, %40
  store i64 %41, i64* %24, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i64 @SLOW_IS_REG(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %9
  %46 = load i64, i64* %14, align 8
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* @REG_DEST, align 8
  %48 = load i64, i64* %24, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %24, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @SLJIT_MOV, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @SLJIT_MOV_P, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* %20, align 8
  store i64 %58, i64* %23, align 8
  br label %59

59:                                               ; preds = %57, %53, %45
  br label %60

60:                                               ; preds = %59, %9
  %61 = load i64, i64* %16, align 8
  %62 = call i64 @FAST_IS_REG(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i64, i64* %16, align 8
  store i64 %65, i64* %21, align 8
  %66 = load i64, i64* @REG1_SOURCE, align 8
  %67 = load i64, i64* %24, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %24, align 8
  br label %94

69:                                               ; preds = %60
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* @SLJIT_IMM, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.sljit_compiler*, %struct.sljit_compiler** %11, align 8
  %76 = load i64, i64* @TMP_REG1, align 8
  %77 = load i32, i32* %17, align 4
  %78 = call i64 @load_immediate(%struct.sljit_compiler* %75, i64 %76, i32 %77)
  %79 = call i32 @FAIL_IF(i64 %78)
  %80 = load i64, i64* @TMP_REG1, align 8
  store i64 %80, i64* %21, align 8
  br label %93

81:                                               ; preds = %69
  %82 = load %struct.sljit_compiler*, %struct.sljit_compiler** %11, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* @LOAD_DATA, align 8
  %85 = or i64 %83, %84
  %86 = load i64, i64* @TMP_REG1, align 8
  %87 = load i64, i64* %16, align 8
  %88 = load i32, i32* %17, align 4
  %89 = load i64, i64* @TMP_REG1, align 8
  %90 = call i64 @emit_op_mem(%struct.sljit_compiler* %82, i64 %85, i64 %86, i64 %87, i32 %88, i64 %89)
  %91 = call i32 @FAIL_IF(i64 %90)
  %92 = load i64, i64* @TMP_REG1, align 8
  store i64 %92, i64* %21, align 8
  br label %93

93:                                               ; preds = %81, %74
  br label %94

94:                                               ; preds = %93, %64
  %95 = load i64, i64* %18, align 8
  %96 = call i64 @FAST_IS_REG(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %94
  %99 = load i64, i64* %18, align 8
  store i64 %99, i64* %22, align 8
  %100 = load i64, i64* @REG2_SOURCE, align 8
  %101 = load i64, i64* %24, align 8
  %102 = or i64 %101, %100
  store i64 %102, i64* %24, align 8
  %103 = load i64, i64* %24, align 8
  %104 = load i64, i64* @REG_DEST, align 8
  %105 = and i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %98
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* @SLJIT_MOV, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* @SLJIT_MOV_P, align 8
  %114 = icmp sle i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i64, i64* %22, align 8
  store i64 %116, i64* %20, align 8
  br label %117

117:                                              ; preds = %115, %111, %107, %98
  br label %143

118:                                              ; preds = %94
  %119 = load i64, i64* %18, align 8
  %120 = load i64, i64* @SLJIT_IMM, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load %struct.sljit_compiler*, %struct.sljit_compiler** %11, align 8
  %125 = load i64, i64* %23, align 8
  %126 = load i32, i32* %19, align 4
  %127 = call i64 @load_immediate(%struct.sljit_compiler* %124, i64 %125, i32 %126)
  %128 = call i32 @FAIL_IF(i64 %127)
  %129 = load i64, i64* %23, align 8
  store i64 %129, i64* %22, align 8
  br label %142

130:                                              ; preds = %118
  %131 = load %struct.sljit_compiler*, %struct.sljit_compiler** %11, align 8
  %132 = load i64, i64* %13, align 8
  %133 = load i64, i64* @LOAD_DATA, align 8
  %134 = or i64 %132, %133
  %135 = load i64, i64* %23, align 8
  %136 = load i64, i64* %18, align 8
  %137 = load i32, i32* %19, align 4
  %138 = load i64, i64* @TMP_REG2, align 8
  %139 = call i64 @emit_op_mem(%struct.sljit_compiler* %131, i64 %134, i64 %135, i64 %136, i32 %137, i64 %138)
  %140 = call i32 @FAIL_IF(i64 %139)
  %141 = load i64, i64* %23, align 8
  store i64 %141, i64* %22, align 8
  br label %142

142:                                              ; preds = %130, %123
  br label %143

143:                                              ; preds = %142, %117
  %144 = load %struct.sljit_compiler*, %struct.sljit_compiler** %11, align 8
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* %24, align 8
  %147 = load i64, i64* %20, align 8
  %148 = load i64, i64* %21, align 8
  %149 = load i64, i64* %22, align 8
  %150 = call i64 @emit_single_op(%struct.sljit_compiler* %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149)
  %151 = call i32 @FAIL_IF(i64 %150)
  %152 = load i64, i64* %14, align 8
  %153 = load i64, i64* @SLJIT_MEM, align 8
  %154 = and i64 %152, %153
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %143
  %157 = load i64, i64* @SLJIT_SUCCESS, align 8
  store i64 %157, i64* %10, align 8
  br label %166

158:                                              ; preds = %143
  %159 = load %struct.sljit_compiler*, %struct.sljit_compiler** %11, align 8
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* %20, align 8
  %162 = load i64, i64* %14, align 8
  %163 = load i32, i32* %15, align 4
  %164 = load i64, i64* @TMP_REG1, align 8
  %165 = call i64 @emit_op_mem(%struct.sljit_compiler* %159, i64 %160, i64 %161, i64 %162, i32 %163, i64 %164)
  store i64 %165, i64* %10, align 8
  br label %166

166:                                              ; preds = %158, %156
  %167 = load i64, i64* %10, align 8
  ret i64 %167
}

declare dso_local i64 @SLOW_IS_REG(i64) #1

declare dso_local i64 @FAST_IS_REG(i64) #1

declare dso_local i32 @FAIL_IF(i64) #1

declare dso_local i64 @load_immediate(%struct.sljit_compiler*, i64, i32) #1

declare dso_local i64 @emit_op_mem(%struct.sljit_compiler*, i64, i64, i64, i32, i64) #1

declare dso_local i64 @emit_single_op(%struct.sljit_compiler*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
