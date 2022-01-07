; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-modules.c_Slot_inst16b_decode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-modules.c_Slot_inst16b_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @Slot_inst16b_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Slot_inst16b_decode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @Field_op0_Slot_inst16b_get(i32 %4)
  switch i32 %5, label %41 [
    i32 12, label %6
    i32 13, label %17
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @Field_i_Slot_inst16b_get(i32 %7)
  switch i32 %8, label %16 [
    i32 0, label %9
    i32 1, label %10
  ]

9:                                                ; preds = %6
  store i32 33, i32* %2, align 4
  br label %42

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @Field_z_Slot_inst16b_get(i32 %11)
  switch i32 %12, label %15 [
    i32 0, label %13
    i32 1, label %14
  ]

13:                                               ; preds = %10
  store i32 28, i32* %2, align 4
  br label %42

14:                                               ; preds = %10
  store i32 29, i32* %2, align 4
  br label %42

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %6, %15
  br label %41

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @Field_r_Slot_inst16b_get(i32 %18)
  switch i32 %19, label %40 [
    i32 0, label %20
    i32 15, label %21
  ]

20:                                               ; preds = %17
  store i32 32, i32* %2, align 4
  br label %42

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @Field_t_Slot_inst16b_get(i32 %22)
  switch i32 %23, label %39 [
    i32 0, label %24
    i32 1, label %25
    i32 2, label %26
    i32 3, label %27
    i32 6, label %33
  ]

24:                                               ; preds = %21
  store i32 35, i32* %2, align 4
  br label %42

25:                                               ; preds = %21
  store i32 15, i32* %2, align 4
  br label %42

26:                                               ; preds = %21
  store i32 325, i32* %2, align 4
  br label %42

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @Field_s_Slot_inst16b_get(i32 %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 34, i32* %2, align 4
  br label %42

32:                                               ; preds = %27
  br label %39

33:                                               ; preds = %21
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @Field_s_Slot_inst16b_get(i32 %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 30, i32* %2, align 4
  br label %42

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %21, %38, %32
  br label %40

40:                                               ; preds = %17, %39
  br label %41

41:                                               ; preds = %1, %40, %16
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %37, %31, %26, %25, %24, %20, %14, %13, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @Field_op0_Slot_inst16b_get(i32) #1

declare dso_local i32 @Field_i_Slot_inst16b_get(i32) #1

declare dso_local i32 @Field_z_Slot_inst16b_get(i32) #1

declare dso_local i32 @Field_r_Slot_inst16b_get(i32) #1

declare dso_local i32 @Field_t_Slot_inst16b_get(i32) #1

declare dso_local i32 @Field_s_Slot_inst16b_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
