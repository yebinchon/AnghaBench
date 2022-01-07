; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/tools/spiffsimg/extr_main.c_import.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/tools/spiffsimg/extr_main.c_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@fs = common dso_local global i32 0, align 4
@SPIFFS_CREAT = common dso_local global i32 0, align 4
@SPIFFS_TRUNC = common dso_local global i32 0, align 4
@SPIFFS_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"spiffs_open\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"spiffs_write\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"spiffs_close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [16384 x i8], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = call i32 @open(i8* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @die(i8* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @SPIFFS_CREAT, align 4
  %20 = load i32, i32* @SPIFFS_TRUNC, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SPIFFS_WRONLY, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @SPIFFS_open(i32* @fs, i8* %18, i32 %23, i32 0)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = call i32 @die(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %17
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %33 = call i32 @read(i32 %31, i8* %32, i32 16384)
  store i32 %33, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @SPIFFS_write(i32* @fs, i64 %36, i8* %37, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @die(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %35
  br label %30

44:                                               ; preds = %30
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @SPIFFS_close(i32* @fs, i64 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @die(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @close(i32 %51)
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i64 @SPIFFS_open(i32*, i8*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @SPIFFS_write(i32*, i64, i8*, i32) #1

declare dso_local i64 @SPIFFS_close(i32*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
