; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_rn42_task.c_init_rn42.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_rn42_task.c_init_rn42.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SF,1\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"S-,TmkBT\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SS,Keyboard/Mouse\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SM,4\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"SW,8000\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"S~,6\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"SH,003C\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"SY,FFF4\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"R,1\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_rn42 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_rn42() #0 {
  %1 = load i32, i32* @config_mode, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32 (...) @enter_command_mode()
  br label %5

5:                                                ; preds = %3, %0
  %6 = call i32 @SEND_COMMAND(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @SEND_COMMAND(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @SEND_COMMAND(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @SEND_COMMAND(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 @SEND_COMMAND(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %11 = call i32 @SEND_COMMAND(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 @SEND_COMMAND(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %13 = call i32 @SEND_COMMAND(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %14 = call i32 @SEND_COMMAND(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %15 = load i32, i32* @config_mode, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = call i32 (...) @exit_command_mode()
  br label %19

19:                                               ; preds = %17, %5
  ret void
}

declare dso_local i32 @enter_command_mode(...) #1

declare dso_local i32 @SEND_COMMAND(i8*) #1

declare dso_local i32 @exit_command_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
