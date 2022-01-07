; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mplay32/extr_mplay32.c_UpdateTimeDisplay.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mplay32/extr_mplay32.c_UpdateTimeDisplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MAX_MCISTR = common dso_local global i32 0, align 4
@wDeviceId = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MCI_STATUS_TIME_FORMAT = common dso_local global i32 0, align 4
@MCI_STATUS = common dso_local global i32 0, align 4
@MCI_STATUS_ITEM = common dso_local global i32 0, align 4
@MCI_STATUS_POSITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%02lu:%02lu:%02lu\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateTimeDisplay(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_2__, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @MAX_MCISTR, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32, i32* @wDeviceId, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32* @_T(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @SetWindowText(i32 %18, i32* %19)
  store i32 1, i32* %7, align 4
  br label %71

21:                                               ; preds = %1
  %22 = load i32, i32* @MCI_STATUS_TIME_FORMAT, align 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* @wDeviceId, align 4
  %26 = load i32, i32* @MCI_STATUS, align 4
  %27 = load i32, i32* @MCI_STATUS_ITEM, align 4
  %28 = ptrtoint %struct.TYPE_2__* %3 to i32
  %29 = call i32 @mciSendCommand(i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @MCI_STATUS_POSITION, align 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* @wDeviceId, align 4
  %36 = load i32, i32* @MCI_STATUS, align 4
  %37 = load i32, i32* @MCI_STATUS_ITEM, align 4
  %38 = ptrtoint %struct.TYPE_2__* %3 to i32
  %39 = call i32 @mciSendCommand(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %61 [
    i32 128, label %41
  ]

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 1000
  %45 = srem i32 %44, 60
  store i32 %45, i32* %8, align 4
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 60000
  %49 = srem i32 %48, 60
  store i32 %49, i32* %9, align 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 3600000
  %53 = srem i32 %52, 24
  store i32 %53, i32* %10, align 4
  %54 = mul nuw i64 4, %12
  %55 = trunc i64 %54 to i32
  %56 = call i32* @_T(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32*, i32, i32*, i32, ...) @StringCbPrintf(i32* %14, i32 %55, i32* %56, i32 %57, i32 %58, i32 %59)
  br label %68

61:                                               ; preds = %21
  %62 = mul nuw i64 4, %12
  %63 = trunc i64 %62 to i32
  %64 = call i32* @_T(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32*, i32, i32*, i32, ...) @StringCbPrintf(i32* %14, i32 %63, i32* %64, i32 %66)
  br label %68

68:                                               ; preds = %61, %41
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @SetWindowText(i32 %69, i32* %14)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %68, %17
  %72 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %7, align 4
  switch i32 %73, label %75 [
    i32 0, label %74
    i32 1, label %74
  ]

74:                                               ; preds = %71, %71
  ret void

75:                                               ; preds = %71
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetWindowText(i32, i32*) #2

declare dso_local i32* @_T(i8*) #2

declare dso_local i32 @mciSendCommand(i32, i32, i32, i32) #2

declare dso_local i32 @StringCbPrintf(i32*, i32, i32*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
