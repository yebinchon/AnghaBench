; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/extr_system_exceptions.c__general_exception_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/extr_system_exceptions.c__general_exception_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_excep_code = common dso_local global i64 0, align 8
@_excep_addr = common dso_local global i32 0, align 4
@cause = common dso_local global i32* null, align 8
@_cause_str = common dso_local global i32 0, align 4
@SYS_ERROR_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"\0AGeneral Exception %s (cause=%d, addr=%x).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_general_exception_handler() #0 {
  %1 = call i32 (...) @_CP0_GET_CAUSE()
  %2 = and i32 %1, 124
  %3 = ashr i32 %2, 2
  %4 = sext i32 %3 to i64
  store i64 %4, i64* @_excep_code, align 8
  %5 = call i32 (...) @_CP0_GET_EPC()
  store i32 %5, i32* @_excep_addr, align 4
  %6 = load i32*, i32** @cause, align 8
  %7 = load i64, i64* @_excep_code, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* @_cause_str, align 4
  %10 = load i32, i32* @SYS_ERROR_ERROR, align 4
  %11 = load i32, i32* @_cause_str, align 4
  %12 = load i64, i64* @_excep_code, align 8
  %13 = load i32, i32* @_excep_addr, align 4
  %14 = call i32 @SYS_DEBUG_PRINT(i32 %10, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %12, i32 %13)
  br label %15

15:                                               ; preds = %0, %15
  %16 = call i32 (...) @SYS_DEBUG_BreakPoint()
  br label %15
}

declare dso_local i32 @_CP0_GET_CAUSE(...) #1

declare dso_local i32 @_CP0_GET_EPC(...) #1

declare dso_local i32 @SYS_DEBUG_PRINT(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @SYS_DEBUG_BreakPoint(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
