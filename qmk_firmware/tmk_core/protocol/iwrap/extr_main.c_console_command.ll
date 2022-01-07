; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_main.c_console_command.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_main.c_console_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"\0ACommands for Bluetooth(WT12/iWRAP):\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"r: reset. software reset by watchdog\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"i: insomniac. prevent KB from sleeping\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"c: iwrap_call. CALL for BT connection.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"k: kill first connection.\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Del: unpair first pairing.\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"reset\0A\00", align 1
@insomniac = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"insomniac\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"not insomniac\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"iwrap_call()\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"kill\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"unpair\0A\00", align 1
@PCICR = common dso_local global i32 0, align 4
@PCMSK1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @console_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @console_command(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %37 [
    i32 104, label %5
    i32 63, label %5
    i32 114, label %13
    i32 105, label %16
    i32 99, label %28
    i32 107, label %31
    i32 127, label %34
  ]

5:                                                ; preds = %1, %1
  %6 = call i32 @print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 @print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %11 = call i32 @print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = call i32 @print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %15 = call i32 (...) @WD_AVR_RESET()
  store i32 1, i32* %2, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load i32, i32* @insomniac, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* @insomniac, align 4
  %21 = load i32, i32* @insomniac, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 @print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %27

25:                                               ; preds = %16
  %26 = call i32 @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %23
  store i32 1, i32* %2, align 4
  br label %38

28:                                               ; preds = %1
  %29 = call i32 @print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %30 = call i32 (...) @iwrap_call()
  store i32 1, i32* %2, align 4
  br label %38

31:                                               ; preds = %1
  %32 = call i32 @print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %33 = call i32 (...) @iwrap_kill()
  store i32 1, i32* %2, align 4
  br label %38

34:                                               ; preds = %1
  %35 = call i32 @print(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %36 = call i32 (...) @iwrap_unpair()
  store i32 1, i32* %2, align 4
  br label %38

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %34, %31, %28, %27, %13, %5
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @WD_AVR_RESET(...) #1

declare dso_local i32 @iwrap_call(...) #1

declare dso_local i32 @iwrap_kill(...) #1

declare dso_local i32 @iwrap_unpair(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
