; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_rn42_task.c_enter_command_mode.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_rn42_task.c_enter_command_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prev_driver = common dso_local global i32 0, align 4
@rn42_config_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Entering config mode ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"$$$\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"v\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"+\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @enter_command_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enter_command_mode() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 (...) @host_get_driver()
  store i32 %2, i32* @prev_driver, align 4
  %3 = call i32 (...) @clear_keyboard()
  %4 = call i32 @host_set_driver(i32* @rn42_config_driver)
  %5 = call i32 (...) @rn42_disconnect()
  br label %6

6:                                                ; preds = %9, %0
  %7 = call i64 (...) @rn42_linked()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %6

10:                                               ; preds = %6
  %11 = call i32 @print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @wait_ms(i32 1100)
  %13 = call i8* @SEND_COMMAND(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @wait_ms(i32 600)
  %15 = call i32 (...) @rn42_print_response()
  %16 = call i8* @SEND_COMMAND(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %16, i8** %1, align 8
  %17 = load i8*, i8** %1, align 8
  %18 = call i64 @strncmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %17, i32 1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = call i8* @SEND_COMMAND(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %10
  ret void
}

declare dso_local i32 @host_get_driver(...) #1

declare dso_local i32 @clear_keyboard(...) #1

declare dso_local i32 @host_set_driver(i32*) #1

declare dso_local i32 @rn42_disconnect(...) #1

declare dso_local i64 @rn42_linked(...) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i8* @SEND_COMMAND(i8*) #1

declare dso_local i32 @rn42_print_response(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
