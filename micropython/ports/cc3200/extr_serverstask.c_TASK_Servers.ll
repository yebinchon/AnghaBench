; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/extr_serverstask.c_TASK_Servers.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/extr_serverstask.c_TASK_Servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@servers_user = common dso_local global i32 0, align 4
@SERVERS_DEF_USER = common dso_local global i32 0, align 4
@servers_pass = common dso_local global i32 0, align 4
@SERVERS_DEF_PASS = common dso_local global i32 0, align 4
@servers_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sleep_sockets = common dso_local global i32 0, align 4
@SERVERS_CYCLE_TIME_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TASK_Servers(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @servers_user, align 4
  %5 = load i32, i32* @SERVERS_DEF_USER, align 4
  %6 = call i32 @strcpy(i32 %4, i32 %5)
  %7 = load i32, i32* @servers_pass, align 4
  %8 = load i32, i32* @SERVERS_DEF_PASS, align 4
  %9 = call i32 @strcpy(i32 %7, i32 %8)
  %10 = call i32 (...) @telnet_init()
  %11 = call i32 (...) @ftp_init()
  br label %12

12:                                               ; preds = %59, %1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @servers_data, i32 0, i32 0), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = call i32 (...) @telnet_enable()
  %17 = call i32 (...) @ftp_enable()
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @servers_data, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @servers_data, i32 0, i32 0), align 4
  br label %37

18:                                               ; preds = %12
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @servers_data, i32 0, i32 2), align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = call i32 (...) @telnet_disable()
  %23 = call i32 (...) @ftp_disable()
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @servers_data, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @servers_data, i32 0, i32 1), align 4
  br label %36

24:                                               ; preds = %18
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @servers_data, i32 0, i32 3), align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @servers_data, i32 0, i32 3), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @servers_data, i32 0, i32 1), align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = call i32 (...) @telnet_reset()
  %32 = call i32 (...) @ftp_reset()
  br label %33

33:                                               ; preds = %30, %27
  %34 = call i32 (...) @modusocket_close_all_user_sockets()
  br label %35

35:                                               ; preds = %33, %24
  br label %36

36:                                               ; preds = %35, %21
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 (...) @telnet_run()
  br label %44

42:                                               ; preds = %37
  %43 = call i32 (...) @ftp_run()
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* @sleep_sockets, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = call i32 @pybwdt_srv_sleeping(i32 1)
  %49 = call i32 (...) @modusocket_enter_sleep()
  %50 = call i32 @pybwdt_srv_sleeping(i32 0)
  %51 = load i32, i32* @SERVERS_CYCLE_TIME_MS, align 4
  %52 = mul nsw i32 %51, 2
  %53 = call i32 @mp_hal_delay_ms(i32 %52)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @servers_data, i32 0, i32 4), align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @servers_data, i32 0, i32 4), align 4
  %57 = call i32 (...) @wlan_off_on()
  br label %58

58:                                               ; preds = %56, %47
  store i32 0, i32* @sleep_sockets, align 4
  br label %59

59:                                               ; preds = %58, %44
  %60 = call i32 (...) @pybwdt_srv_alive()
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 0, i32 1
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* @SERVERS_CYCLE_TIME_MS, align 4
  %66 = call i32 @mp_hal_delay_ms(i32 %65)
  br label %12
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @telnet_init(...) #1

declare dso_local i32 @ftp_init(...) #1

declare dso_local i32 @telnet_enable(...) #1

declare dso_local i32 @ftp_enable(...) #1

declare dso_local i32 @telnet_disable(...) #1

declare dso_local i32 @ftp_disable(...) #1

declare dso_local i32 @telnet_reset(...) #1

declare dso_local i32 @ftp_reset(...) #1

declare dso_local i32 @modusocket_close_all_user_sockets(...) #1

declare dso_local i32 @telnet_run(...) #1

declare dso_local i32 @ftp_run(...) #1

declare dso_local i32 @pybwdt_srv_sleeping(i32) #1

declare dso_local i32 @modusocket_enter_sleep(...) #1

declare dso_local i32 @mp_hal_delay_ms(i32) #1

declare dso_local i32 @wlan_off_on(...) #1

declare dso_local i32 @pybwdt_srv_alive(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
