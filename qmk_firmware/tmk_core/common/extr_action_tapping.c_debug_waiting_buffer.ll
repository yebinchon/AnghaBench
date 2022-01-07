; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_action_tapping.c_debug_waiting_buffer.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_action_tapping.c_debug_waiting_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@waiting_buffer_tail = common dso_local global i32 0, align 4
@waiting_buffer_head = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"]=\00", align 1
@waiting_buffer = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@WAITING_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @debug_waiting_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_waiting_buffer() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @waiting_buffer_tail, align 4
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %20, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @waiting_buffer_head, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = call i32 @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @debug_dec(i32 %10)
  %12 = call i32 @debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32*, i32** @waiting_buffer, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @debug_record(i32 %17)
  %19 = call i32 @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %20

20:                                               ; preds = %8
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* @WAITING_BUFFER_SIZE, align 4
  %24 = srem i32 %22, %23
  store i32 %24, i32* %1, align 4
  br label %4

25:                                               ; preds = %4
  %26 = call i32 @debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @debug_dec(i32) #1

declare dso_local i32 @debug_record(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
