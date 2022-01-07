; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_RtfAddHexBytes.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_RtfAddHexBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RtfData = type { i64 }

@HLPFILE_RtfAddHexBytes._2hex = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.RtfData*, i8*, i32)* @HLPFILE_RtfAddHexBytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HLPFILE_RtfAddHexBytes(%struct.RtfData* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.RtfData*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [512 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.RtfData* %0, %struct.RtfData** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %11, align 8
  %14 = load %struct.RtfData*, %struct.RtfData** %5, align 8
  %15 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %3
  %19 = load %struct.RtfData*, %struct.RtfData** %5, align 8
  %20 = call i32 @HLPFILE_RtfAddRawString(%struct.RtfData* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %4, align 8
  br label %84

24:                                               ; preds = %18
  %25 = load i64, i64* @TRUE, align 8
  %26 = load %struct.RtfData*, %struct.RtfData** %5, align 8
  %27 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %3
  br label %29

29:                                               ; preds = %78, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %82

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @min(i32 256, i32 %33)
  store i32 %34, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %65, %32
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %35
  %40 = load i8*, i8** @HLPFILE_RtfAddHexBytes._2hex, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i32, i32* %9, align 4
  %48 = mul i32 2, %47
  %49 = add i32 %48, 0
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 %50
  store i8 %46, i8* %51, align 1
  %52 = load i8*, i8** @HLPFILE_RtfAddHexBytes._2hex, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %11, align 8
  %55 = load i32, i32* %53, align 4
  %56 = and i32 %55, 15
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %52, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i32, i32* %9, align 4
  %61 = mul i32 2, %60
  %62 = add i32 %61, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 %63
  store i8 %59, i8* %64, align 1
  br label %65

65:                                               ; preds = %39
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %35

68:                                               ; preds = %35
  %69 = load %struct.RtfData*, %struct.RtfData** %5, align 8
  %70 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %71 = load i32, i32* %10, align 4
  %72 = mul i32 2, %71
  %73 = call i32 @HLPFILE_RtfAddRawString(%struct.RtfData* %69, i8* %70, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %68
  %76 = load i64, i64* @FALSE, align 8
  store i64 %76, i64* %4, align 8
  br label %84

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %7, align 4
  %81 = sub i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %29

82:                                               ; preds = %29
  %83 = load i64, i64* @TRUE, align 8
  store i64 %83, i64* %4, align 8
  br label %84

84:                                               ; preds = %82, %75, %22
  %85 = load i64, i64* %4, align 8
  ret i64 %85
}

declare dso_local i32 @HLPFILE_RtfAddRawString(%struct.RtfData*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
