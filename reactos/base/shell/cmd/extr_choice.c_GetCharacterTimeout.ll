; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_choice.c_GetCharacterTimeout.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_choice.c_GetCharacterTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@GC_TIMEOUT = common dso_local global i32 0, align 4
@KEY_EVENT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@GC_KEYREAD = common dso_local global i32 0, align 4
@GC_NOKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @GetCharacterTimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetCharacterTimeout(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %10 = call i32 @GetStdHandle(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @WaitForSingleObject(i32 %11, i32 %12)
  %14 = load i64, i64* @WAIT_TIMEOUT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @GC_TIMEOUT, align 4
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ReadConsoleInput(i32 %19, %struct.TYPE_9__* %8, i32 1, i32* %7)
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @KEY_EVENT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FALSE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @GC_KEYREAD, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %25, %18
  %41 = load i32, i32* @GC_NOKEY, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %32, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @GetStdHandle(i32) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @ReadConsoleInput(i32, %struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
