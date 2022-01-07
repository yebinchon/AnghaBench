; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_set_screensaver.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_set_screensaver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_x11_state = type { i32, i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"%s screensaver.\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Enabling\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Disabling\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Setting DMPS: %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"DPMS state could not be set.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo_x11_state*, i32)* @set_screensaver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_screensaver(%struct.vo_x11_state* %0, i32 %1) #0 {
  %3 = alloca %struct.vo_x11_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vo_x11_state* %0, %struct.vo_x11_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %10 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %16 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  br label %94

21:                                               ; preds = %14
  %22 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @MP_VERBOSE(%struct.vo_x11_state* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %30 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @xss_suspend(i32* %31, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  br label %94

39:                                               ; preds = %21
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @DPMSQueryExtension(i32* %40, i32* %6, i32* %6)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %94

43:                                               ; preds = %39
  store i64 0, i64* %7, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @DPMSInfo(i32* %44, i32* %8, i64* %7)
  %46 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %47 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %94

54:                                               ; preds = %50, %43
  %55 = load i32, i32* %4, align 4
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = icmp ne i32 %55, %60
  br i1 %61, label %62, label %93

62:                                               ; preds = %54
  %63 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %68 = call i32 @MP_VERBOSE(%struct.vo_x11_state* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @DPMSEnable(i32* %72)
  br label %79

74:                                               ; preds = %62
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @DPMSDisable(i32* %75)
  %77 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %78 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %71
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @DPMSInfo(i32* %80, i32* %8, i64* %7)
  %82 = load i32, i32* %4, align 4
  %83 = load i64, i64* %7, align 8
  %84 = icmp ne i64 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = icmp ne i32 %82, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %91 = call i32 @MP_WARN(%struct.vo_x11_state* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %79
  br label %93

93:                                               ; preds = %92, %54
  br label %94

94:                                               ; preds = %20, %38, %53, %93, %39
  ret void
}

declare dso_local i32 @MP_VERBOSE(%struct.vo_x11_state*, i8*, i8*) #1

declare dso_local i64 @xss_suspend(i32*, i32) #1

declare dso_local i64 @DPMSQueryExtension(i32*, i32*, i32*) #1

declare dso_local i32 @DPMSInfo(i32*, i32*, i64*) #1

declare dso_local i32 @DPMSEnable(i32*) #1

declare dso_local i32 @DPMSDisable(i32*) #1

declare dso_local i32 @MP_WARN(%struct.vo_x11_state*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
