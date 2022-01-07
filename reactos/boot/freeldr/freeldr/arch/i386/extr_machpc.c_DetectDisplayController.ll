; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_machpc.c_DetectDisplayController.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_machpc.c_DetectDisplayController.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"VESA version %c.%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"VESA not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"VBE Display\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"VGA Display\00", align 1
@ControllerClass = common dso_local global i32 0, align 4
@DisplayController = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Created key: DisplayController\\0\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"VESA/DDC supported!\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"EDID data read successfully!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DetectDisplayController to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DetectDisplayController(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [80 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 (...) @BiosIsVesaSupported()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, 8
  %13 = add nsw i32 %12, 48
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 255
  %16 = add nsw i32 %15, 48
  %17 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  br label %20

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %10
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 512
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 0
  %25 = call i32 @strcpy(i32* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %29

26:                                               ; preds = %20
  %27 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 0
  %28 = call i32 @strcpy(i32* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @ControllerClass, align 4
  %32 = load i32, i32* @DisplayController, align 4
  %33 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 0
  %34 = call i32 @FldrCreateComponentKey(i32 %30, i32 %31, i32 %32, i32 0, i32 0, i32 -1, i32* %33, i32* null, i32 0, i32* %5)
  %35 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %29
  %39 = call i64 (...) @BiosIsVesaDdcSupported()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %43 = call i64 (...) @BiosVesaReadEdid()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  br label %48

48:                                               ; preds = %47, %38
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @BiosIsVesaSupported(...) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i32 @FldrCreateComponentKey(i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i64 @BiosIsVesaDdcSupported(...) #1

declare dso_local i64 @BiosVesaReadEdid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
