; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_evnt_handler.c_set_socket_active_status.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_evnt_handler.c_set_socket_active_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@socket_active_status = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_socket_active_status(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @M_IS_VALID_SD(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @M_IS_VALID_STATUS(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 1, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* @socket_active_status, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* @socket_active_status, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* @socket_active_status, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* @socket_active_status, align 4
  br label %23

23:                                               ; preds = %12, %8, %2
  ret void
}

declare dso_local i64 @M_IS_VALID_SD(i32) #1

declare dso_local i64 @M_IS_VALID_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
