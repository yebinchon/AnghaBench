; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/mips/gnu/extr_mips-dis.c_choose_arch_by_number.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/mips/gnu/extr_mips-dis.c_choose_arch_by_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_arch_choice = type { i64, i64 }

@choose_arch_by_number.hint_bfd_mach = internal global i64 0, align 8
@choose_arch_by_number.hint_arch_choice = internal global %struct.mips_arch_choice* null, align 8
@mips_arch_choices = common dso_local global %struct.mips_arch_choice* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mips_arch_choice* (i64)* @choose_arch_by_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mips_arch_choice* @choose_arch_by_number(i64 %0) #0 {
  %2 = alloca %struct.mips_arch_choice*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mips_arch_choice*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* @choose_arch_by_number.hint_bfd_mach, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** @choose_arch_by_number.hint_arch_choice, align 8
  %11 = icmp ne %struct.mips_arch_choice* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** @choose_arch_by_number.hint_arch_choice, align 8
  %14 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @choose_arch_by_number.hint_bfd_mach, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** @choose_arch_by_number.hint_arch_choice, align 8
  store %struct.mips_arch_choice* %19, %struct.mips_arch_choice** %2, align 8
  br label %62

20:                                               ; preds = %12, %9, %1
  store i32 0, i32* %5, align 4
  store %struct.mips_arch_choice* null, %struct.mips_arch_choice** %4, align 8
  br label %21

21:                                               ; preds = %57, %20
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** @mips_arch_choices, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.mips_arch_choice* %23)
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %4, align 8
  %28 = icmp ne %struct.mips_arch_choice* %27, null
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi i1 [ false, %21 ], [ %29, %26 ]
  br i1 %31, label %32, label %60

32:                                               ; preds = %30
  %33 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** @mips_arch_choices, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %33, i64 %35
  %37 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %32
  %41 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** @mips_arch_choices, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %41, i64 %43
  %45 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** @mips_arch_choices, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %50, i64 %52
  store %struct.mips_arch_choice* %53, %struct.mips_arch_choice** %4, align 8
  %54 = load i64, i64* %3, align 8
  store i64 %54, i64* @choose_arch_by_number.hint_bfd_mach, align 8
  %55 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %4, align 8
  store %struct.mips_arch_choice* %55, %struct.mips_arch_choice** @choose_arch_by_number.hint_arch_choice, align 8
  br label %56

56:                                               ; preds = %49, %40, %32
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %21

60:                                               ; preds = %30
  %61 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %4, align 8
  store %struct.mips_arch_choice* %61, %struct.mips_arch_choice** %2, align 8
  br label %62

62:                                               ; preds = %60, %18
  %63 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %2, align 8
  ret %struct.mips_arch_choice* %63
}

declare dso_local i32 @ARRAY_SIZE(%struct.mips_arch_choice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
