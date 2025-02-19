; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ps2_usart.c_ps2_host_recv.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ps2_usart.c_ps2_host_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PS2_ERR_NONE = common dso_local global i32 0, align 4
@ps2_error = common dso_local global i32 0, align 4
@PS2_ERR_NODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps2_host_recv() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @pbuf_has_data()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @PS2_ERR_NONE, align 4
  store i32 %5, i32* @ps2_error, align 4
  %6 = call i32 (...) @pbuf_dequeue()
  store i32 %6, i32* %1, align 4
  br label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @PS2_ERR_NODATA, align 4
  store i32 %8, i32* @ps2_error, align 4
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %7, %4
  %10 = load i32, i32* %1, align 4
  ret i32 %10
}

declare dso_local i64 @pbuf_has_data(...) #1

declare dso_local i32 @pbuf_dequeue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
