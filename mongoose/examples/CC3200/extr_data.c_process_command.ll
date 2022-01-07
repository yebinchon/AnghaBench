; ModuleID = '/home/carl/AnghaBench/mongoose/examples/CC3200/extr_data.c_process_command.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/CC3200/extr_data.c_process_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"{\22t\22:%d,\22v\22:%d}\00", align 1
@LL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid request: %.*s\00", align 1
@MCU_RED_LED_GPIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid value: %.*s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unknown command: %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i8*, i64)* @process_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_command(%struct.mg_connection* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @sscanf(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %8)
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* @LL_ERROR, align 4
  %14 = load i64, i64* %6, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @LOG(i32 %13, i8* %16)
  br label %45

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %32 [
    i32 48, label %23
    i32 49, label %26
    i32 50, label %29
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @MCU_RED_LED_GPIO, align 4
  %25 = call i32 @GPIO_IF_LedOff(i32 %24)
  br label %38

26:                                               ; preds = %21
  %27 = load i32, i32* @MCU_RED_LED_GPIO, align 4
  %28 = call i32 @GPIO_IF_LedOn(i32 %27)
  br label %38

29:                                               ; preds = %21
  %30 = load i32, i32* @MCU_RED_LED_GPIO, align 4
  %31 = call i32 @GPIO_IF_LedToggle(i32 %30)
  br label %38

32:                                               ; preds = %21
  %33 = load i32, i32* @LL_ERROR, align 4
  %34 = load i64, i64* %6, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @LOG(i32 %33, i8* %36)
  br label %45

38:                                               ; preds = %29, %26, %23
  br label %45

39:                                               ; preds = %18
  %40 = load i32, i32* @LL_ERROR, align 4
  %41 = load i64, i64* %6, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @LOG(i32 %40, i8* %43)
  br label %45

45:                                               ; preds = %12, %32, %39, %38
  ret void
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @GPIO_IF_LedOff(i32) #1

declare dso_local i32 @GPIO_IF_LedOn(i32) #1

declare dso_local i32 @GPIO_IF_LedToggle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
