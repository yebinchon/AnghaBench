; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_mcs.c_mcs_connect_finalize.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_mcs.c_mcs_connect_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@g_mcs_userid = common dso_local global i64 0, align 8
@MCS_USERCHANNEL_BASE = common dso_local global i64 0, align 8
@MCS_GLOBAL_CHANNEL = common dso_local global i64 0, align 8
@g_num_channels = common dso_local global i32 0, align 4
@g_channels = common dso_local global %struct.TYPE_2__* null, align 8
@True = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcs_connect_finalize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @mcs_send_connect_initial(i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @mcs_recv_connect_response(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %53

11:                                               ; preds = %1
  %12 = call i32 (...) @mcs_send_edrq()
  %13 = call i32 (...) @mcs_send_aurq()
  %14 = call i32 @mcs_recv_aucf(i64* @g_mcs_userid)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %53

17:                                               ; preds = %11
  %18 = load i64, i64* @g_mcs_userid, align 8
  %19 = load i64, i64* @MCS_USERCHANNEL_BASE, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @mcs_send_cjrq(i64 %20)
  %22 = call i32 (...) @mcs_recv_cjcf()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %53

25:                                               ; preds = %17
  %26 = load i64, i64* @MCS_GLOBAL_CHANNEL, align 8
  %27 = call i32 @mcs_send_cjrq(i64 %26)
  %28 = call i32 (...) @mcs_recv_cjcf()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %53

31:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @g_num_channels, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_channels, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @mcs_send_cjrq(i64 %42)
  %44 = call i32 (...) @mcs_recv_cjcf()
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  br label %53

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load i32, i32* @True, align 4
  store i32 %52, i32* %2, align 4
  br label %56

53:                                               ; preds = %46, %30, %24, %16, %10
  %54 = call i32 (...) @iso_disconnect()
  %55 = load i32, i32* @False, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %51
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @mcs_send_connect_initial(i32) #1

declare dso_local i32 @mcs_recv_connect_response(i32) #1

declare dso_local i32 @mcs_send_edrq(...) #1

declare dso_local i32 @mcs_send_aurq(...) #1

declare dso_local i32 @mcs_recv_aucf(i64*) #1

declare dso_local i32 @mcs_send_cjrq(i64) #1

declare dso_local i32 @mcs_recv_cjcf(...) #1

declare dso_local i32 @iso_disconnect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
