; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_console.c_ConSetScreenColor.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_console.c_ConSetScreenColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ConSetScreenColor(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 15
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 240
  %15 = ashr i32 %14, 4
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %4, align 8
  br label %49

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @GetConsoleScreenBufferInfo(i32 %23, %struct.TYPE_8__* %9)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 255
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = bitcast %struct.TYPE_7__* %10 to { i64, i64 }*
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %37, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @FillConsoleOutputAttribute(i32 %27, i32 %29, i32 %36, i64 %39, i64 %41, i32* %8)
  br label %43

43:                                               ; preds = %22, %19
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 255
  %47 = call i32 @SetConsoleTextAttribute(i32 %44, i32 %46)
  %48 = load i64, i64* @TRUE, align 8
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %43, %17
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local i32 @GetConsoleScreenBufferInfo(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @FillConsoleOutputAttribute(i32, i32, i32, i64, i64, i32*) #1

declare dso_local i32 @SetConsoleTextAttribute(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
