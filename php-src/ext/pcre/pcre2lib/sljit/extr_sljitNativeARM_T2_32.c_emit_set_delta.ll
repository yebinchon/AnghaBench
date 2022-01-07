; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeARM_T2_32.c_emit_set_delta.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeARM_T2_32.c_emit_set_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32 }

@ADDWI = common dso_local global i32 0, align 4
@INVALID_IMM = common dso_local global i32 0, align 4
@ADD_WI = common dso_local global i32 0, align 4
@SUBWI = common dso_local global i32 0, align 4
@SUB_WI = common dso_local global i32 0, align 4
@SLJIT_ERR_UNSUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sljit_compiler*, i32, i32, i32)* @emit_set_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emit_set_delta(%struct.sljit_compiler* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sljit_compiler*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sle i32 %13, 4095
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.sljit_compiler*, %struct.sljit_compiler** %6, align 8
  %17 = load i32, i32* @ADDWI, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @RD4(i32 %18)
  %20 = or i32 %17, %19
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @RN4(i32 %21)
  %23 = or i32 %20, %22
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @IMM12(i32 %24)
  %26 = or i32 %23, %25
  %27 = call i32 @push_inst32(%struct.sljit_compiler* %16, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %86

28:                                               ; preds = %12
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @get_imm(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @INVALID_IMM, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.sljit_compiler*, %struct.sljit_compiler** %6, align 8
  %36 = load i32, i32* @ADD_WI, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @RD4(i32 %37)
  %39 = or i32 %36, %38
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @RN4(i32 %40)
  %42 = or i32 %39, %41
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @push_inst32(%struct.sljit_compiler* %35, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %86

46:                                               ; preds = %28
  br label %84

47:                                               ; preds = %4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sle i32 %50, 4095
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.sljit_compiler*, %struct.sljit_compiler** %6, align 8
  %54 = load i32, i32* @SUBWI, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @RD4(i32 %55)
  %57 = or i32 %54, %56
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @RN4(i32 %58)
  %60 = or i32 %57, %59
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @IMM12(i32 %61)
  %63 = or i32 %60, %62
  %64 = call i32 @push_inst32(%struct.sljit_compiler* %53, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %86

65:                                               ; preds = %47
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @get_imm(i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @INVALID_IMM, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load %struct.sljit_compiler*, %struct.sljit_compiler** %6, align 8
  %73 = load i32, i32* @SUB_WI, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @RD4(i32 %74)
  %76 = or i32 %73, %75
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @RN4(i32 %77)
  %79 = or i32 %76, %78
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @push_inst32(%struct.sljit_compiler* %72, i32 %81)
  store i32 %82, i32* %5, align 4
  br label %86

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %83, %46
  %85 = load i32, i32* @SLJIT_ERR_UNSUPPORTED, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %71, %52, %34, %15
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @push_inst32(%struct.sljit_compiler*, i32) #1

declare dso_local i32 @RD4(i32) #1

declare dso_local i32 @RN4(i32) #1

declare dso_local i32 @IMM12(i32) #1

declare dso_local i32 @get_imm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
