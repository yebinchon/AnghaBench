; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_MoveBand.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_MoveBand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [57 x i8] c"Illegal MoveBand, from=%d, to=%d, current band count=%d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"moved band %d to index %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i64)* @REBAR_MoveBand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_MoveBand(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %7, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25, %22, %16, %13, %3
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ERR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %33, i64 %36)
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %4, align 4
  br label %60

39:                                               ; preds = %25
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32* @REBAR_GetBand(%struct.TYPE_5__* %40, i64 %41)
  store i32* %42, i32** %8, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @DPA_DeletePtr(i32 %45, i64 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @DPA_InsertPtr(i32 %50, i64 %51, i32* %52)
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %54, i64 %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = call i32 @REBAR_DumpBand(%struct.TYPE_5__* %57)
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %39, %31
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @ERR(i8*, i64, i64, i64) #1

declare dso_local i32* @REBAR_GetBand(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @DPA_DeletePtr(i32, i64) #1

declare dso_local i32 @DPA_InsertPtr(i32, i64, i32*) #1

declare dso_local i32 @TRACE(i8*, i64, i64) #1

declare dso_local i32 @REBAR_DumpBand(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
