; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/usetup/extr_usetup.c_ConfirmQuit.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/usetup/extr_usetup.c_ConfirmQuit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@ERROR_NOT_INSTALLED = common dso_local global i32 0, align 4
@POPUP_WAIT_NONE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@VK_F3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*)* @ConfirmQuit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ConfirmQuit(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load i64, i64* @FALSE, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* @ERROR_NOT_INSTALLED, align 4
  %6 = load i32, i32* @POPUP_WAIT_NONE, align 4
  %7 = call i32 @MUIDisplayError(i32 %5, i32* null, i32 %6)
  br label %8

8:                                                ; preds = %42, %1
  %9 = load i64, i64* @TRUE, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = call i32 @CONSOLE_ConInKey(%struct.TYPE_10__* %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %11
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VK_F3, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %3, align 8
  br label %43

31:                                               ; preds = %21, %11
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 13
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %3, align 8
  br label %43

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  br label %8

43:                                               ; preds = %39, %29, %8
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i32 @MUIDisplayError(i32, i32*, i32) #1

declare dso_local i32 @CONSOLE_ConInKey(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
