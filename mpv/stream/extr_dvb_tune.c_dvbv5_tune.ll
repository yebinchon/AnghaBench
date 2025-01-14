; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_dvbv5_tune.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_dvbv5_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtv_properties = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Tuning via S2API, channel is %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Dumping raw tuning commands and values:\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%02d: 0x%x(%d) => 0x%x(%d)\0A\00", align 1
@FE_SET_PROPERTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"ERROR tuning channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, %struct.dtv_properties*)* @dvbv5_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbv5_tune(i32* %0, i32 %1, i32 %2, %struct.dtv_properties* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dtv_properties*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dtv_properties* %3, %struct.dtv_properties** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @get_dvb_delsys(i32 %12)
  %14 = call i32 (i32*, i8*, ...) @MP_VERBOSE(i32* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 (i32*, i8*, ...) @MP_VERBOSE(i32* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %61, %4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.dtv_properties*, %struct.dtv_properties** %9, align 8
  %20 = getelementptr inbounds %struct.dtv_properties, %struct.dtv_properties* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %17
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.dtv_properties*, %struct.dtv_properties** %9, align 8
  %27 = getelementptr inbounds %struct.dtv_properties, %struct.dtv_properties* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dtv_properties*, %struct.dtv_properties** %9, align 8
  %35 = getelementptr inbounds %struct.dtv_properties, %struct.dtv_properties* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dtv_properties*, %struct.dtv_properties** %9, align 8
  %43 = getelementptr inbounds %struct.dtv_properties, %struct.dtv_properties* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dtv_properties*, %struct.dtv_properties** %9, align 8
  %52 = getelementptr inbounds %struct.dtv_properties, %struct.dtv_properties* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32*, i8*, ...) @MP_VERBOSE(i32* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 %33, i32 %41, i32 %50, i32 %59)
  br label %61

61:                                               ; preds = %23
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %17

64:                                               ; preds = %17
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @FE_SET_PROPERTY, align 4
  %67 = load %struct.dtv_properties*, %struct.dtv_properties** %9, align 8
  %68 = call i64 @ioctl(i32 %65, i32 %66, %struct.dtv_properties* %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @MP_ERR(i32* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %74

73:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @MP_VERBOSE(i32*, i8*, ...) #1

declare dso_local i32 @get_dvb_delsys(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.dtv_properties*) #1

declare dso_local i32 @MP_ERR(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
