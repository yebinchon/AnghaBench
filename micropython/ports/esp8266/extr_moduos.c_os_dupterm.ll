; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_moduos.c_os_dupterm.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_moduos.c_os_dupterm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i64, i32*)* }

@mp_uos_dupterm_obj = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@pyb_uart_type = common dso_local global i32 0, align 4
@uart_attached_to_dupterm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_dupterm(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32 (i64, i32*)*, i32 (i64, i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mp_uos_dupterm_obj, i32 0, i32 0, i32 0), align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 %6(i64 %7, i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @mp_obj_get_type(i32 %12)
  %14 = icmp eq i32* %13, @pyb_uart_type
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @uart_attached_to_dupterm, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @uart_attached_to_dupterm, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32* @mp_obj_get_type(i32 %19)
  %21 = icmp eq i32* %20, @pyb_uart_type
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @uart_attached_to_dupterm, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* @uart_attached_to_dupterm, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32* @mp_obj_get_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
