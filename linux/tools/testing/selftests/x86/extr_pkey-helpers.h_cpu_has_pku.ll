; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_pkey-helpers.h_cpu_has_pku.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_pkey-helpers.h_cpu_has_pku.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_FEATURE_PKU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cpu does not have PKU\0A\00", align 1
@X86_FEATURE_OSPKE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cpu does not have OSPKE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cpu_has_pku to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_has_pku() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 7, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %6 = call i32 @__cpuid(i32* %2, i32* %3, i32* %4, i32* %5)
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @X86_FEATURE_PKU, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = call i32 @dprintf2(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %21

13:                                               ; preds = %0
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @X86_FEATURE_OSPKE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 @dprintf2(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %21

20:                                               ; preds = %13
  store i32 1, i32* %1, align 4
  br label %21

21:                                               ; preds = %20, %18, %11
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @__cpuid(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dprintf2(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
