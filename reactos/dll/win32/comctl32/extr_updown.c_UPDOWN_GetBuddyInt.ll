; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_updown.c_UPDOWN_GetBuddyInt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_updown.c_UPDOWN_GetBuddyInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@FLAG_BUDDYINT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LB_GETCARETINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"new value(%d) from buddy (old=%d)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @UPDOWN_GetBuddyInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UPDOWN_GetBuddyInt(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca [20 x i64], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FLAG_BUDDYINT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @IsWindow(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15, %1
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %2, align 4
  br label %98

23:                                               ; preds = %15
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = call i64 @UPDOWN_IsBuddyListbox(%struct.TYPE_5__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @LB_GETCARETINDEX, align 4
  %32 = call i32 @SendMessageW(i32 %30, i32 %31, i32 0, i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %2, align 4
  br label %98

37:                                               ; preds = %27
  br label %88

38:                                               ; preds = %23
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0
  %43 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0
  %44 = call i32 @ARRAY_SIZE(i64* %43)
  %45 = call i64 @GetWindowTextW(i32 %41, i64* %42, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %2, align 4
  br label %98

49:                                               ; preds = %38
  %50 = call i64 (...) @UPDOWN_GetThousandSep()
  store i64 %50, i64* %5, align 8
  %51 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0
  store i64* %51, i64** %7, align 8
  store i64* %51, i64** %6, align 8
  br label %52

52:                                               ; preds = %67, %49
  %53 = load i64*, i64** %6, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load i64*, i64** %6, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i64*, i64** %6, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %7, align 8
  store i64 %63, i64* %64, align 8
  br label %66

66:                                               ; preds = %61, %56
  br label %67

67:                                               ; preds = %66
  %68 = load i64*, i64** %6, align 8
  %69 = getelementptr inbounds i64, i64* %68, i32 1
  store i64* %69, i64** %6, align 8
  br label %52

70:                                               ; preds = %52
  %71 = load i64*, i64** %7, align 8
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @strtolW(i64* %72, i64** %6, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i64*, i64** %6, align 8
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %70
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @UPDOWN_InBounds(%struct.TYPE_5__* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80, %70
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %2, align 4
  br label %98

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %37
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %88, %85, %47, %35, %21
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i64 @IsWindow(i32) #1

declare dso_local i64 @UPDOWN_IsBuddyListbox(%struct.TYPE_5__*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i64 @GetWindowTextW(i32, i64*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @UPDOWN_GetThousandSep(...) #1

declare dso_local i32 @strtolW(i64*, i64**, i32) #1

declare dso_local i32 @UPDOWN_InBounds(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
