; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rtc/extr_setdate.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rtc/extr_setdate.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }

@default_time = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"usage: rtctest_setdate <rtcdev> <DD-MM-YYYY> [HH:MM:SS]\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%d-%d-%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%d:%d:%d\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Test will set RTC date/time to %d-%d-%d, %02d:%02d:%02d.\0A\00", align 1
@RTC_SET_TIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"RTC_SET_TIME ioctl\00", align 1
@RTC_RD_TIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"RTC_RD_TIME ioctl\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"\0A\0ACurrent RTC date/time is %d-%d-%d, %02d:%02d:%02d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtc_time, align 4
  %9 = alloca %struct.rtc_time, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i8*, i8** @default_time, align 8
  store i8* %13, i8** %12, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %26 [
    i32 4, label %15
    i32 3, label %19
  ]

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 3
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %12, align 8
  br label %19

19:                                               ; preds = %2, %15
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %113

29:                                               ; preds = %19
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* @O_RDONLY, align 4
  %32 = call i32 @open(i8* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @perror(i8* %36)
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @exit(i32 %38) #3
  unreachable

40:                                               ; preds = %29
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 0
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 1
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 2
  %45 = call i32 @sscanf(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %42, i32* %43, i32* %44)
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1900
  store i32 %51, i32* %49, align 4
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 3
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 4
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 5
  %56 = call i32 @sscanf(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %53, i32* %54, i32* %55)
  %57 = load i32, i32* @stderr, align 4
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1900
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 %62, i32 %65, i32 %67, i32 %69, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @RTC_SET_TIME, align 4
  %75 = call i32 @ioctl(i32 %73, i32 %74, %struct.rtc_time* %8)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %84

78:                                               ; preds = %40
  %79 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @close(i32 %80)
  %82 = load i32, i32* @errno, align 4
  %83 = call i32 @exit(i32 %82) #3
  unreachable

84:                                               ; preds = %40
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @RTC_RD_TIME, align 4
  %87 = call i32 @ioctl(i32 %85, i32 %86, %struct.rtc_time* %9)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %92 = load i32, i32* @errno, align 4
  %93 = call i32 @exit(i32 %92) #3
  unreachable

94:                                               ; preds = %84
  %95 = load i32, i32* @stderr, align 4
  %96 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  %101 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1900
  %104 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %97, i32 %100, i32 %103, i32 %105, i32 %107, i32 %109)
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @close(i32 %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %94, %26
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.rtc_time*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
