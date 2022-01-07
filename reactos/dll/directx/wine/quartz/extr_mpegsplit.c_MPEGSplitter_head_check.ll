; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_mpegsplit.c_MPEGSplitter_head_check.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_mpegsplit.c_MPEGSplitter_head_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACK_START_CODE = common dso_local global i32 0, align 4
@VIDEO_ELEMENTARY_STREAM = common dso_local global i32 0, align 4
@AUDIO_ELEMENTARY_STREAM = common dso_local global i32 0, align 4
@MPEG_SYSTEM_HEADER = common dso_local global i32 0, align 4
@SEQUENCE_HEADER_CODE = common dso_local global i32 0, align 4
@MPEG_VIDEO_HEADER = common dso_local global i32 0, align 4
@MPEG_AUDIO_HEADER = common dso_local global i32 0, align 4
@MPEG_NO_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @MPEGSplitter_head_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MPEGSplitter_head_check(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %47

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %8
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PACK_START_CODE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VIDEO_ELEMENTARY_STREAM, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AUDIO_ELEMENTARY_STREAM, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %24, %18
  %37 = load i32, i32* @MPEG_SYSTEM_HEADER, align 4
  store i32 %37, i32* %2, align 4
  br label %84

38:                                               ; preds = %30
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SEQUENCE_HEADER_CODE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @MPEG_VIDEO_HEADER, align 4
  store i32 %45, i32* %2, align 4
  br label %84

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %13, %8, %1
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 255
  br i1 %51, label %52, label %82

52:                                               ; preds = %47
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 5
  %57 = and i32 %56, 7
  %58 = icmp eq i32 %57, 7
  br i1 %58, label %59, label %82

59:                                               ; preds = %52
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 1
  %64 = and i32 %63, 3
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 4
  %71 = and i32 %70, 15
  %72 = icmp ne i32 %71, 15
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 2
  %78 = and i32 %77, 3
  %79 = icmp ne i32 %78, 3
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @MPEG_AUDIO_HEADER, align 4
  store i32 %81, i32* %2, align 4
  br label %84

82:                                               ; preds = %73, %66, %59, %52, %47
  %83 = load i32, i32* @MPEG_NO_HEADER, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %80, %44, %36
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
