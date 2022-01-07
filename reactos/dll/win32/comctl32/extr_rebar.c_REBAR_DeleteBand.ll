; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_DeleteBand.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_DeleteBand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"deleting band %u!\0A\00", align 1
@RBN_DELETINGBAND = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@RBN_DELETEDBAND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @REBAR_DeleteBand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_DeleteBand(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  br label %68

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.TYPE_12__* @REBAR_GetBand(%struct.TYPE_11__* %19, i32 %20)
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %7, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @RBN_DELETINGBAND, align 4
  %25 = call i32 @REBAR_Notify_NMREBAR(%struct.TYPE_11__* %22, i32 %23, i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @SW_HIDE, align 4
  %35 = call i32 @ShowWindow(i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %16
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = call i32 @Free(%struct.TYPE_12__* %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = call i32 @Free(%struct.TYPE_12__* %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @DPA_DeletePtr(i32 %49, i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = load i32, i32* @RBN_DELETEDBAND, align 4
  %54 = call i32 @REBAR_Notify_NMREBAR(%struct.TYPE_11__* %52, i32 -1, i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %36
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = call %struct.TYPE_12__* @REBAR_GetBand(%struct.TYPE_11__* %61, i32 0)
  %63 = call i32 @REBAR_ValidateBand(%struct.TYPE_11__* %60, %struct.TYPE_12__* %62)
  br label %64

64:                                               ; preds = %59, %36
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = call i32 @REBAR_Layout(%struct.TYPE_11__* %65)
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local %struct.TYPE_12__* @REBAR_GetBand(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @REBAR_Notify_NMREBAR(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ShowWindow(i64, i32) #1

declare dso_local i32 @Free(%struct.TYPE_12__*) #1

declare dso_local i32 @DPA_DeletePtr(i32, i32) #1

declare dso_local i32 @REBAR_ValidateBand(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @REBAR_Layout(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
