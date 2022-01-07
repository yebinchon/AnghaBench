; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_GetDayRect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_GetDayRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32*, i32)* @MONTHCAL_GetDayRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MONTHCAL_GetDayRect(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @MONTHCAL_ValidateDate(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @SetRectEmpty(i32* %17)
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %5, align 4
  br label %92

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %80

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = call i64 @MONTHCAL_CompareMonths(i32* %24, i32* %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %79

35:                                               ; preds = %23
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = call i32 @MONTHCAL_GetCalCount(%struct.TYPE_8__* %40)
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = call i64 @MONTHCAL_CompareMonths(i32* %36, i32* %45)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %35
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = call i32 @MONTHCAL_GetCalCount(%struct.TYPE_8__* %51)
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %78

54:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %74, %54
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = call i32 @MONTHCAL_GetCalCount(%struct.TYPE_8__* %57)
  %59 = sub nsw i32 %58, 1
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = call i64 @MONTHCAL_CompareMonths(i32* %62, i32* %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %77

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %55

77:                                               ; preds = %72, %55
  br label %78

78:                                               ; preds = %77, %50
  br label %79

79:                                               ; preds = %78, %34
  br label %80

80:                                               ; preds = %79, %20
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @MONTHCAL_GetDayPos(%struct.TYPE_8__* %81, i32* %82, i32* %10, i32* %11, i32 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @MONTHCAL_GetDayRectI(%struct.TYPE_8__* %85, i32* %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %80, %16
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @MONTHCAL_ValidateDate(i32*) #1

declare dso_local i32 @SetRectEmpty(i32*) #1

declare dso_local i64 @MONTHCAL_CompareMonths(i32*, i32*) #1

declare dso_local i32 @MONTHCAL_GetCalCount(%struct.TYPE_8__*) #1

declare dso_local i32 @MONTHCAL_GetDayPos(%struct.TYPE_8__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @MONTHCAL_GetDayRectI(%struct.TYPE_8__*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
