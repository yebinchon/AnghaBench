; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_check_status.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }

@POLLPRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Getting frontend status\0A\00", align 1
@FE_READ_STATUS = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@FE_TIMEDOUT = common dso_local global i32 0, align 4
@FE_READ_BER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Bit error rate: %d\0A\00", align 1
@FE_READ_SIGNAL_STRENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Signal strength: %d\0A\00", align 1
@FE_READ_SNR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"SNR: %d\0A\00", align 1
@FE_READ_UNCORRECTED_BLOCKS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"UNC: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Not able to lock to the signal on the given frequency, timeout: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_status(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1 x %struct.pollfd], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %17 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @POLLPRI, align 4
  %19 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 (i32*, i8*, ...) @MP_VERBOSE(i32* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @time(i32* null)
  store i32 %23, i32* %14, align 4
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %74, %3
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %75

28:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  %29 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %30, 1000
  %32 = call i64 @poll(%struct.pollfd* %29, i32 1, i32 %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %28
  %35 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %10, i64 0, i64 0
  %36 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @POLLPRI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @FE_READ_STATUS, align 4
  %44 = call i64 @ioctl(i32 %42, i32 %43, i32* %9)
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @FE_HAS_LOCK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %41
  br label %56

56:                                               ; preds = %55, %34
  br label %57

57:                                               ; preds = %56, %28
  %58 = call i32 @usleep(i32 10000)
  %59 = call i32 @time(i32* null)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @FE_TIMEDOUT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %12, align 4
  %66 = icmp sge i32 %65, 2
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67, %64, %57
  store i32 1, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %67
  br label %24

75:                                               ; preds = %24
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @FE_HAS_LOCK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %120

80:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @FE_READ_BER, align 4
  %83 = call i64 @ioctl(i32 %81, i32 %82, i32* %8)
  %84 = icmp sge i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (i32*, i8*, ...) @MP_VERBOSE(i32* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %80
  store i32 0, i32* %8, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @FE_READ_SIGNAL_STRENGTH, align 4
  %92 = call i64 @ioctl(i32 %90, i32 %91, i32* %8)
  %93 = icmp sge i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 (i32*, i8*, ...) @MP_VERBOSE(i32* %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %89
  store i32 0, i32* %8, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @FE_READ_SNR, align 4
  %101 = call i64 @ioctl(i32 %99, i32 %100, i32* %8)
  %102 = icmp sge i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 (i32*, i8*, ...) @MP_VERBOSE(i32* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %103, %98
  store i32 0, i32* %8, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @FE_READ_UNCORRECTED_BLOCKS, align 4
  %110 = call i64 @ioctl(i32 %108, i32 %109, i32* %8)
  %111 = icmp sge i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (i32*, i8*, ...) @MP_VERBOSE(i32* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %112, %107
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @print_status(i32* %117, i32 %118)
  br label %124

120:                                              ; preds = %75
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @MP_ERR(i32* %121, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  store i32 -1, i32* %4, align 4
  br label %125

124:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %120
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @MP_VERBOSE(i32*, i8*, ...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @print_status(i32*, i32) #1

declare dso_local i32 @MP_ERR(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
