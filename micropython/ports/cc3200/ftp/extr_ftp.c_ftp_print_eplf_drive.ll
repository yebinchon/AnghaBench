; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_print_eplf_drive.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/ftp/extr_ftp.c_ftp_print_eplf_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"d\00", align 1
@FTP_UNIX_TIME_20150101 = common dso_local global i64 0, align 8
@FTP_UNIX_TIME_20000101 = common dso_local global i64 0, align 8
@FTP_UNIX_SECONDS_180_DAYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"%srw-rw-r--   1 root  root %9u %s %2u %5u %s\0D\0A\00", align 1
@ftp_month = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"%srw-rw-r--   1 root  root %9u %s %2u %02u:%02u %s\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @ftp_print_eplf_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_print_eplf_drive(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = load i64, i64* @FTP_UNIX_TIME_20150101, align 8
  %12 = load i64, i64* @FTP_UNIX_TIME_20000101, align 8
  %13 = sub nsw i64 %11, %12
  %14 = call i32 @timeutils_seconds_since_2000_to_struct_time(i64 %13, %struct.TYPE_4__* %8)
  %15 = call i64 (...) @pyb_rtc_get_seconds()
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* @FTP_UNIX_SECONDS_180_DAYS, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @FTP_UNIX_TIME_20150101, align 8
  %19 = load i64, i64* @FTP_UNIX_TIME_20000101, align 8
  %20 = sub nsw i64 %18, %19
  %21 = sub nsw i64 %17, %20
  %22 = icmp slt i64 %16, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ftp_month, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 (i8*, i64, i8*, i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %24, i64 %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 0, i8* %34, i32 %36, i32 %38, i8* %39)
  store i32 %40, i32* %4, align 4
  br label %61

41:                                               ; preds = %3
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ftp_month, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 (i8*, i64, i8*, i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %42, i64 %43, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 0, i8* %52, i32 %54, i32 %56, i32 %58, i8* %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %41, %23
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @timeutils_seconds_since_2000_to_struct_time(i64, %struct.TYPE_4__*) #1

declare dso_local i64 @pyb_rtc_get_seconds(...) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
