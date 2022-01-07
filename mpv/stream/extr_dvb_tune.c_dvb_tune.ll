; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_dvb_tune.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_dvb_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"dvb_tune %s Freq: %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"dvb_tune, TUNING FAILED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_tune(%struct.TYPE_7__* %0, i32 %1, i32 %2, i8 signext %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15) #0 {
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_6__*, align 8
  %34 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %17, align 8
  store i32 %1, i32* %18, align 4
  store i32 %2, i32* %19, align 4
  store i8 %3, i8* %20, align 1
  store i32 %4, i32* %21, align 4
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i32 %9, i32* %26, align 4
  store i32 %10, i32* %27, align 4
  store i32 %11, i32* %28, align 4
  store i32 %12, i32* %29, align 4
  store i32 %13, i32* %30, align 4
  store i32 %14, i32* %31, align 4
  store i32 %15, i32* %32, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %36 = load i32, i32* %18, align 4
  %37 = call i32 @get_dvb_delsys(i32 %36)
  %38 = load i32, i32* %19, align 4
  %39 = sext i32 %38 to i64
  %40 = call i32 (%struct.TYPE_7__*, i8*, ...) @MP_INFO(%struct.TYPE_7__* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %33, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %21, align 4
  %51 = load i8, i8* %20, align 1
  %52 = load i32, i32* %23, align 4
  %53 = load i32, i32* %24, align 4
  %54 = load i32, i32* %22, align 4
  %55 = load i32, i32* %25, align 4
  %56 = load i32, i32* %29, align 4
  %57 = load i32, i32* %27, align 4
  %58 = load i32, i32* %26, align 4
  %59 = load i32, i32* %28, align 4
  %60 = load i32, i32* %30, align 4
  %61 = load i32, i32* %31, align 4
  %62 = load i32, i32* %32, align 4
  %63 = call i32 @tune_it(%struct.TYPE_7__* %44, i32 %47, i32 %48, i32 %49, i32 %50, i8 signext %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %34, align 4
  %64 = load i32, i32* %34, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %16
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %68 = call i32 (%struct.TYPE_7__*, i8*, ...) @MP_INFO(%struct.TYPE_7__* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %16
  %70 = load i32, i32* %34, align 4
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  ret i32 %72
}

declare dso_local i32 @MP_INFO(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @get_dvb_delsys(i32) #1

declare dso_local i32 @tune_it(%struct.TYPE_7__*, i32, i32, i32, i32, i8 signext, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
