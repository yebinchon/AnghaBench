; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/georgi/extr_sten.c_SEND.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/georgi/extr_sten.c_SEND.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cMode = common dso_local global i64 0, align 8
@COMMAND = common dso_local global i64 0, align 8
@CMDLEN = common dso_local global i64 0, align 8
@MAX_CMD_BUF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"CMD LEN: %d BUF: %d\0A\00", align 1
@CMDBUF = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SEND(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @cMode, align 8
  %4 = load i64, i64* @COMMAND, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load i64, i64* @CMDLEN, align 8
  %8 = load i64, i64* @MAX_CMD_BUF, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i64, i64* @CMDLEN, align 8
  %12 = load i64, i64* @MAX_CMD_BUF, align 8
  %13 = call i32 @uprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %12)
  %14 = load i32, i32* %2, align 4
  %15 = load i32*, i32** @CMDBUF, align 8
  %16 = load i64, i64* @CMDLEN, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 %14, i32* %17, align 4
  %18 = load i64, i64* @CMDLEN, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* @CMDLEN, align 8
  br label %20

20:                                               ; preds = %10, %6, %1
  %21 = load i64, i64* @cMode, align 8
  %22 = load i64, i64* @COMMAND, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @register_code(i32 %25)
  br label %27

27:                                               ; preds = %24, %20
  ret void
}

declare dso_local i32 @uprintf(i8*, i64, i64) #1

declare dso_local i32 @register_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
