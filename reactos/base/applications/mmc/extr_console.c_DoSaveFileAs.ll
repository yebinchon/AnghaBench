; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mmc/extr_console.c_DoSaveFileAs.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mmc/extr_console.c_DoSaveFileAs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i8*, i32, i32, i8*, i32*, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pChildInfo %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"FileName %S\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".msc\00", align 1
@hAppInstance = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i32] [i32 77, i32 83, i32 67, i32 32, i32 70, i32 105, i32 108, i32 101, i32 115, i32 0, i32 42, i32 46, i32 109, i32 115, i32 99, i32 0, i32 0], align 4
@OFN_HIDEREADONLY = common dso_local global i32 0, align 4
@OFN_PATHMUSTEXIST = common dso_local global i32 0, align 4
@OFN_OVERWRITEPROMPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i32] [i32 109, i32 115, i32 99, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_10__*)* @DoSaveFileAs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoSaveFileAs(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = call i32 @DPRINT1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = call i32 @DPRINT1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %18)
  %20 = call i32 @ZeroMemory(%struct.TYPE_11__* %6, i32 48)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = call i32 @_tcscpy(i32* %13, %struct.TYPE_10__* %28)
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = call i32 @GetWindowText(i32 %33, i32* %13, i32 %34)
  %36 = call i32 @TEXT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @_tcscat(i32* %13, i32 %36)
  br label %38

38:                                               ; preds = %30, %25
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 48, i32* %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 7
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @hAppInstance, align 4
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 6
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  store i8* bitcast ([17 x i32]* @.str.3 to i8*), i8** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 5
  store i32* %13, i32** %45, align 8
  %46 = load i32, i32* @MAX_PATH, align 4
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* @OFN_HIDEREADONLY, align 4
  %49 = load i32, i32* @OFN_PATHMUSTEXIST, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @OFN_OVERWRITEPROMPT, align 4
  %52 = or i32 %50, %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 4
  store i8* bitcast ([4 x i32]* @.str.4 to i8*), i8** %54, align 8
  %55 = call i64 @GetSaveFileName(%struct.TYPE_11__* %6)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %38
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = call i32 @SetFileName(%struct.TYPE_10__* %58, i32* %13)
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = call i64 @DoSaveFile(i32 %60, %struct.TYPE_10__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %72

66:                                               ; preds = %57
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = call i32 @SetFileName(%struct.TYPE_10__* %67, i32* null)
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %72

70:                                               ; preds = %38
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %66, %64
  %73 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DPRINT1(i8*, %struct.TYPE_10__*) #2

declare dso_local i32 @ZeroMemory(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @_tcscpy(i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @GetWindowText(i32, i32*, i32) #2

declare dso_local i32 @_tcscat(i32*, i32) #2

declare dso_local i32 @TEXT(i8*) #2

declare dso_local i64 @GetSaveFileName(%struct.TYPE_11__*) #2

declare dso_local i32 @SetFileName(%struct.TYPE_10__*, i32*) #2

declare dso_local i64 @DoSaveFile(i32, %struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
