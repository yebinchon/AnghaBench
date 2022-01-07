; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/nios/gnu/extr_nios2-dis.c_nios2_control_regs.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/nios/gnu/extr_nios2-dis.c_nios2_control_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nios2_reg = type { i32 }

@nios2_control_regs.cached = internal global %struct.nios2_reg* null, align 8
@NUMREGNAMES = common dso_local global i32 0, align 4
@nios2_num_regs = common dso_local global i32 0, align 4
@nios2_regs = common dso_local global %struct.nios2_reg* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nios2_reg* ()* @nios2_control_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nios2_reg* @nios2_control_regs() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.nios2_reg*, %struct.nios2_reg** @nios2_control_regs.cached, align 8
  %3 = icmp ne %struct.nios2_reg* %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @NUMREGNAMES, align 4
  store i32 %5, i32* %1, align 4
  br label %6

6:                                                ; preds = %25, %4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @nios2_num_regs, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load %struct.nios2_reg*, %struct.nios2_reg** @nios2_regs, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.nios2_reg, %struct.nios2_reg* %11, i64 %13
  %15 = getelementptr inbounds %struct.nios2_reg, %struct.nios2_reg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcmp(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = load %struct.nios2_reg*, %struct.nios2_reg** @nios2_regs, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nios2_reg, %struct.nios2_reg* %20, i64 %22
  store %struct.nios2_reg* %23, %struct.nios2_reg** @nios2_control_regs.cached, align 8
  br label %28

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %6

28:                                               ; preds = %19, %6
  %29 = load %struct.nios2_reg*, %struct.nios2_reg** @nios2_control_regs.cached, align 8
  %30 = call i32 @assert(%struct.nios2_reg* %29)
  br label %31

31:                                               ; preds = %28, %0
  %32 = load %struct.nios2_reg*, %struct.nios2_reg** @nios2_control_regs.cached, align 8
  ret %struct.nios2_reg* %32
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @assert(%struct.nios2_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
