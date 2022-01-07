; ModuleID = '/home/carl/AnghaBench/micropython/ports/unix/extr_unix_mphal.c_mp_hal_set_interrupt_char.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/unix/extr_unix_mphal.c_mp_hal_set_interrupt_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i64 }

@CHAR_CTRL_C = common dso_local global i8 0, align 1
@sighandler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_hal_set_interrupt_char(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca %struct.sigaction, align 8
  store i8 %0, i8* %2, align 1
  %5 = load i8, i8* %2, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, i8* @CHAR_CTRL_C, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @sighandler, align 4
  %13 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  %15 = call i32 @sigemptyset(i32* %14)
  %16 = load i32, i32* @SIGINT, align 4
  %17 = call i32 @sigaction(i32 %16, %struct.sigaction* %3, i32* null)
  br label %26

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @SIG_DFL, align 4
  %21 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  %23 = call i32 @sigemptyset(i32* %22)
  %24 = load i32, i32* @SIGINT, align 4
  %25 = call i32 @sigaction(i32 %24, %struct.sigaction* %4, i32* null)
  br label %26

26:                                               ; preds = %18, %10
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
