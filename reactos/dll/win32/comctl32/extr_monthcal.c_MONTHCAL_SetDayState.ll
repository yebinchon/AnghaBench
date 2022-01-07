; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_SetDayState.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_SetDayState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%p %d %p\0A\00", align 1
@MCS_DAYSTATE = common dso_local global i32 0, align 4
@GMR_DAYSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*)* @MONTHCAL_SetDayState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MONTHCAL_SetDayState(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %8, i32 %9, i32* %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MCS_DAYSTATE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = load i32, i32* @GMR_DAYSTATE, align 4
  %23 = call i32 @MONTHCAL_GetMonthRange(%struct.TYPE_5__* %21, i32 %22, i32 0)
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %36

26:                                               ; preds = %19
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memcpy(i32 %29, i32* %30, i32 %34)
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %26, %25, %18
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @MONTHCAL_GetMonthRange(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
