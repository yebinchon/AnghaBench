; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cris/gnu/extr_cris-dis.c_spec_reg_info.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cris/gnu/extr_cris-dis.c_spec_reg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cris_spec_reg = type { i32, i32, i32, i32* }

@cris_spec_regs = common dso_local global %struct.cris_spec_reg* null, align 8
@cris_dis_v32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cris_spec_reg* (i32, i32)* @spec_reg_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cris_spec_reg* @spec_reg_info(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.cris_spec_reg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %67, %2
  %8 = load %struct.cris_spec_reg*, %struct.cris_spec_reg** @cris_spec_regs, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.cris_spec_reg, %struct.cris_spec_reg* %8, i64 %10
  %12 = getelementptr inbounds %struct.cris_spec_reg, %struct.cris_spec_reg* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %70

15:                                               ; preds = %7
  %16 = load %struct.cris_spec_reg*, %struct.cris_spec_reg** @cris_spec_regs, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cris_spec_reg, %struct.cris_spec_reg* %16, i64 %18
  %20 = getelementptr inbounds %struct.cris_spec_reg, %struct.cris_spec_reg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @cris_dis_v32, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load %struct.cris_spec_reg*, %struct.cris_spec_reg** @cris_spec_regs, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cris_spec_reg, %struct.cris_spec_reg* %29, i64 %31
  %33 = getelementptr inbounds %struct.cris_spec_reg, %struct.cris_spec_reg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %49 [
    i32 128, label %35
    i32 129, label %35
    i32 131, label %35
    i32 130, label %35
    i32 133, label %35
    i32 132, label %35
  ]

35:                                               ; preds = %28, %28, %28, %28, %28, %28
  %36 = load %struct.cris_spec_reg*, %struct.cris_spec_reg** @cris_spec_regs, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.cris_spec_reg, %struct.cris_spec_reg* %36, i64 %38
  %40 = getelementptr inbounds %struct.cris_spec_reg, %struct.cris_spec_reg* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load %struct.cris_spec_reg*, %struct.cris_spec_reg** @cris_spec_regs, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.cris_spec_reg, %struct.cris_spec_reg* %44, i64 %46
  store %struct.cris_spec_reg* %47, %struct.cris_spec_reg** %3, align 8
  br label %71

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %28, %48
  br label %50

50:                                               ; preds = %49
  br label %65

51:                                               ; preds = %24
  %52 = load %struct.cris_spec_reg*, %struct.cris_spec_reg** @cris_spec_regs, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cris_spec_reg, %struct.cris_spec_reg* %52, i64 %54
  %56 = getelementptr inbounds %struct.cris_spec_reg, %struct.cris_spec_reg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 132
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.cris_spec_reg*, %struct.cris_spec_reg** @cris_spec_regs, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.cris_spec_reg, %struct.cris_spec_reg* %60, i64 %62
  store %struct.cris_spec_reg* %63, %struct.cris_spec_reg** %3, align 8
  br label %71

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %15
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %7

70:                                               ; preds = %7
  store %struct.cris_spec_reg* null, %struct.cris_spec_reg** %3, align 8
  br label %71

71:                                               ; preds = %70, %59, %43
  %72 = load %struct.cris_spec_reg*, %struct.cris_spec_reg** %3, align 8
  ret %struct.cris_spec_reg* %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
