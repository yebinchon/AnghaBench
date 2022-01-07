; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_operand_also_qualified_p.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-opc.c_operand_also_qualified_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aarch64_opnd_info = type { i32, i64 }

@aarch64_operands = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aarch64_opnd_info*, i32)* @operand_also_qualified_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @operand_also_qualified_p(%struct.aarch64_opnd_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aarch64_opnd_info*, align 8
  %5 = alloca i32, align 4
  store %struct.aarch64_opnd_info* %0, %struct.aarch64_opnd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.aarch64_opnd_info*, %struct.aarch64_opnd_info** %4, align 8
  %7 = getelementptr inbounds %struct.aarch64_opnd_info, %struct.aarch64_opnd_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %53 [
    i32 130, label %9
    i32 128, label %18
    i32 129, label %27
    i32 131, label %40
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 129
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.aarch64_opnd_info*, %struct.aarch64_opnd_info** %4, align 8
  %14 = call i32 @aarch64_stack_pointer_p(%struct.aarch64_opnd_info* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %55

17:                                               ; preds = %12, %9
  br label %54

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 131
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.aarch64_opnd_info*, %struct.aarch64_opnd_info** %4, align 8
  %23 = call i32 @aarch64_stack_pointer_p(%struct.aarch64_opnd_info* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %55

26:                                               ; preds = %21, %18
  br label %54

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 130
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i64, i64* @aarch64_operands, align 8
  %32 = load %struct.aarch64_opnd_info*, %struct.aarch64_opnd_info** %4, align 8
  %33 = getelementptr inbounds %struct.aarch64_opnd_info, %struct.aarch64_opnd_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = call i32 @operand_maybe_stack_pointer(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %55

39:                                               ; preds = %30, %27
  br label %54

40:                                               ; preds = %2
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 128
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i64, i64* @aarch64_operands, align 8
  %45 = load %struct.aarch64_opnd_info*, %struct.aarch64_opnd_info** %4, align 8
  %46 = getelementptr inbounds %struct.aarch64_opnd_info, %struct.aarch64_opnd_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = call i32 @operand_maybe_stack_pointer(i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %55

52:                                               ; preds = %43, %40
  br label %54

53:                                               ; preds = %2
  br label %54

54:                                               ; preds = %53, %52, %39, %26, %17
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %51, %38, %25, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @aarch64_stack_pointer_p(%struct.aarch64_opnd_info*) #1

declare dso_local i32 @operand_maybe_stack_pointer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
