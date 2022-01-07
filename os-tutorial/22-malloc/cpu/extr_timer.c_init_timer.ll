; ModuleID = '/home/carl/AnghaBench/os-tutorial/22-malloc/cpu/extr_timer.c_init_timer.c'
source_filename = "/home/carl/AnghaBench/os-tutorial/22-malloc/cpu/extr_timer.c_init_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ0 = common dso_local global i32 0, align 4
@timer_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_timer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @IRQ0, align 4
  %7 = load i32, i32* @timer_callback, align 4
  %8 = call i32 @register_interrupt_handler(i32 %6, i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = sdiv i32 1193180, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 255
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 255
  store i32 %15, i32* %5, align 4
  %16 = call i32 @port_byte_out(i32 67, i32 54)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @port_byte_out(i32 64, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @port_byte_out(i32 64, i32 %19)
  ret void
}

declare dso_local i32 @register_interrupt_handler(i32, i32) #1

declare dso_local i32 @port_byte_out(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
