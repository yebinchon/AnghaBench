; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeMIPS_32.c_load_immediate.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeMIPS_32.c_load_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32 }

@ORI = common dso_local global i32 0, align 4
@SIMM_MIN = common dso_local global i32 0, align 4
@ADDIU = common dso_local global i32 0, align 4
@LUI = common dso_local global i32 0, align 4
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
  %9 = and i32 %8, -65536
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %13 = load i32, i32* @ORI, align 4
  %14 = call i32 @SA(i32 0)
  %15 = or i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @TA(i32 %16)
  %18 = or i32 %15, %17
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @IMM(i32 %19)
  %21 = or i32 %18, %20
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @push_inst(%struct.sljit_compiler* %12, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %78

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SIMM_MIN, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %33 = load i32, i32* @ADDIU, align 4
  %34 = call i32 @SA(i32 0)
  %35 = or i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @TA(i32 %36)
  %38 = or i32 %35, %37
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @IMM(i32 %39)
  %41 = or i32 %38, %40
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @push_inst(%struct.sljit_compiler* %32, i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %78

44:                                               ; preds = %27, %24
  %45 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %46 = load i32, i32* @LUI, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @TA(i32 %47)
  %49 = or i32 %46, %48
  %50 = load i32, i32* %7, align 4
  %51 = ashr i32 %50, 16
  %52 = call i32 @IMM(i32 %51)
  %53 = or i32 %49, %52
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @push_inst(%struct.sljit_compiler* %45, i32 %53, i32 %54)
  %56 = call i32 @FAIL_IF(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 65535
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %44
  %61 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %62 = load i32, i32* @ORI, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @SA(i32 %63)
  %65 = or i32 %62, %64
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @TA(i32 %66)
  %68 = or i32 %65, %67
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @IMM(i32 %69)
  %71 = or i32 %68, %70
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @push_inst(%struct.sljit_compiler* %61, i32 %71, i32 %72)
  br label %76

74:                                               ; preds = %44
  %75 = load i32, i32* @SLJIT_SUCCESS, align 4
  br label %76

76:                                               ; preds = %74, %60
  %77 = phi i32 [ %73, %60 ], [ %75, %74 ]
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %31, %11
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @push_inst(%struct.sljit_compiler*, i32, i32) #1

declare dso_local i32 @SA(i32) #1

declare dso_local i32 @TA(i32) #1

declare dso_local i32 @IMM(i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
