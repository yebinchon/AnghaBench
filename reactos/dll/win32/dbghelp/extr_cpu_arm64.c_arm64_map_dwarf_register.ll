; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_cpu_arm64.c_arm64_map_dwarf_register.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_cpu_arm64.c_arm64_map_dwarf_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CV_ARM64_X0 = common dso_local global i32 0, align 4
@CV_ARM64_FP = common dso_local global i32 0, align 4
@CV_ARM64_LR = common dso_local global i32 0, align 4
@CV_ARM64_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Don't know how to map register %d\0A\00", align 1
@CV_ARM64_NOREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @arm64_map_dwarf_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm64_map_dwarf_register(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ule i32 %6, 28
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* @CV_ARM64_X0, align 4
  %10 = load i32, i32* %4, align 4
  %11 = add i32 %9, %10
  store i32 %11, i32* %3, align 4
  br label %31

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 29
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @CV_ARM64_FP, align 4
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 30
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @CV_ARM64_LR, align 4
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 31
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @CV_ARM64_SP, align 4
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @CV_ARM64_NOREG, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %25, %20, %15, %8
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
