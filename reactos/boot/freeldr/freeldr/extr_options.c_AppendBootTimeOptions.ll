; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/extr_options.c_AppendBootTimeOptions.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/extr_options.c_AppendBootTimeOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BootOptionChoice = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c" /SAFEBOOT:MINIMAL /SOS /NOGUIBOOT\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c" /SAFEBOOT:NETWORK /SOS /NOGUIBOOT\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c" /SAFEBOOT:MINIMAL(ALTERNATESHELL) /SOS /NOGUIBOOT\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Last known good configuration is not supported yet!\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c" /SAFEBOOT:DSREPAIR /SOS\00", align 1
@BootLogging = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c" /BOOTLOG\00", align 1
@VgaMode = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c" /BASEVIDEO\00", align 1
@DebuggingMode = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c" /DEBUG\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AppendBootTimeOptions(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @BootOptionChoice, align 4
  switch i32 %4, label %19 [
    i32 130, label %5
    i32 128, label %8
    i32 129, label %11
    i32 131, label %14
    i32 132, label %16
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @strcat(i32 %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %20

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @strcat(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %20

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @strcat(i32 %12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %20

14:                                               ; preds = %1
  %15 = call i32 @DbgPrint(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @strcat(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %16, %14, %11, %8, %5
  %21 = load i64, i64* @BootLogging, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @strcat(i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i64, i64* @VgaMode, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @strcat(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i64, i64* @DebuggingMode, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @strcat(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i32 @DbgPrint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
