; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_emit_fcmp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_emit_fcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_jump = type { i32 }
%struct.sljit_compiler = type { i32 }

@SLJIT_CMP_F64 = common dso_local global i32 0, align 4
@VARIABLE_FLAG_SHIFT = common dso_local global i32 0, align 4
@SLJIT_I32_OP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sljit_jump* @sljit_emit_fcmp(%struct.sljit_compiler* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sljit_compiler*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = call i32 (...) @CHECK_ERROR_PTR()
  %14 = load %struct.sljit_compiler*, %struct.sljit_compiler** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @check_sljit_emit_fcmp(%struct.sljit_compiler* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = call i32 @CHECK_PTR(i32 %20)
  %22 = load %struct.sljit_compiler*, %struct.sljit_compiler** %7, align 8
  %23 = load i32, i32* @SLJIT_CMP_F64, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 255
  %26 = load i32, i32* @VARIABLE_FLAG_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %23, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SLJIT_I32_OP, align 4
  %31 = and i32 %29, %30
  %32 = or i32 %28, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @sljit_emit_fop1(%struct.sljit_compiler* %22, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.sljit_compiler*, %struct.sljit_compiler** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.sljit_jump* @sljit_emit_jump(%struct.sljit_compiler* %38, i32 %39)
  ret %struct.sljit_jump* %40
}

declare dso_local i32 @CHECK_ERROR_PTR(...) #1

declare dso_local i32 @CHECK_PTR(i32) #1

declare dso_local i32 @check_sljit_emit_fcmp(%struct.sljit_compiler*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sljit_emit_fop1(%struct.sljit_compiler*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.sljit_jump* @sljit_emit_jump(%struct.sljit_compiler*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
