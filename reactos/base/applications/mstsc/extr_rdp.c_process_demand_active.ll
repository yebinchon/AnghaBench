; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_process_demand_active.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_process_demand_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_rdp_shareid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"DEMAND_ACTIVE(id=0x%x)\0A\00", align 1
@RDP_CTL_COOPERATE = common dso_local global i32 0, align 4
@RDP_CTL_REQUEST_CONTROL = common dso_local global i32 0, align 4
@RDP_INPUT_SYNCHRONIZE = common dso_local global i32 0, align 4
@g_numlock_sync = common dso_local global i64 0, align 8
@g_rdp_version = common dso_local global i64 0, align 8
@RDP_V5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @process_demand_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_demand_active(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @g_rdp_shareid, align 4
  %8 = call i32 @in_uint32_le(i32 %6, i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @in_uint16_le(i32 %9, i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @in_uint16_le(i32 %12, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @in_uint8s(i32 %15, i32 %16)
  %18 = load i32, i32* @g_rdp_shareid, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @DEBUG(i8* %20)
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @rdp_process_server_caps(i32 %22, i32 %23)
  %25 = call i32 (...) @rdp_send_confirm_active()
  %26 = call i32 (...) @rdp_send_synchronise()
  %27 = load i32, i32* @RDP_CTL_COOPERATE, align 4
  %28 = call i32 @rdp_send_control(i32 %27)
  %29 = load i32, i32* @RDP_CTL_REQUEST_CONTROL, align 4
  %30 = call i32 @rdp_send_control(i32 %29)
  %31 = call i32 @rdp_recv(i32* %3)
  %32 = call i32 @rdp_recv(i32* %3)
  %33 = call i32 @rdp_recv(i32* %3)
  %34 = load i32, i32* @RDP_INPUT_SYNCHRONIZE, align 4
  %35 = load i64, i64* @g_numlock_sync, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = call i32 (...) @read_keyboard_state()
  %39 = call i32 @ui_get_numlock_state(i32 %38)
  br label %41

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ %39, %37 ], [ 0, %40 ]
  %43 = call i32 @rdp_send_input(i32 0, i32 %34, i32 0, i32 %42, i32 0)
  %44 = load i64, i64* @g_rdp_version, align 8
  %45 = load i64, i64* @RDP_V5, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = call i32 (...) @rdp_enum_bmpcache2()
  %49 = call i32 @rdp_send_fonts(i32 3)
  br label %53

50:                                               ; preds = %41
  %51 = call i32 @rdp_send_fonts(i32 1)
  %52 = call i32 @rdp_send_fonts(i32 2)
  br label %53

53:                                               ; preds = %50, %47
  %54 = call i32 @rdp_recv(i32* %3)
  %55 = call i32 (...) @reset_order_state()
  ret void
}

declare dso_local i32 @in_uint32_le(i32, i32) #1

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @in_uint8s(i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @rdp_process_server_caps(i32, i32) #1

declare dso_local i32 @rdp_send_confirm_active(...) #1

declare dso_local i32 @rdp_send_synchronise(...) #1

declare dso_local i32 @rdp_send_control(i32) #1

declare dso_local i32 @rdp_recv(i32*) #1

declare dso_local i32 @rdp_send_input(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_get_numlock_state(i32) #1

declare dso_local i32 @read_keyboard_state(...) #1

declare dso_local i32 @rdp_enum_bmpcache2(...) #1

declare dso_local i32 @rdp_send_fonts(i32) #1

declare dso_local i32 @reset_order_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
