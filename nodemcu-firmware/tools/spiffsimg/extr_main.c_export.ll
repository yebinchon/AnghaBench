; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/tools/spiffsimg/extr_main.c_export.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/tools/spiffsimg/extr_main.c_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fs = common dso_local global i32 0, align 4
@SPIFFS_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"spiffs_open\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [512 x i8], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @SPIFFS_RDONLY, align 4
  %11 = call i64 @SPIFFS_open(i32* @fs, i8* %9, i32 %10, i32 0)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @die(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @O_CREAT, align 4
  %19 = load i32, i32* @O_TRUNC, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @O_WRONLY, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @open(i8* %17, i32 %22, i32 436)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @die(i8* %27)
  br label %29

29:                                               ; preds = %26, %16
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %33 = call i32 @SPIFFS_read(i32* @fs, i64 %31, i8* %32, i32 512)
  store i32 %33, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @write(i32 %36, i8* %37, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %35
  br label %30

44:                                               ; preds = %30
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @SPIFFS_close(i32* @fs, i64 %45)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @close(i32 %47)
  ret void
}

declare dso_local i64 @SPIFFS_open(i32*, i8*, i32, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @SPIFFS_read(i32*, i64, i8*, i32) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @SPIFFS_close(i32*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
