; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/converter/sun_usb/extr_command_extra.c_command_extra.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/converter/sun_usb/extr_command_extra.c_command_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"\0A\0A----- Sun converter Help -----\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Home:        Toggle Bell\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"End:         Toggle Click\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"PgUp:        LED all On\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"PgDown:      LED all Off\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Insert:      Layout\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Delete:      Reset\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Reset\0A\00", align 1
@sun_bell = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"Bell On\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Bell Off\0A\00", align 1
@sun_click = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"Click On\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Click Off\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"LED all on\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"LED all off\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"layout\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Unknown extra command: %02X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @command_extra(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %55 [
    i32 133, label %5
    i32 128, label %5
    i32 135, label %13
    i32 132, label %16
    i32 134, label %30
    i32 129, label %44
    i32 130, label %48
    i32 131, label %52
  ]

5:                                                ; preds = %1, %1
  %6 = call i32 @print(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 @print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %11 = call i32 @print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %59

13:                                               ; preds = %1
  %14 = call i32 @print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %15 = call i32 @serial_send(i32 1)
  br label %58

16:                                               ; preds = %1
  %17 = load i32, i32* @sun_bell, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* @sun_bell, align 4
  %21 = load i32, i32* @sun_bell, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = call i32 @print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %25 = call i32 @serial_send(i32 2)
  br label %29

26:                                               ; preds = %16
  %27 = call i32 @print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %28 = call i32 @serial_send(i32 3)
  br label %29

29:                                               ; preds = %26, %23
  br label %58

30:                                               ; preds = %1
  %31 = load i32, i32* @sun_click, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* @sun_click, align 4
  %35 = load i32, i32* @sun_click, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = call i32 @print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %39 = call i32 @serial_send(i32 10)
  br label %43

40:                                               ; preds = %30
  %41 = call i32 @print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %42 = call i32 @serial_send(i32 11)
  br label %43

43:                                               ; preds = %40, %37
  br label %58

44:                                               ; preds = %1
  %45 = call i32 @print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %46 = call i32 @serial_send(i32 14)
  %47 = call i32 @serial_send(i32 255)
  br label %58

48:                                               ; preds = %1
  %49 = call i32 @print(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %50 = call i32 @serial_send(i32 14)
  %51 = call i32 @serial_send(i32 0)
  br label %58

52:                                               ; preds = %1
  %53 = call i32 @print(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %54 = call i32 @serial_send(i32 15)
  br label %58

55:                                               ; preds = %1
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @xprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %56)
  store i32 0, i32* %2, align 4
  br label %59

58:                                               ; preds = %52, %48, %44, %43, %29, %13
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %55, %5
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @serial_send(i32) #1

declare dso_local i32 @xprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
