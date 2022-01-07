; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_dvb_open_devices.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_dvb_open_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64*, i64, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"/dev/dvb/adapter%u/frontend%u\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"/dev/dvb/adapter%u/dvr0\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"/dev/dvb/adapter%u/demux0\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"DVB_OPEN_DEVICES: frontend: %s\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"ERROR OPENING FRONTEND DEVICE %s: ERRNO %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"DVB_OPEN_DEVICES(%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"ERROR OPENING DEMUX 0: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"OPEN(%d), file %s: FD=%d, CNT=%d\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"ERROR OPENING DVR DEVICE %s: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_open_devices(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* @PATH_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %15, align 8
  %30 = trunc i64 %18 to i32
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %20, i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = trunc i64 %22 to i32
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %23, i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = trunc i64 %25 to i32
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %26, i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = call i32 (%struct.TYPE_7__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_7__* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  %42 = load i32, i32* @O_RDWR, align 4
  %43 = load i32, i32* @O_NONBLOCK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @O_CLOEXEC, align 4
  %46 = or i32 %44, %45
  %47 = call i8* @open(i8* %20, i32 %46)
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @MP_ERR(%struct.TYPE_7__* %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %20, i32 %57)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %138

59:                                               ; preds = %4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (%struct.TYPE_7__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_7__* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %116, %59
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %119

69:                                               ; preds = %65
  %70 = load i32, i32* @O_RDWR, align 4
  %71 = load i32, i32* @O_NONBLOCK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @O_CLOEXEC, align 4
  %74 = or i32 %72, %73
  %75 = call i8* @open(i8* %26, i32 %74)
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  store i64 %76, i64* %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %69
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = load i32, i32* @errno, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @MP_ERR(%struct.TYPE_7__* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %95)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %138

97:                                               ; preds = %69
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (%struct.TYPE_7__*, i8*, ...) @MP_VERBOSE(%struct.TYPE_7__* %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %99, i8* %26, i64 %106, i64 %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %97
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %10, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %65

119:                                              ; preds = %65
  %120 = load i32, i32* @O_RDONLY, align 4
  %121 = load i32, i32* @O_NONBLOCK, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @O_CLOEXEC, align 4
  %124 = or i32 %122, %123
  %125 = call i8* @open(i8* %23, i32 %124)
  %126 = ptrtoint i8* %125 to i64
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %119
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %135 = load i32, i32* @errno, align 4
  %136 = call i32 (%struct.TYPE_7__*, i8*, i8*, ...) @MP_ERR(%struct.TYPE_7__* %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %23, i32 %135)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %138

137:                                              ; preds = %119
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %138

138:                                              ; preds = %137, %133, %91, %55
  %139 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #2

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_7__*, i8*, ...) #2

declare dso_local i8* @open(i8*, i32) #2

declare dso_local i32 @MP_ERR(%struct.TYPE_7__*, i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
