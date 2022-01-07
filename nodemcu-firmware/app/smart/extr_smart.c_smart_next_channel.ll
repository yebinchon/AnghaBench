; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/smart/extr_smart.c_smart_next_channel.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/smart/extr_smart.c_smart_next_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@cur_channel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"switch to channel %d\0A\00", align 1
@am = common dso_local global i32 0, align 4
@ADDR_MAP_NUM = common dso_local global i32 0, align 4
@sta_conf = common dso_local global %struct.TYPE_2__* null, align 8
@got_ssid = common dso_local global i32 0, align 4
@SSID_BIT_MAX = common dso_local global i32 0, align 4
@got_password = common dso_local global i32 0, align 4
@PWD_BIT_MAX = common dso_local global i32 0, align 4
@ssid_nibble = common dso_local global i32 0, align 4
@SSID_NIBBLE_MAX = common dso_local global i32 0, align 4
@password_nibble = common dso_local global i32 0, align 4
@PWD_NIBBLE_MAX = common dso_local global i32 0, align 4
@smart_timer = common dso_local global i32 0, align 4
@TIME_OUT_PER_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smart_next_channel() #0 {
  %1 = call i32 (...) @smart_disable()
  %2 = load i32, i32* @cur_channel, align 4
  switch i32 %2, label %14 [
    i32 1, label %3
    i32 2, label %4
    i32 3, label %4
    i32 4, label %4
    i32 5, label %7
    i32 6, label %8
    i32 7, label %9
    i32 8, label %9
    i32 9, label %9
    i32 10, label %9
    i32 11, label %9
    i32 12, label %9
    i32 13, label %12
    i32 128, label %13
  ]

3:                                                ; preds = %0
  store i32 128, i32* @cur_channel, align 4
  br label %15

4:                                                ; preds = %0, %0, %0
  %5 = load i32, i32* @cur_channel, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @cur_channel, align 4
  br label %15

7:                                                ; preds = %0
  store i32 7, i32* @cur_channel, align 4
  br label %15

8:                                                ; preds = %0
  store i32 1, i32* @cur_channel, align 4
  br label %15

9:                                                ; preds = %0, %0, %0, %0, %0, %0
  %10 = load i32, i32* @cur_channel, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @cur_channel, align 4
  br label %15

12:                                               ; preds = %0
  store i32 6, i32* @cur_channel, align 4
  br label %15

13:                                               ; preds = %0
  store i32 2, i32* @cur_channel, align 4
  br label %15

14:                                               ; preds = %0
  store i32 6, i32* @cur_channel, align 4
  br label %15

15:                                               ; preds = %14, %13, %12, %9, %8, %7, %4, %3
  %16 = load i32, i32* @cur_channel, align 4
  %17 = call i32 @NODE_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @cur_channel, align 4
  %19 = call i32 @wifi_set_channel(i32 %18)
  %20 = load i32, i32* @am, align 4
  %21 = load i32, i32* @ADDR_MAP_NUM, align 4
  %22 = call i32 @reset_map(i32 %20, i32 %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sta_conf, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memset(i32 %25, i32 0, i32 4)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sta_conf, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memset(i32 %29, i32 0, i32 4)
  %31 = load i32, i32* @got_ssid, align 4
  %32 = load i32, i32* @SSID_BIT_MAX, align 4
  %33 = call i32 @memset(i32 %31, i32 0, i32 %32)
  %34 = load i32, i32* @got_password, align 4
  %35 = load i32, i32* @PWD_BIT_MAX, align 4
  %36 = call i32 @memset(i32 %34, i32 0, i32 %35)
  %37 = load i32, i32* @ssid_nibble, align 4
  %38 = load i32, i32* @SSID_NIBBLE_MAX, align 4
  %39 = call i32 @memset(i32 %37, i32 0, i32 %38)
  %40 = load i32, i32* @password_nibble, align 4
  %41 = load i32, i32* @PWD_NIBBLE_MAX, align 4
  %42 = call i32 @memset(i32 %40, i32 0, i32 %41)
  %43 = call i32 @os_timer_disarm(i32* @smart_timer)
  %44 = load i32, i32* @TIME_OUT_PER_CHANNEL, align 4
  %45 = call i32 @os_timer_arm(i32* @smart_timer, i32 %44, i32 0)
  %46 = call i32 (...) @smart_enable()
  ret void
}

declare dso_local i32 @smart_disable(...) #1

declare dso_local i32 @NODE_ERR(i8*, i32) #1

declare dso_local i32 @wifi_set_channel(i32) #1

declare dso_local i32 @reset_map(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @os_timer_arm(i32*, i32, i32) #1

declare dso_local i32 @smart_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
