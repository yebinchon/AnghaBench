; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcvideo.c_PcVideoSetDisplayMode.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcvideo.c_PcVideoSetDisplayMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIDEOMODE_NORMAL_TEXT = common dso_local global i64 0, align 8
@DisplayMode = common dso_local global i32 0, align 4
@VIDEOCARD_CGA_OR_OTHER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"CGA or other display adapter detected.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Using 80x25 text mode.\0A\00", align 1
@VIDEOCARD_EGA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"EGA display adapter detected.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"VGA display adapter detected.\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"NORMAL_VGA\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"EXTENDED_VGA\00", align 1
@VIDEOMODE_EXTENDED_TEXT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"Error: unable to set video display mode 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Defaulting to 80x25 text mode.\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Press any key to continue.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PcVideoSetDisplayMode(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @VIDEOMODE_NORMAL_TEXT, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* null, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 0, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %10, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @PcVideoSetBlinkBit(i32 %19)
  %21 = load i32, i32* @DisplayMode, align 4
  store i32 %21, i32* %3, align 4
  br label %79

22:                                               ; preds = %10
  %23 = load i64, i64* @VIDEOCARD_CGA_OR_OTHER, align 8
  %24 = call i64 (...) @PcVideoDetectVideoCard()
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i64, i64* @VIDEOMODE_NORMAL_TEXT, align 8
  store i64 %30, i64* %6, align 8
  br label %59

31:                                               ; preds = %22
  %32 = load i64, i64* @VIDEOCARD_EGA, align 8
  %33 = call i64 (...) @PcVideoDetectVideoCard()
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i64, i64* @VIDEOMODE_NORMAL_TEXT, align 8
  store i64 %39, i64* %6, align 8
  br label %58

40:                                               ; preds = %31
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @_stricmp(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp eq i64 0, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i64, i64* @VIDEOMODE_NORMAL_TEXT, align 8
  store i64 %46, i64* %6, align 8
  br label %57

47:                                               ; preds = %40
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @_stricmp(i8* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %50 = icmp eq i64 0, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @VIDEOMODE_EXTENDED_TEXT, align 8
  store i64 %52, i64* %6, align 8
  br label %56

53:                                               ; preds = %47
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @strtoul(i8* %54, i32* null, i32 0)
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %53, %51
  br label %57

57:                                               ; preds = %56, %45
  br label %58

58:                                               ; preds = %57, %35
  br label %59

59:                                               ; preds = %58, %26
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @PcVideoSetMode(i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %6, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %69 = call i32 (...) @PcConsGetCh()
  %70 = load i64, i64* @VIDEOMODE_NORMAL_TEXT, align 8
  %71 = call i32 @PcVideoSetMode(i64 %70)
  br label %72

72:                                               ; preds = %63, %59
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @PcVideoSetBlinkBit(i32 %76)
  %78 = load i32, i32* @DisplayMode, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %72, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @PcVideoSetBlinkBit(i32) #1

declare dso_local i64 @PcVideoDetectVideoCard(...) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @_stricmp(i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @PcVideoSetMode(i64) #1

declare dso_local i32 @PcConsGetCh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
