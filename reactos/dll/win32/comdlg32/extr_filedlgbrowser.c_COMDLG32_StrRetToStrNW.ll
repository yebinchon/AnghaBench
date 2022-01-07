; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlgbrowser.c_COMDLG32_StrRetToStrNW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlgbrowser.c_COMDLG32_StrRetToStrNW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"dest=%p len=0x%x strret=%p pidl=%p\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"unknown type!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__*)* @COMDLG32_StrRetToStrNW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMDLG32_StrRetToStrNW(i32 %0, i32 %1, %struct.TYPE_9__* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, %struct.TYPE_9__* %12, %struct.TYPE_10__* %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %83 [
    i32 128, label %18
    i32 130, label %31
    i32 129, label %53
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @lstrcpynW(i32 %19, i32 %23, i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @CoTaskMemFree(i32 %29)
  br label %93

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i32, i32* @CP_ACP, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @MultiByteToWideChar(i32 %35, i32 0, i64 %39, i32 -1, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 0, i8* %51, align 1
  br label %52

52:                                               ; preds = %44, %34, %31
  br label %93

53:                                               ; preds = %4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = icmp ne %struct.TYPE_10__* %54, null
  br i1 %55, label %56, label %82

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = load i32, i32* @CP_ACP, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = ptrtoint i32* %62 to i64
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %63, %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @MultiByteToWideChar(i32 %60, i32 0, i64 %68, i32 -1, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8 0, i8* %80, align 1
  br label %81

81:                                               ; preds = %73, %59, %56
  br label %82

82:                                               ; preds = %81, %53
  br label %93

83:                                               ; preds = %4
  %84 = call i32 @FIXME(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  store i8 0, i8* %90, align 1
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %5, align 4
  br label %95

93:                                               ; preds = %82, %52, %18
  %94 = load i32, i32* @TRUE, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @TRACE(i8*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @lstrcpynW(i32, i32, i32) #1

declare dso_local i32 @CoTaskMemFree(i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
