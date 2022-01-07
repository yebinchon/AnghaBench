; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/mode/extr_mode.c_SetParallelState.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/mode/extr_mode.c_SetParallelState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PORTNAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i32] [i32 76, i32 80, i32 84, i32 37, i32 100, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 67, i32 79, i32 77, i32 37, i32 100, i32 0], align 4
@DDD_REMOVE_DEFINITION = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i32] [i32 69, i32 82, i32 82, i32 79, i32 82, i32 58, i32 32, i32 83, i32 101, i32 116, i32 80, i32 97, i32 114, i32 97, i32 108, i32 108, i32 101, i32 108, i32 83, i32 116, i32 97, i32 116, i32 101, i32 40, i32 37, i32 100, i32 41, i32 32, i32 45, i32 32, i32 68, i32 101, i32 102, i32 105, i32 110, i32 101, i32 68, i32 111, i32 115, i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 40, i32 37, i32 115, i32 41, i32 32, i32 102, i32 97, i32 105, i32 108, i32 101, i32 100, i32 58, i32 32, i32 48, i32 120, i32 37, i32 108, i32 120, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetParallelState(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @MAX_PORTNAME_LEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @MAX_PORTNAME_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @swprintf(i32* %9, i8* bitcast ([6 x i32]* @.str to i8*), i8* %13)
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @swprintf(i32* %12, i8* bitcast ([6 x i32]* @.str.1 to i8*), i8* %15)
  %17 = load i32, i32* @DDD_REMOVE_DEFINITION, align 4
  %18 = call i32 @DefineDosDeviceW(i32 %17, i32* %9, i32* %12)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @StdErr, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 (...) @GetLastError()
  %24 = call i32 @ConPrintf(i32 %21, i8* bitcast ([65 x i32]* @.str.2 to i8*), i8* %22, i32* %9, i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @ShowParallelStatus(i8* %26)
  %28 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %28)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @swprintf(i32*, i8*, i8*) #2

declare dso_local i32 @DefineDosDeviceW(i32, i32*, i32*) #2

declare dso_local i32 @ConPrintf(i32, i8*, i8*, i32*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @ShowParallelStatus(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
