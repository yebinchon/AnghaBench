; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_RtfAddText.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_RtfAddText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RtfData = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@HLPFILE_RtfAddText.xx = internal global [8 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\\'%x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\{\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\}\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.RtfData*, i8*)* @HLPFILE_RtfAddText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HLPFILE_RtfAddText(%struct.RtfData* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.RtfData*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.RtfData* %0, %struct.RtfData** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.RtfData*, %struct.RtfData** %4, align 8
  %11 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.RtfData*, %struct.RtfData** %4, align 8
  %16 = call i32 @HLPFILE_RtfAddRawString(%struct.RtfData* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %89

20:                                               ; preds = %14
  %21 = load i64, i64* @TRUE, align 8
  %22 = load %struct.RtfData*, %struct.RtfData** %4, align 8
  %23 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %6, align 8
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %76, %24
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = and i32 %33, 128
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @HLPFILE_RtfAddText.xx, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %9, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @HLPFILE_RtfAddText.xx, i64 0, i64 0), i8** %8, align 8
  br label %50

41:                                               ; preds = %30
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %48 [
    i32 123, label %45
    i32 125, label %46
    i32 92, label %47
  ]

45:                                               ; preds = %41
  store i32 2, i32* %9, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %49

46:                                               ; preds = %41
  store i32 2, i32* %9, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %49

47:                                               ; preds = %41
  store i32 2, i32* %9, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %49

48:                                               ; preds = %41
  br label %76

49:                                               ; preds = %47, %46, %45
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load %struct.RtfData*, %struct.RtfData** %4, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32 @HLPFILE_RtfAddRawString(%struct.RtfData* %55, i8* %56, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %54, %50
  %66 = load %struct.RtfData*, %struct.RtfData** %4, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @HLPFILE_RtfAddRawString(%struct.RtfData* %66, i8* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65, %54
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %3, align 4
  br label %89

73:                                               ; preds = %65
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8* %75, i8** %7, align 8
  br label %76

76:                                               ; preds = %73, %48
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  br label %26

79:                                               ; preds = %26
  %80 = load %struct.RtfData*, %struct.RtfData** %4, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @HLPFILE_RtfAddRawString(%struct.RtfData* %80, i8* %81, i32 %87)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %79, %71, %18
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @HLPFILE_RtfAddRawString(%struct.RtfData*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
