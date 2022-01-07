; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_convert_vlc_audio_format.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_convert_vlc_audio_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"S16N\00", align 1
@AUDIO_FORMAT_16BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"S32N\00", align 1
@AUDIO_FORMAT_32BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"FL32\00", align 1
@AUDIO_FORMAT_FLOAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"U16N\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"U32N\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"S24N\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"U24N\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"FL64\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"S16I\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"U16I\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"S24I\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"U24I\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"S32I\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"U32I\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @convert_vlc_audio_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_vlc_audio_format(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @AUDIO_FORMAT_16BIT, align 4
  store i32 %8, i32* %2, align 4
  br label %147

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @AUDIO_FORMAT_32BIT, align 4
  store i32 %14, i32* %2, align 4
  br label %147

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @AUDIO_FORMAT_FLOAT, align 4
  store i32 %20, i32* %2, align 4
  br label %147

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* bitcast ([5 x i8]* @.str to i32*), align 1
  %28 = load i8*, i8** %3, align 8
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @AUDIO_FORMAT_16BIT, align 4
  store i32 %30, i32* %2, align 4
  br label %147

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* bitcast ([5 x i8]* @.str.1 to i32*), align 1
  %39 = load i8*, i8** %3, align 8
  %40 = bitcast i8* %39 to i32*
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @AUDIO_FORMAT_32BIT, align 4
  store i32 %41, i32* %2, align 4
  br label %147

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* bitcast ([5 x i8]* @.str.1 to i32*), align 1
  %50 = load i8*, i8** %3, align 8
  %51 = bitcast i8* %50 to i32*
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @AUDIO_FORMAT_32BIT, align 4
  store i32 %52, i32* %2, align 4
  br label %147

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* bitcast ([5 x i8]* @.str.1 to i32*), align 1
  %61 = load i8*, i8** %3, align 8
  %62 = bitcast i8* %61 to i32*
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @AUDIO_FORMAT_32BIT, align 4
  store i32 %63, i32* %2, align 4
  br label %147

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 1
  %72 = load i8*, i8** %3, align 8
  %73 = bitcast i8* %72 to i32*
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @AUDIO_FORMAT_FLOAT, align 4
  store i32 %74, i32* %2, align 4
  br label %147

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i32, i32* bitcast ([5 x i8]* @.str to i32*), align 1
  %83 = load i8*, i8** %3, align 8
  %84 = bitcast i8* %83 to i32*
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @AUDIO_FORMAT_16BIT, align 4
  store i32 %85, i32* %2, align 4
  br label %147

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32, i32* bitcast ([5 x i8]* @.str to i32*), align 1
  %94 = load i8*, i8** %3, align 8
  %95 = bitcast i8* %94 to i32*
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @AUDIO_FORMAT_16BIT, align 4
  store i32 %96, i32* %2, align 4
  br label %147

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32, i32* bitcast ([5 x i8]* @.str.1 to i32*), align 1
  %105 = load i8*, i8** %3, align 8
  %106 = bitcast i8* %105 to i32*
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @AUDIO_FORMAT_32BIT, align 4
  store i32 %107, i32* %2, align 4
  br label %147

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109
  %111 = load i8*, i8** %3, align 8
  %112 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i32, i32* bitcast ([5 x i8]* @.str.1 to i32*), align 1
  %116 = load i8*, i8** %3, align 8
  %117 = bitcast i8* %116 to i32*
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @AUDIO_FORMAT_32BIT, align 4
  store i32 %118, i32* %2, align 4
  br label %147

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120
  %122 = load i8*, i8** %3, align 8
  %123 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i32, i32* bitcast ([5 x i8]* @.str.1 to i32*), align 1
  %127 = load i8*, i8** %3, align 8
  %128 = bitcast i8* %127 to i32*
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @AUDIO_FORMAT_32BIT, align 4
  store i32 %129, i32* %2, align 4
  br label %147

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  %133 = load i8*, i8** %3, align 8
  %134 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32, i32* bitcast ([5 x i8]* @.str.1 to i32*), align 1
  %138 = load i8*, i8** %3, align 8
  %139 = bitcast i8* %138 to i32*
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @AUDIO_FORMAT_32BIT, align 4
  store i32 %140, i32* %2, align 4
  br label %147

141:                                              ; preds = %132
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 1
  %144 = load i8*, i8** %3, align 8
  %145 = bitcast i8* %144 to i32*
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @AUDIO_FORMAT_FLOAT, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %142, %136, %125, %114, %103, %92, %81, %70, %59, %48, %37, %26, %19, %13, %7
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @chroma_is(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
