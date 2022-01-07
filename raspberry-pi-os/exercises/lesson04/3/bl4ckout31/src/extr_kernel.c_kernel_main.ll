; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/3/bl4ckout31/src/extr_kernel.c_kernel_main.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/3/bl4ckout31/src/extr_kernel.c_kernel_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@putc = common dso_local global i32 0, align 4
@process = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"12345\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"error while starting process 1\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"abcde\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"error while starting process 2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_main() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @uart_init()
  %3 = load i32, i32* @putc, align 4
  %4 = call i32 @init_printf(i32 0, i32 %3)
  %5 = call i32 (...) @irq_vector_init()
  %6 = call i32 (...) @timer_init()
  %7 = call i32 (...) @enable_interrupt_controller()
  %8 = call i32 (...) @enable_irq()
  %9 = call i32 @copy_process(i64 ptrtoint (i32* @process to i64), i64 ptrtoint ([6 x i8]* @.str to i64))
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %23

14:                                               ; preds = %0
  %15 = call i32 @copy_process(i64 ptrtoint (i32* @process to i64), i64 ptrtoint ([6 x i8]* @.str.2 to i64))
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %23

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %21
  %22 = call i32 (...) @schedule()
  br label %21

23:                                               ; preds = %18, %12
  ret void
}

declare dso_local i32 @uart_init(...) #1

declare dso_local i32 @init_printf(i32, i32) #1

declare dso_local i32 @irq_vector_init(...) #1

declare dso_local i32 @timer_init(...) #1

declare dso_local i32 @enable_interrupt_controller(...) #1

declare dso_local i32 @enable_irq(...) #1

declare dso_local i32 @copy_process(i64, i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
