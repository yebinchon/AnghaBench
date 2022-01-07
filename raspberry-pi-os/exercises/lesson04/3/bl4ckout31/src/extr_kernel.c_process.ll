; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/3/bl4ckout31/src/extr_kernel.c_process.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/3/bl4ckout31/src/extr_kernel.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 49
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 @set_fpsimd_reg0(i32 1)
  %14 = call i32 @set_fpsimd_reg2(i32 2)
  %15 = call i32 @set_fpsimd_reg31(i32 3)
  br label %20

16:                                               ; preds = %1
  %17 = call i32 @set_fpsimd_reg0(i32 5)
  %18 = call i32 @set_fpsimd_reg2(i32 6)
  %19 = call i32 @set_fpsimd_reg31(i32 7)
  br label %20

20:                                               ; preds = %16, %12
  br label %21

21:                                               ; preds = %20, %44
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 5
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = call i32 (...) @get_fpsimd_reg0()
  store i32 %26, i32* %4, align 4
  %27 = call i32 (...) @get_fpsimd_reg2()
  store i32 %27, i32* %5, align 4
  %28 = call i32 (...) @get_fpsimd_reg31()
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, 48
  %31 = call i32 @uart_send(i32 %30)
  %32 = call i32 @delay(i32 100000)
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, 48
  %35 = call i32 @uart_send(i32 %34)
  %36 = call i32 @delay(i32 100000)
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 48
  %39 = call i32 @uart_send(i32 %38)
  %40 = call i32 @delay(i32 100000)
  br label %41

41:                                               ; preds = %25
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %22

44:                                               ; preds = %22
  br label %21
}

declare dso_local i32 @set_fpsimd_reg0(i32) #1

declare dso_local i32 @set_fpsimd_reg2(i32) #1

declare dso_local i32 @set_fpsimd_reg31(i32) #1

declare dso_local i32 @get_fpsimd_reg0(...) #1

declare dso_local i32 @get_fpsimd_reg2(...) #1

declare dso_local i32 @get_fpsimd_reg31(...) #1

declare dso_local i32 @uart_send(i32) #1

declare dso_local i32 @delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
