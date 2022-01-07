; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_GoToMonth.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_GoToMonth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@DIRECTION_BACKWARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"back\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"fwd\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MCS_NOSELCHANGEONNAV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32)* @MONTHCAL_GoToMonth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MONTHCAL_GoToMonth(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = call i32 @MONTHCAL_GetCalCount(%struct.TYPE_10__* %17)
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i32 [ %15, %12 ], [ %18, %16 ]
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @DIRECTION_BACKWARD, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @DIRECTION_BACKWARD, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %19
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 @MONTHCAL_GetMonth(i32* %7, i32 %38)
  br label %53

40:                                               ; preds = %19
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = call i32 @MONTHCAL_GetCalCount(%struct.TYPE_10__* %44)
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @MONTHCAL_GetMonth(i32* %7, i32 %51)
  br label %53

53:                                               ; preds = %40, %30
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 @MONTHCAL_IsDateInValidRange(%struct.TYPE_10__* %54, i32* %7, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %85

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MCS_NOSELCHANGEONNAV, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %6, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @DIRECTION_BACKWARD, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 0, %70
  br label %74

72:                                               ; preds = %59
  %73 = load i32, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i32 [ %71, %69 ], [ %73, %72 ]
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @MONTHCAL_Scroll(%struct.TYPE_10__* %65, i32 %75, i32 %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = call i32 @MONTHCAL_NotifyDayState(%struct.TYPE_10__* %78)
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = call i32 @MONTHCAL_NotifySelectionChange(%struct.TYPE_10__* %83)
  br label %85

85:                                               ; preds = %58, %82, %74
  ret void
}

declare dso_local i32 @MONTHCAL_GetCalCount(%struct.TYPE_10__*) #1

declare dso_local i32 @TRACE(i8*, i8*) #1

declare dso_local i32 @MONTHCAL_GetMonth(i32*, i32) #1

declare dso_local i32 @MONTHCAL_IsDateInValidRange(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @MONTHCAL_Scroll(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @MONTHCAL_NotifyDayState(%struct.TYPE_10__*) #1

declare dso_local i32 @MONTHCAL_NotifySelectionChange(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
