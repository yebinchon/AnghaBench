; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__decode_jpeg_image.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__decode_jpeg_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i8*, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32* }

@STBI__SCAN_load = common dso_local global i32 0, align 4
@STBI__MARKER_none = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"junk before marker\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Corrupt JPEG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @stbi__decode_jpeg_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__decode_jpeg_image(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %9
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %6

27:                                               ; preds = %6
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = load i32, i32* @STBI__SCAN_load, align 4
  %32 = call i32 @stbi__decode_jpeg_header(%struct.TYPE_11__* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %114

35:                                               ; preds = %27
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = call i32 @stbi__get_marker(%struct.TYPE_11__* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %102, %35
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @stbi__EOI(i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %105

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @stbi__SOS(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %95

47:                                               ; preds = %43
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = call i32 @stbi__process_scan_header(%struct.TYPE_11__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %114

52:                                               ; preds = %47
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = call i32 @stbi__parse_entropy_coded_data(%struct.TYPE_11__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %114

57:                                               ; preds = %52
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** @STBI__MARKER_none, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %92, %63
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @stbi__at_eof(i32 %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br i1 %70, label %71, label %93

71:                                               ; preds = %64
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @stbi__get8(i32 %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 255
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @stbi__get8(i32 %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  br label %93

86:                                               ; preds = %71
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @stbi__err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %90, i32* %2, align 4
  br label %114

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91
  br label %64

93:                                               ; preds = %79, %64
  br label %94

94:                                               ; preds = %93, %57
  br label %102

95:                                               ; preds = %43
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @stbi__process_marker(%struct.TYPE_11__* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  store i32 0, i32* %2, align 4
  br label %114

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %94
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = call i32 @stbi__get_marker(%struct.TYPE_11__* %103)
  store i32 %104, i32* %4, align 4
  br label %38

105:                                              ; preds = %38
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = call i32 @stbi__jpeg_finish(%struct.TYPE_11__* %111)
  br label %113

113:                                              ; preds = %110, %105
  store i32 1, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %100, %89, %56, %51, %34
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @stbi__decode_jpeg_header(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @stbi__get_marker(%struct.TYPE_11__*) #1

declare dso_local i32 @stbi__EOI(i32) #1

declare dso_local i64 @stbi__SOS(i32) #1

declare dso_local i32 @stbi__process_scan_header(%struct.TYPE_11__*) #1

declare dso_local i32 @stbi__parse_entropy_coded_data(%struct.TYPE_11__*) #1

declare dso_local i32 @stbi__at_eof(i32) #1

declare dso_local i8* @stbi__get8(i32) #1

declare dso_local i32 @stbi__err(i8*, i8*) #1

declare dso_local i32 @stbi__process_marker(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @stbi__jpeg_finish(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
