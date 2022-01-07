; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_init_unit.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_init_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coreaudio_data = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@kAudioUnitSubType_HALOutput = common dso_local global i32 0, align 4
@kAudioUnitType_Output = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"coreaudio_init_unit\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"find component failed\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"instance unit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coreaudio_data*)* @coreaudio_init_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coreaudio_init_unit(%struct.coreaudio_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coreaudio_data*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.coreaudio_data* %0, %struct.coreaudio_data** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %8 = load i32, i32* @kAudioUnitSubType_HALOutput, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %10 = load i32, i32* @kAudioUnitType_Output, align 4
  store i32 %10, i32* %9, align 4
  %11 = call i32 @AudioComponentFindNext(i32* null, %struct.TYPE_3__* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %16 = call i32 @ca_warn(%struct.coreaudio_data* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %30

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %20 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %19, i32 0, i32 1
  %21 = call i32 @AudioComponentInstanceNew(i32 %18, i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %24 = call i32 @ca_success(i32 %22, %struct.coreaudio_data* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %29 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %26, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @AudioComponentFindNext(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @ca_warn(%struct.coreaudio_data*, i8*, i8*) #1

declare dso_local i32 @AudioComponentInstanceNew(i32, i32*) #1

declare dso_local i32 @ca_success(i32, %struct.coreaudio_data*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
