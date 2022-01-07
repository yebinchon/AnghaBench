; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_onewire.c_onewire_write_bit.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_onewire.c_onewire_write_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @onewire_write_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onewire_write_bit(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = call i32 (...) @noInterrupts()
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @DIRECT_WRITE_LOW(i32 %12)
  %14 = call i32 @delayMicroseconds(i32 5)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @DIRECT_WRITE_HIGH(i32 %18)
  br label %23

20:                                               ; preds = %10
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @DIRECT_MODE_INPUT(i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = call i32 @delayMicroseconds(i32 8)
  %25 = call i32 (...) @interrupts()
  %26 = call i32 @delayMicroseconds(i32 52)
  br label %43

27:                                               ; preds = %3
  %28 = call i32 (...) @noInterrupts()
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @DIRECT_WRITE_LOW(i32 %29)
  %31 = call i32 @delayMicroseconds(i32 65)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @DIRECT_WRITE_HIGH(i32 %35)
  br label %40

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @DIRECT_MODE_INPUT(i32 %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = call i32 (...) @interrupts()
  %42 = call i32 @delayMicroseconds(i32 5)
  br label %43

43:                                               ; preds = %40, %23
  ret void
}

declare dso_local i32 @noInterrupts(...) #1

declare dso_local i32 @DIRECT_WRITE_LOW(i32) #1

declare dso_local i32 @delayMicroseconds(i32) #1

declare dso_local i32 @DIRECT_WRITE_HIGH(i32) #1

declare dso_local i32 @DIRECT_MODE_INPUT(i32) #1

declare dso_local i32 @interrupts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
