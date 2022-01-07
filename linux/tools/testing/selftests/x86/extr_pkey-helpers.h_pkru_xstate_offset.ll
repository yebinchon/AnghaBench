; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_pkey-helpers.h_pkru_xstate_offset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_pkey-helpers.h_pkru_xstate_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XSTATE_PKRU_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"could not find size/offset of PKRU in xsave state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkru_xstate_offset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 13, i64* %8, align 8
  %10 = load i32, i32* @XSTATE_PKRU_BIT, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i64, i64* %8, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %9, align 4
  store i32 %13, i32* %4, align 4
  %14 = call i32 @__cpuid(i32* %2, i32* %3, i32* %4, i32* %5)
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @XSTATE_PKRU_BIT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %18, %0
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @__cpuid(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
