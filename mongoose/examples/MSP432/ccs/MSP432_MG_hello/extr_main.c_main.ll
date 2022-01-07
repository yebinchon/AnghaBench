; ModuleID = '/home/carl/AnghaBench/mongoose/examples/MSP432/ccs/MSP432_MG_hello/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/MSP432/ccs/MSP432_MG_hello/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@LL_INFO = common dso_local global i32 0, align 4
@MGOS_TASK_PRIORITY = common dso_local global i32 0, align 4
@MG_TASK_STACK_SIZE = common dso_local global i32 0, align 4
@mg_init = common dso_local global i32 0, align 4
@LL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error starting Mongoose task\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @Board_initGeneral()
  %3 = call i32 (...) @Board_initGPIO()
  %4 = call i32 (...) @Board_initWiFi()
  %5 = load i32, i32* @stdout, align 4
  %6 = load i32, i32* @_IOLBF, align 4
  %7 = call i32 @setvbuf(i32 %5, i32* null, i32 %6, i32 0)
  %8 = load i32, i32* @stderr, align 4
  %9 = load i32, i32* @_IOLBF, align 4
  %10 = call i32 @setvbuf(i32 %8, i32* null, i32 %9, i32 0)
  %11 = load i32, i32* @LL_INFO, align 4
  %12 = call i32 @cs_log_set_level(i32 %11)
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 @cs_log_set_file(i32 %13)
  %15 = load i32, i32* @MGOS_TASK_PRIORITY, align 4
  %16 = load i32, i32* @MG_TASK_STACK_SIZE, align 4
  %17 = load i32, i32* @mg_init, align 4
  %18 = call i32 @mg_start_task(i32 %15, i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %0
  %21 = load i32, i32* @LL_ERROR, align 4
  %22 = call i32 @LOG(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %25

23:                                               ; preds = %0
  %24 = call i32 (...) @osi_start()
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @Board_initGeneral(...) #1

declare dso_local i32 @Board_initGPIO(...) #1

declare dso_local i32 @Board_initWiFi(...) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @cs_log_set_level(i32) #1

declare dso_local i32 @cs_log_set_file(i32) #1

declare dso_local i32 @mg_start_task(i32, i32, i32) #1

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @osi_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
