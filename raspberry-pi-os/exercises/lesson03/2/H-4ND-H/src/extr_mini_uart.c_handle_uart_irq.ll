; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson03/2/H-4ND-H/src/extr_mini_uart.c_handle_uart_irq.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson03/2/H-4ND-H/src/extr_mini_uart.c_handle_uart_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUX_MU_IIR_REG = common dso_local global i32 0, align 4
@AUX_MU_LSR_REG = common dso_local global i32 0, align 4
@AUX_MU_IO_REG = common dso_local global i32 0, align 4
@buffer = common dso_local global i8* null, align 8
@wr_buffer_index = common dso_local global i64 0, align 8
@BUFFER_SIZE = common dso_local global i64 0, align 8
@rd_buffer_index = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_uart_irq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = load i32, i32* @AUX_MU_IIR_REG, align 4
  %4 = call i32 @get32(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = and i32 %5, 6
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %29

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %27, %8
  %10 = load i32, i32* @AUX_MU_LSR_REG, align 4
  %11 = call i32 @get32(i32 %10)
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load i32, i32* @AUX_MU_IO_REG, align 4
  %16 = call i32 @get32(i32 %15)
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  %19 = load i8*, i8** @buffer, align 8
  %20 = load i64, i64* @wr_buffer_index, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* @wr_buffer_index, align 8
  %22 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8 %18, i8* %22, align 1
  %23 = load i64, i64* @wr_buffer_index, align 8
  %24 = load i64, i64* @BUFFER_SIZE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i64 0, i64* @wr_buffer_index, align 8
  br label %27

27:                                               ; preds = %26, %14
  br label %9

28:                                               ; preds = %9
  br label %29

29:                                               ; preds = %28, %0
  %30 = load i32, i32* %1, align 4
  %31 = and i32 %30, 6
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i32, i32* @AUX_MU_LSR_REG, align 4
  %36 = call i32 @get32(i32 %35)
  %37 = and i32 %36, 32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load i64, i64* @rd_buffer_index, align 8
  %41 = load i64, i64* @wr_buffer_index, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %58

44:                                               ; preds = %39
  %45 = load i8*, i8** @buffer, align 8
  %46 = load i64, i64* @rd_buffer_index, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* @rd_buffer_index, align 8
  %48 = getelementptr inbounds i8, i8* %45, i64 %46
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %2, align 1
  %50 = load i32, i32* @AUX_MU_IO_REG, align 4
  %51 = load i8, i8* %2, align 1
  %52 = call i32 @put32(i32 %50, i8 signext %51)
  %53 = load i64, i64* @rd_buffer_index, align 8
  %54 = load i64, i64* @BUFFER_SIZE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  store i64 0, i64* @rd_buffer_index, align 8
  br label %57

57:                                               ; preds = %56, %44
  br label %34

58:                                               ; preds = %43, %34
  br label %59

59:                                               ; preds = %58, %29
  ret void
}

declare dso_local i32 @get32(i32) #1

declare dso_local i32 @put32(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
