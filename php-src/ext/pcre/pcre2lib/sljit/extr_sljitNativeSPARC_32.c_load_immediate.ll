; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeSPARC_32.c_load_immediate.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeSPARC_32.c_load_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32 }

@SIMM_MAX = common dso_local global i32 0, align 4
@SIMM_MIN = common dso_local global i32 0, align 4
@OR = common dso_local global i32 0, align 4
@SETHI = common dso_local global i32 0, align 4
@IMM_ARG = common dso_local global i32 0, align 4
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
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SIMM_MIN, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %17 = load i32, i32* @OR, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @D(i32 %18)
  %20 = or i32 %17, %19
  %21 = call i32 @S1(i32 0)
  %22 = or i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @IMM(i32 %23)
  %25 = or i32 %22, %24
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @DR(i32 %26)
  %28 = call i32 @push_inst(%struct.sljit_compiler* %16, i32 %25, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %67

29:                                               ; preds = %11, %3
  %30 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %31 = load i32, i32* @SETHI, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @D(i32 %32)
  %34 = or i32 %31, %33
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 10
  %37 = and i32 %36, 4194303
  %38 = or i32 %34, %37
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @DR(i32 %39)
  %41 = call i32 @push_inst(%struct.sljit_compiler* %30, i32 %38, i32 %40)
  %42 = call i32 @FAIL_IF(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 1023
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %29
  %47 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %48 = load i32, i32* @OR, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @D(i32 %49)
  %51 = or i32 %48, %50
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @S1(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @IMM_ARG, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 1023
  %59 = or i32 %56, %58
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @DR(i32 %60)
  %62 = call i32 @push_inst(%struct.sljit_compiler* %47, i32 %59, i32 %61)
  br label %65

63:                                               ; preds = %29
  %64 = load i32, i32* @SLJIT_SUCCESS, align 4
  br label %65

65:                                               ; preds = %63, %46
  %66 = phi i32 [ %62, %46 ], [ %64, %63 ]
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %15
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @push_inst(%struct.sljit_compiler*, i32, i32) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @S1(i32) #1

declare dso_local i32 @IMM(i32) #1

declare dso_local i32 @DR(i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
