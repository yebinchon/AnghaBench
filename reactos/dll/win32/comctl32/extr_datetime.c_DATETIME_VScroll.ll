; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_VScroll.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_VScroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32 }

@DTHT_DATEFIELD = common dso_local global i32 0, align 4
@SB_THUMBPOSITION = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @DATETIME_VScroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DATETIME_VScroll(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @DTHT_DATEFIELD, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @LOWORD(i32 %12)
  %14 = load i64, i64* @SB_THUMBPOSITION, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %55

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %55

32:                                               ; preds = %26, %23
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @DATETIME_IncreaseField(%struct.TYPE_5__* %38, i32 %39, i32 1)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = call i32 @DATETIME_SendDateTimeChangeNotify(%struct.TYPE_5__* %41)
  br label %49

43:                                               ; preds = %32
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @DATETIME_IncreaseField(%struct.TYPE_5__* %44, i32 %45, i32 -1)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = call i32 @DATETIME_SendDateTimeChangeNotify(%struct.TYPE_5__* %47)
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @InvalidateRect(i32 %52, i32* null, i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %31, %22, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i32 @DATETIME_IncreaseField(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @DATETIME_SendDateTimeChangeNotify(%struct.TYPE_5__*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
