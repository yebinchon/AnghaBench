; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_Simple.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_Simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"(simple=%d)\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@GWLP_ID = common dso_local global i32 0, align 4
@SBN_SIMPLEMODECHANGE = common dso_local global i32 0, align 4
@WM_NOTIFY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64)* @STATUSBAR_Simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @STATUSBAR_Simple(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @TRUE, align 8
  store i64 %15, i64* %3, align 8
  br label %44

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GWLP_ID, align 4
  %28 = call i32 @GetWindowLongPtrW(i32 %26, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @SBN_SIMPLEMODECHANGE, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @WM_NOTIFY, align 4
  %36 = ptrtoint %struct.TYPE_5__* %6 to i32
  %37 = call i32 @SendMessageW(i32 %34, i32 %35, i32 0, i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @InvalidateRect(i32 %40, i32* null, i32 %41)
  %43 = load i64, i64* @TRUE, align 8
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %16, %14
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
