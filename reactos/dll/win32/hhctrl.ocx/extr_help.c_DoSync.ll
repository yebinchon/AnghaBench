; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_help.c_DoSync.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_help.c_DoSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@INTERNET_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"get_LocationURL failed: %08x\0A\00", align 1
@DoSync.delimW = internal constant [4 x i8] c"::/\00", align 1
@TAB_CONTENTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @DoSync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoSync(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %9 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IWebBrowser2_get_LocationURL(i32 %17, i8** %6)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 1, i32* %7, align 4
  br label %67

25:                                               ; preds = %1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @AppendFullPathURL(i32 %29, i8* %12, i32* null)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = call i64 @lstrlenW(i8* %12)
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @lstrlenW(i8* %34)
  %36 = icmp sgt i64 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %25
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @SysFreeString(i8* %38)
  store i32 1, i32* %7, align 4
  br label %67

40:                                               ; preds = %32
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @lstrcmpiW(i8* %12, i8* %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @wcsstr(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @DoSync.delimW, i64 0, i64 0))
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i64, i64* @TAB_CONTENTS, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ActivateContentTopic(i32 %56, i8* %58, i32 %61)
  br label %63

63:                                               ; preds = %49, %44
  br label %64

64:                                               ; preds = %63, %40
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @SysFreeString(i8* %65)
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %37, %22
  %68 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %7, align 4
  switch i32 %69, label %71 [
    i32 0, label %70
    i32 1, label %70
  ]

70:                                               ; preds = %67, %67
  ret void

71:                                               ; preds = %67
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IWebBrowser2_get_LocationURL(i32, i8**) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @WARN(i8*, i32) #2

declare dso_local i32 @AppendFullPathURL(i32, i8*, i32*) #2

declare dso_local i64 @lstrlenW(i8*) #2

declare dso_local i32 @SysFreeString(i8*) #2

declare dso_local i64 @lstrcmpiW(i8*, i8*) #2

declare dso_local i8* @wcsstr(i8*, i8*) #2

declare dso_local i32 @ActivateContentTopic(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
