; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mplay32/extr_mplay32.c_UpdateWindowCaption.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mplay32/extr_mplay32.c_UpdateWindowCaption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@wDeviceId = common dso_local global i64 0, align 8
@szAppTitle = common dso_local global i32* null, align 8
@hInstance = common dso_local global i32 0, align 4
@IDS_MODE_PAUSE = common dso_local global i32 0, align 4
@IDS_MODE_STOP = common dso_local global i32 0, align 4
@IDS_MODE_PLAY = common dso_local global i32 0, align 4
@IDS_MODE_OPEN = common dso_local global i32 0, align 4
@IDS_MODE_RECORD = common dso_local global i32 0, align 4
@IDS_MODE_SEEK = common dso_local global i32 0, align 4
@IDS_MODE_NOT_READY = common dso_local global i32 0, align 4
@IDS_MODE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s - %s (%s)\00", align 1
@szCurrentFile = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateWindowCaption(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [128 x i32], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = add nsw i32 %7, 3
  %9 = add nsw i32 %8, 256
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i64, i64* @wDeviceId, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32*, i32** @szAppTitle, align 8
  %18 = call i32 @SetWindowText(i32 %16, i32* %17)
  store i32 1, i32* %6, align 4
  br label %88

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @GetDeviceMode(i32 %20)
  switch i32 %21, label %71 [
    i32 132, label %22
    i32 128, label %29
    i32 131, label %36
    i32 133, label %43
    i32 130, label %50
    i32 129, label %57
    i32 134, label %64
  ]

22:                                               ; preds = %19
  %23 = load i32, i32* @hInstance, align 4
  %24 = load i32, i32* @IDS_MODE_PAUSE, align 4
  %25 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %26 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %27 = call i32 @ARRAYSIZE(i32* %26)
  %28 = call i32 @LoadString(i32 %23, i32 %24, i32* %25, i32 %27)
  br label %78

29:                                               ; preds = %19
  %30 = load i32, i32* @hInstance, align 4
  %31 = load i32, i32* @IDS_MODE_STOP, align 4
  %32 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %33 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %34 = call i32 @ARRAYSIZE(i32* %33)
  %35 = call i32 @LoadString(i32 %30, i32 %31, i32* %32, i32 %34)
  br label %78

36:                                               ; preds = %19
  %37 = load i32, i32* @hInstance, align 4
  %38 = load i32, i32* @IDS_MODE_PLAY, align 4
  %39 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %40 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %41 = call i32 @ARRAYSIZE(i32* %40)
  %42 = call i32 @LoadString(i32 %37, i32 %38, i32* %39, i32 %41)
  br label %78

43:                                               ; preds = %19
  %44 = load i32, i32* @hInstance, align 4
  %45 = load i32, i32* @IDS_MODE_OPEN, align 4
  %46 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %47 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %48 = call i32 @ARRAYSIZE(i32* %47)
  %49 = call i32 @LoadString(i32 %44, i32 %45, i32* %46, i32 %48)
  br label %78

50:                                               ; preds = %19
  %51 = load i32, i32* @hInstance, align 4
  %52 = load i32, i32* @IDS_MODE_RECORD, align 4
  %53 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %54 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %55 = call i32 @ARRAYSIZE(i32* %54)
  %56 = call i32 @LoadString(i32 %51, i32 %52, i32* %53, i32 %55)
  br label %78

57:                                               ; preds = %19
  %58 = load i32, i32* @hInstance, align 4
  %59 = load i32, i32* @IDS_MODE_SEEK, align 4
  %60 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %61 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %62 = call i32 @ARRAYSIZE(i32* %61)
  %63 = call i32 @LoadString(i32 %58, i32 %59, i32* %60, i32 %62)
  br label %78

64:                                               ; preds = %19
  %65 = load i32, i32* @hInstance, align 4
  %66 = load i32, i32* @IDS_MODE_NOT_READY, align 4
  %67 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %68 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %69 = call i32 @ARRAYSIZE(i32* %68)
  %70 = call i32 @LoadString(i32 %65, i32 %66, i32* %67, i32 %69)
  br label %78

71:                                               ; preds = %19
  %72 = load i32, i32* @hInstance, align 4
  %73 = load i32, i32* @IDS_MODE_UNKNOWN, align 4
  %74 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %75 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %76 = call i32 @ARRAYSIZE(i32* %75)
  %77 = call i32 @LoadString(i32 %72, i32 %73, i32* %74, i32 %76)
  br label %78

78:                                               ; preds = %71, %64, %57, %50, %43, %36, %29, %22
  %79 = mul nuw i64 4, %10
  %80 = trunc i64 %79 to i32
  %81 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %82 = load i32*, i32** @szAppTitle, align 8
  %83 = load i32, i32* @szCurrentFile, align 4
  %84 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %85 = call i32 @StringCbPrintf(i32* %12, i32 %80, i32 %81, i32* %82, i32 %83, i32* %84)
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @SetWindowText(i32 %86, i32* %12)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %78, %15
  %89 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %6, align 4
  switch i32 %90, label %92 [
    i32 0, label %91
    i32 1, label %91
  ]

91:                                               ; preds = %88, %88
  ret void

92:                                               ; preds = %88
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetWindowText(i32, i32*) #2

declare dso_local i32 @GetDeviceMode(i32) #2

declare dso_local i32 @LoadString(i32, i32, i32*, i32) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32 @StringCbPrintf(i32*, i32, i32, i32*, i32, i32*) #2

declare dso_local i32 @_T(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
