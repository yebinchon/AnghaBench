; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_process_srv_info.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_process_srv_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_server_rdp_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Server RDP version is %d\0A\00", align 1
@RDP_V4 = common dso_local global i32 0, align 4
@g_rdp_version = common dso_local global i32 0, align 4
@g_server_depth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sec_process_srv_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_process_srv_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @g_server_rdp_version, align 4
  %5 = call i32 @in_uint16_le(i32 %3, i32 %4)
  %6 = load i32, i32* @g_server_rdp_version, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @DEBUG_RDP5(i8* %8)
  %10 = load i32, i32* @g_server_rdp_version, align 4
  %11 = icmp eq i32 1, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @RDP_V4, align 4
  store i32 %13, i32* @g_rdp_version, align 4
  store i32 8, i32* @g_server_depth, align 4
  br label %14

14:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
