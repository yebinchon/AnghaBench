; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_iwrap.c_iwrap_unpair.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_iwrap.c_iwrap_unpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"SET BT PAIR\00", align 1
@rcv_buf = common dso_local global i8* null, align 8
@rcv_tail = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwrap_unpair() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 @iwrap_mux_send(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @_delay_ms(i32 500)
  %4 = load i8*, i8** @rcv_buf, align 8
  %5 = load i32, i32* @rcv_tail, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, i8* %4, i64 %6
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = call i32 @strncmp(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %0
  %12 = load i8*, i8** %1, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 29
  %14 = call i32 @strncpy(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %15 = load i8*, i8** %1, align 8
  %16 = call i32 @print_S(i8* %15)
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 @iwrap_mux_send(i8* %17)
  br label %19

19:                                               ; preds = %11, %0
  ret void
}

declare dso_local i32 @iwrap_mux_send(i8*) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @print_S(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
