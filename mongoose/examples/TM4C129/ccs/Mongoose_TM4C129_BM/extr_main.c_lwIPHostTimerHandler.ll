; ModuleID = '/home/carl/AnghaBench/mongoose/examples/TM4C129/ccs/Mongoose_TM4C129_BM/extr_main.c_lwIPHostTimerHandler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/TM4C129/ccs/Mongoose_TM4C129_BM/extr_main.c_lwIPHostTimerHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lwIPHostTimerHandler.old_ip = internal global i32 129, align 4
@.str = private unnamed_addr constant [13 x i8] c"Link down.\0D\0A\00", align 1
@CLP_D2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Link up.\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"IP: http://%s/\0D\0A\00", align 1
@g_mgr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwIPHostTimerHandler() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @lwIPLocalIPAddrGet()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @lwIPHostTimerHandler.old_ip, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %6, label %24

6:                                                ; preds = %0
  %7 = load i32, i32* %1, align 4
  switch i32 %7, label %16 [
    i32 129, label %8
    i32 128, label %12
  ]

8:                                                ; preds = %6
  %9 = call i32 (i8*, ...) @UARTprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @CLP_D2, align 4
  %11 = call i32 @LEDWrite(i32 %10, i32 0)
  br label %22

12:                                               ; preds = %6
  %13 = call i32 (i8*, ...) @UARTprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @CLP_D2, align 4
  %15 = call i32 @LEDWrite(i32 %14, i32 0)
  br label %22

16:                                               ; preds = %6
  %17 = call i32 @ipaddr_ntoa(i32* %1)
  %18 = call i32 (i8*, ...) @UARTprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @CLP_D2, align 4
  %20 = load i32, i32* @CLP_D2, align 4
  %21 = call i32 @LEDWrite(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %12, %8
  %23 = load i32, i32* %1, align 4
  store i32 %23, i32* @lwIPHostTimerHandler.old_ip, align 4
  br label %24

24:                                               ; preds = %22, %0
  %25 = call i32 @mg_mgr_poll(i32* @g_mgr, i32 0)
  ret void
}

declare dso_local i32 @lwIPLocalIPAddrGet(...) #1

declare dso_local i32 @UARTprintf(i8*, ...) #1

declare dso_local i32 @LEDWrite(i32, i32) #1

declare dso_local i32 @ipaddr_ntoa(i32*) #1

declare dso_local i32 @mg_mgr_poll(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
