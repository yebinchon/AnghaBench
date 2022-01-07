; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_emit_cmp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_emit_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_jump = type { i32 }
%struct.sljit_compiler = type { i32 }

@SLJIT_IMM = common dso_local global i32 0, align 4
@SLJIT_I32_OP = common dso_local global i32 0, align 4
@SLJIT_REWRITABLE_JUMP = common dso_local global i32 0, align 4
@SLJIT_NOT_ZERO = common dso_local global i32 0, align 4
@SLJIT_SET_Z = common dso_local global i32 0, align 4
@VARIABLE_FLAG_SHIFT = common dso_local global i32 0, align 4
@SLJIT_SUB = common dso_local global i32 0, align 4
@SLJIT_UNUSED = common dso_local global i32 0, align 4
@SLJIT_EQUAL = common dso_local global i32 0, align 4
@SLJIT_NOT_EQUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sljit_jump* @sljit_emit_cmp(%struct.sljit_compiler* %0, i32 %1, i32 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.sljit_compiler*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %17 = call i32 (...) @CHECK_ERROR_PTR()
  %18 = load %struct.sljit_compiler*, %struct.sljit_compiler** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @check_sljit_emit_cmp(%struct.sljit_compiler* %18, i32 %19, i32 %20, i64 %21, i32 %22, i64 %23)
  %25 = call i32 @CHECK_PTR(i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 255
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @SLJIT_IMM, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %6
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @SLJIT_IMM, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %32, %6
  %39 = phi i1 [ false, %6 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @SLJIT_UNLIKELY(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  %44 = load i32, i32* %15, align 4
  switch i32 %44, label %53 [
    i32 133, label %45
    i32 134, label %46
    i32 135, label %47
    i32 132, label %48
    i32 129, label %49
    i32 130, label %50
    i32 131, label %51
    i32 128, label %52
  ]

45:                                               ; preds = %43
  store i32 135, i32* %15, align 4
  br label %53

46:                                               ; preds = %43
  store i32 132, i32* %15, align 4
  br label %53

47:                                               ; preds = %43
  store i32 133, i32* %15, align 4
  br label %53

48:                                               ; preds = %43
  store i32 134, i32* %15, align 4
  br label %53

49:                                               ; preds = %43
  store i32 131, i32* %15, align 4
  br label %53

50:                                               ; preds = %43
  store i32 128, i32* %15, align 4
  br label %53

51:                                               ; preds = %43
  store i32 129, i32* %15, align 4
  br label %53

52:                                               ; preds = %43
  store i32 130, i32* %15, align 4
  br label %53

53:                                               ; preds = %43, %52, %51, %50, %49, %48, %47, %46, %45
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SLJIT_I32_OP, align 4
  %57 = load i32, i32* @SLJIT_REWRITABLE_JUMP, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = or i32 %54, %59
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i64, i64* %10, align 8
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %12, align 8
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %16, align 8
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %53, %38
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @SLJIT_NOT_ZERO, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @SLJIT_SET_Z, align 4
  store i32 %72, i32* %13, align 4
  br label %77

73:                                               ; preds = %67
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @VARIABLE_FLAG_SHIFT, align 4
  %76 = shl i32 %74, %75
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %73, %71
  %78 = load %struct.sljit_compiler*, %struct.sljit_compiler** %7, align 8
  %79 = load i32, i32* @SLJIT_SUB, align 4
  %80 = load i32, i32* %13, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @SLJIT_I32_OP, align 4
  %84 = and i32 %82, %83
  %85 = or i32 %81, %84
  %86 = load i32, i32* @SLJIT_UNUSED, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i64, i64* %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i64, i64* %12, align 8
  %91 = call i32 @sljit_emit_op2(%struct.sljit_compiler* %78, i32 %85, i32 %86, i32 0, i32 %87, i64 %88, i32 %89, i64 %90)
  %92 = call i32 @PTR_FAIL_IF(i32 %91)
  %93 = load %struct.sljit_compiler*, %struct.sljit_compiler** %7, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @SLJIT_REWRITABLE_JUMP, align 4
  %97 = load i32, i32* @SLJIT_I32_OP, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = or i32 %94, %99
  %101 = call %struct.sljit_jump* @sljit_emit_jump(%struct.sljit_compiler* %93, i32 %100)
  ret %struct.sljit_jump* %101
}

declare dso_local i32 @CHECK_ERROR_PTR(...) #1

declare dso_local i32 @CHECK_PTR(i32) #1

declare dso_local i32 @check_sljit_emit_cmp(%struct.sljit_compiler*, i32, i32, i64, i32, i64) #1

declare dso_local i64 @SLJIT_UNLIKELY(i32) #1

declare dso_local i32 @PTR_FAIL_IF(i32) #1

declare dso_local i32 @sljit_emit_op2(%struct.sljit_compiler*, i32, i32, i32, i32, i64, i32, i64) #1

declare dso_local %struct.sljit_jump* @sljit_emit_jump(%struct.sljit_compiler*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
