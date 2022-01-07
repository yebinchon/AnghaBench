; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_send_client_window_status.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_send_client_window_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rdp_send_client_window_status.current_status = internal global i32 1, align 4
@g_width = common dso_local global i32 0, align 4
@g_height = common dso_local global i32 0, align 4
@RDP_DATA_PDU_CLIENT_WINDOW_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdp_send_client_window_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @rdp_send_client_window_status.current_status, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %31

8:                                                ; preds = %1
  %9 = call i32 @rdp_init_data(i32 12)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @out_uint32_le(i32 %10, i32 %11)
  %13 = load i32, i32* %2, align 4
  switch i32 %13, label %24 [
    i32 0, label %14
    i32 1, label %15
  ]

14:                                               ; preds = %8
  br label %24

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @out_uint32_le(i32 %16, i32 0)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @g_width, align 4
  %20 = call i32 @out_uint16_le(i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @g_height, align 4
  %23 = call i32 @out_uint16_le(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %8, %15, %14
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @s_mark_end(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @RDP_DATA_PDU_CLIENT_WINDOW_STATUS, align 4
  %29 = call i32 @rdp_send_data(i32 %27, i32 %28)
  %30 = load i32, i32* %2, align 4
  store i32 %30, i32* @rdp_send_client_window_status.current_status, align 4
  br label %31

31:                                               ; preds = %24, %7
  ret void
}

declare dso_local i32 @rdp_init_data(i32) #1

declare dso_local i32 @out_uint32_le(i32, i32) #1

declare dso_local i32 @out_uint16_le(i32, i32) #1

declare dso_local i32 @s_mark_end(i32) #1

declare dso_local i32 @rdp_send_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
