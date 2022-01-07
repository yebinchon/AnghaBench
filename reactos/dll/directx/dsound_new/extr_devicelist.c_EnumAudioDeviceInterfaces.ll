; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_devicelist.c_EnumAudioDeviceInterfaces.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_devicelist.c_EnumAudioDeviceInterfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }

@STATIC_KSCATEGORY_AUDIO = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"OpenDeviceList failed with %lx\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"No devices found\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"EnumerateAudioFilter failed with %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EnumAudioDeviceInterfaces(%struct.TYPE_9__** %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %12 = load i32, i32* @STATIC_KSCATEGORY_AUDIO, align 4
  store i32 %12, i32* %11, align 4
  %13 = call i64 @OpenDeviceList(%struct.TYPE_10__* %9, i32* %4)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i64, i64* %5, align 8
  %19 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* @E_FAIL, align 8
  store i64 %20, i64* %2, align 8
  br label %57

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %24 = call i32 @GetDeviceListInterfaces(i32 %22, %struct.TYPE_10__* %9, %struct.TYPE_9__** %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @CloseDeviceList(i32 %28)
  %30 = load i64, i64* @S_FALSE, align 8
  store i64 %30, i64* %2, align 8
  br label %57

31:                                               ; preds = %21
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = call i32 @ASSERT(%struct.TYPE_9__* %33)
  %35 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %10, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %37

37:                                               ; preds = %49, %31
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = call i64 @EnumerateAudioFilter(%struct.TYPE_9__* %41, i64* %8, i64* %7)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i64, i64* %5, align 8
  %48 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  br label %53

49:                                               ; preds = %40
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %10, align 8
  br label %37

53:                                               ; preds = %46, %37
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @CloseDeviceList(i32 %54)
  %56 = load i64, i64* %6, align 8
  store i64 %56, i64* %2, align 8
  br label %57

57:                                               ; preds = %53, %26, %17
  %58 = load i64, i64* %2, align 8
  ret i64 %58
}

declare dso_local i64 @OpenDeviceList(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @GetDeviceListInterfaces(i32, %struct.TYPE_10__*, %struct.TYPE_9__**) #1

declare dso_local i32 @CloseDeviceList(i32) #1

declare dso_local i32 @ASSERT(%struct.TYPE_9__*) #1

declare dso_local i64 @EnumerateAudioFilter(%struct.TYPE_9__*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
