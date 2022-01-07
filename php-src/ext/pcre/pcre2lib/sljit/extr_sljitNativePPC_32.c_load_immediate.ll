; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativePPC_32.c_load_immediate.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativePPC_32.c_load_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32 }

@SIMM_MAX = common dso_local global i32 0, align 4
@SIMM_MIN = common dso_local global i32 0, align 4
@ADDI = common dso_local global i32 0, align 4
@ORI = common dso_local global i32 0, align 4
@TMP_ZERO = common dso_local global i32 0, align 4
@ADDIS = common dso_local global i32 0, align 4
@SLJIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sljit_compiler*, i32, i32)* @load_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_immediate(%struct.sljit_compiler* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sljit_compiler*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SIMM_MAX, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SIMM_MIN, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %17 = load i32, i32* @ADDI, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @D(i32 %18)
  %20 = or i32 %17, %19
  %21 = call i32 @A(i32 0)
  %22 = or i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @IMM(i32 %23)
  %25 = or i32 %22, %24
  %26 = call i32 @push_inst(%struct.sljit_compiler* %16, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %78

27:                                               ; preds = %11, %3
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, -65536
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %27
  %32 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %33 = load i32, i32* @ORI, align 4
  %34 = load i32, i32* @TMP_ZERO, align 4
  %35 = call i32 @S(i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @A(i32 %37)
  %39 = or i32 %36, %38
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @IMM(i32 %40)
  %42 = or i32 %39, %41
  %43 = call i32 @push_inst(%struct.sljit_compiler* %32, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %78

44:                                               ; preds = %27
  %45 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %46 = load i32, i32* @ADDIS, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @D(i32 %47)
  %49 = or i32 %46, %48
  %50 = call i32 @A(i32 0)
  %51 = or i32 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 16
  %54 = call i32 @IMM(i32 %53)
  %55 = or i32 %51, %54
  %56 = call i32 @push_inst(%struct.sljit_compiler* %45, i32 %55)
  %57 = call i32 @FAIL_IF(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 65535
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %44
  %62 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %63 = load i32, i32* @ORI, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @S(i32 %64)
  %66 = or i32 %63, %65
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @A(i32 %67)
  %69 = or i32 %66, %68
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @IMM(i32 %70)
  %72 = or i32 %69, %71
  %73 = call i32 @push_inst(%struct.sljit_compiler* %62, i32 %72)
  br label %76

74:                                               ; preds = %44
  %75 = load i32, i32* @SLJIT_SUCCESS, align 4
  br label %76

76:                                               ; preds = %74, %61
  %77 = phi i32 [ %73, %61 ], [ %75, %74 ]
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %31, %15
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @push_inst(%struct.sljit_compiler*, i32) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @A(i32) #1

declare dso_local i32 @IMM(i32) #1

declare dso_local i32 @S(i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
