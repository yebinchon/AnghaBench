; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_main.c_debug_ring_callback.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_main.c_debug_ring_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@ENTER_BOOTLOADER_MAGIC = common dso_local global i32 0, align 4
@enter_bootloader_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"switching USB to CDP mode\0A\00", align 1
@current_board = common dso_local global %struct.TYPE_2__* null, align 8
@USB_POWER_CDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"switching USB to client mode\0A\00", align 1
@USB_POWER_CLIENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"switching USB to DCP mode\0A\00", align 1
@USB_POWER_DCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_ring_callback(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  store i32* %0, i32** %2, align 8
  br label %4

4:                                                ; preds = %57, %1
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @getc(i32* %5, i8* %3)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %58

8:                                                ; preds = %4
  %9 = load i32*, i32** %2, align 8
  %10 = load i8, i8* %3, align 1
  %11 = call i32 @putc(i32* %9, i8 signext %10)
  %12 = load i8, i8* %3, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 122
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i32, i32* @ENTER_BOOTLOADER_MAGIC, align 4
  store i32 %16, i32* @enter_bootloader_mode, align 4
  %17 = call i32 (...) @NVIC_SystemReset()
  br label %18

18:                                               ; preds = %15, %8
  %19 = load i8, i8* %3, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 120
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 (...) @NVIC_SystemReset()
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i8, i8* %3, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 67
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load i32, i32* @USB_POWER_CDP, align 4
  %34 = call i32 %32(i32 %33)
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i8, i8* %3, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 99
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (i32)*, i32 (i32)** %42, align 8
  %44 = load i32, i32* @USB_POWER_CLIENT, align 4
  %45 = call i32 %43(i32 %44)
  br label %46

46:                                               ; preds = %39, %35
  %47 = load i8, i8* %3, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 68
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (i32)*, i32 (i32)** %53, align 8
  %55 = load i32, i32* @USB_POWER_DCP, align 4
  %56 = call i32 %54(i32 %55)
  br label %57

57:                                               ; preds = %50, %46
  br label %4

58:                                               ; preds = %4
  ret void
}

declare dso_local i64 @getc(i32*, i8*) #1

declare dso_local i32 @putc(i32*, i8 signext) #1

declare dso_local i32 @NVIC_SystemReset(...) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
