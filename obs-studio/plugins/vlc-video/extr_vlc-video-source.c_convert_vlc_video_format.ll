; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_convert_vlc_video_format.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_convert_vlc_video_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@VIDEO_FORMAT_RGBA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"BGRA\00", align 1
@VIDEO_FORMAT_BGRA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"NV12\00", align 1
@VIDEO_FORMAT_NV12 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"I420\00", align 1
@VIDEO_FORMAT_I420 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"IYUV\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"NV21\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"I422\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Y42B\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"YV12\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"yv12\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"J420\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"UYVY\00", align 1
@VIDEO_FORMAT_UYVY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"UYNV\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"UYNY\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Y422\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"HDYC\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"AVUI\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"uyv1\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"2vuy\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"2Vuy\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"2Vu1\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"YUY2\00", align 1
@VIDEO_FORMAT_YUY2 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"YUYV\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"YUNV\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"V422\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"YVYU\00", align 1
@VIDEO_FORMAT_YVYU = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"v210\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"cyuv\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"CYUV\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"VYUY\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"NV16\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"NV61\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"I410\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"J422\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"I444\00", align 1
@VIDEO_FORMAT_I444 = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [5 x i8] c"J444\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"YUVA\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"I440\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"J440\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"YVU9\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"I411\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"Y41B\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"GREY\00", align 1
@VIDEO_FORMAT_Y800 = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [5 x i8] c"Y800\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"Y8  \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @convert_vlc_video_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_vlc_video_format(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @VIDEO_FORMAT_RGBA, align 4
  store i32 %11, i32* %3, align 4
  br label %425

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @VIDEO_FORMAT_BGRA, align 4
  store i32 %17, i32* %3, align 4
  br label %425

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @VIDEO_FORMAT_NV12, align 4
  store i32 %23, i32* %3, align 4
  br label %425

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @VIDEO_FORMAT_I420, align 4
  store i32 %29, i32* %3, align 4
  br label %425

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @VIDEO_FORMAT_I420, align 4
  store i32 %35, i32* %3, align 4
  br label %425

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 1
  %43 = load i8*, i8** %4, align 8
  %44 = bitcast i8* %43 to i32*
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @VIDEO_FORMAT_NV12, align 4
  store i32 %45, i32* %3, align 4
  br label %425

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 1
  %54 = load i8*, i8** %4, align 8
  %55 = bitcast i8* %54 to i32*
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @VIDEO_FORMAT_NV12, align 4
  store i32 %56, i32* %3, align 4
  br label %425

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 1
  %65 = load i8*, i8** %4, align 8
  %66 = bitcast i8* %65 to i32*
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @VIDEO_FORMAT_NV12, align 4
  store i32 %67, i32* %3, align 4
  br label %425

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 1
  %76 = load i8*, i8** %4, align 8
  %77 = bitcast i8* %76 to i32*
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @VIDEO_FORMAT_NV12, align 4
  store i32 %78, i32* %3, align 4
  br label %425

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 1
  %87 = load i8*, i8** %4, align 8
  %88 = bitcast i8* %87 to i32*
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @VIDEO_FORMAT_NV12, align 4
  store i32 %89, i32* %3, align 4
  br label %425

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91
  %93 = load i32*, i32** %5, align 8
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %92
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, i32* bitcast ([5 x i8]* @.str.10 to i32*), align 1
  %100 = load i8*, i8** %4, align 8
  %101 = bitcast i8* %100 to i32*
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @VIDEO_FORMAT_I420, align 4
  store i32 %102, i32* %3, align 4
  br label %425

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104
  %106 = load i8*, i8** %4, align 8
  %107 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %110, i32* %3, align 4
  br label %425

111:                                              ; preds = %105
  %112 = load i8*, i8** %4, align 8
  %113 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %116, i32* %3, align 4
  br label %425

117:                                              ; preds = %111
  %118 = load i8*, i8** %4, align 8
  %119 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %122, i32* %3, align 4
  br label %425

123:                                              ; preds = %117
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %128, i32* %3, align 4
  br label %425

129:                                              ; preds = %123
  %130 = load i8*, i8** %4, align 8
  %131 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %134, i32* %3, align 4
  br label %425

135:                                              ; preds = %129
  %136 = load i8*, i8** %4, align 8
  %137 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %140, i32* %3, align 4
  br label %425

141:                                              ; preds = %135
  %142 = load i8*, i8** %4, align 8
  %143 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %146, i32* %3, align 4
  br label %425

147:                                              ; preds = %141
  %148 = load i8*, i8** %4, align 8
  %149 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %152, i32* %3, align 4
  br label %425

153:                                              ; preds = %147
  %154 = load i8*, i8** %4, align 8
  %155 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %158, i32* %3, align 4
  br label %425

159:                                              ; preds = %153
  %160 = load i8*, i8** %4, align 8
  %161 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %164, i32* %3, align 4
  br label %425

165:                                              ; preds = %159
  %166 = load i8*, i8** %4, align 8
  %167 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i32, i32* @VIDEO_FORMAT_YUY2, align 4
  store i32 %170, i32* %3, align 4
  br label %425

171:                                              ; preds = %165
  %172 = load i8*, i8** %4, align 8
  %173 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load i32, i32* @VIDEO_FORMAT_YUY2, align 4
  store i32 %176, i32* %3, align 4
  br label %425

177:                                              ; preds = %171
  %178 = load i8*, i8** %4, align 8
  %179 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i32, i32* @VIDEO_FORMAT_YUY2, align 4
  store i32 %182, i32* %3, align 4
  br label %425

183:                                              ; preds = %177
  %184 = load i8*, i8** %4, align 8
  %185 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = load i32, i32* @VIDEO_FORMAT_YUY2, align 4
  store i32 %188, i32* %3, align 4
  br label %425

189:                                              ; preds = %183
  %190 = load i8*, i8** %4, align 8
  %191 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = load i32, i32* @VIDEO_FORMAT_YVYU, align 4
  store i32 %194, i32* %3, align 4
  br label %425

195:                                              ; preds = %189
  br label %196

196:                                              ; preds = %195
  %197 = load i8*, i8** %4, align 8
  %198 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = load i32, i32* bitcast ([5 x i8]* @.str.11 to i32*), align 1
  %202 = load i8*, i8** %4, align 8
  %203 = bitcast i8* %202 to i32*
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %204, i32* %3, align 4
  br label %425

205:                                              ; preds = %196
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206
  %208 = load i8*, i8** %4, align 8
  %209 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = load i32, i32* bitcast ([5 x i8]* @.str.11 to i32*), align 1
  %213 = load i8*, i8** %4, align 8
  %214 = bitcast i8* %213 to i32*
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %215, i32* %3, align 4
  br label %425

216:                                              ; preds = %207
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217
  %219 = load i8*, i8** %4, align 8
  %220 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %218
  %223 = load i32, i32* bitcast ([5 x i8]* @.str.11 to i32*), align 1
  %224 = load i8*, i8** %4, align 8
  %225 = bitcast i8* %224 to i32*
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %226, i32* %3, align 4
  br label %425

227:                                              ; preds = %218
  br label %228

228:                                              ; preds = %227
  br label %229

229:                                              ; preds = %228
  %230 = load i8*, i8** %4, align 8
  %231 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %230, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %229
  %234 = load i32, i32* bitcast ([5 x i8]* @.str.11 to i32*), align 1
  %235 = load i8*, i8** %4, align 8
  %236 = bitcast i8* %235 to i32*
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %237, i32* %3, align 4
  br label %425

238:                                              ; preds = %229
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239
  %241 = load i8*, i8** %4, align 8
  %242 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %241, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %240
  %245 = load i32, i32* bitcast ([5 x i8]* @.str.11 to i32*), align 1
  %246 = load i8*, i8** %4, align 8
  %247 = bitcast i8* %246 to i32*
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %248, i32* %3, align 4
  br label %425

249:                                              ; preds = %240
  br label %250

250:                                              ; preds = %249
  br label %251

251:                                              ; preds = %250
  %252 = load i8*, i8** %4, align 8
  %253 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %251
  %256 = load i32, i32* bitcast ([5 x i8]* @.str.11 to i32*), align 1
  %257 = load i8*, i8** %4, align 8
  %258 = bitcast i8* %257 to i32*
  store i32 %256, i32* %258, align 4
  %259 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %259, i32* %3, align 4
  br label %425

260:                                              ; preds = %251
  br label %261

261:                                              ; preds = %260
  br label %262

262:                                              ; preds = %261
  %263 = load i8*, i8** %4, align 8
  %264 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %263, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %262
  %267 = load i32, i32* bitcast ([5 x i8]* @.str.11 to i32*), align 1
  %268 = load i8*, i8** %4, align 8
  %269 = bitcast i8* %268 to i32*
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %270, i32* %3, align 4
  br label %425

271:                                              ; preds = %262
  br label %272

272:                                              ; preds = %271
  br label %273

273:                                              ; preds = %272
  %274 = load i8*, i8** %4, align 8
  %275 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %274, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %273
  %278 = load i32, i32* bitcast ([5 x i8]* @.str.11 to i32*), align 1
  %279 = load i8*, i8** %4, align 8
  %280 = bitcast i8* %279 to i32*
  store i32 %278, i32* %280, align 4
  %281 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %281, i32* %3, align 4
  br label %425

282:                                              ; preds = %273
  br label %283

283:                                              ; preds = %282
  br label %284

284:                                              ; preds = %283
  %285 = load i8*, i8** %4, align 8
  %286 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %285, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %284
  %289 = load i32, i32* bitcast ([5 x i8]* @.str.11 to i32*), align 1
  %290 = load i8*, i8** %4, align 8
  %291 = bitcast i8* %290 to i32*
  store i32 %289, i32* %291, align 4
  %292 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %292, i32* %3, align 4
  br label %425

293:                                              ; preds = %284
  br label %294

294:                                              ; preds = %293
  br label %295

295:                                              ; preds = %294
  %296 = load i8*, i8** %4, align 8
  %297 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %296, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %295
  %300 = load i32, i32* bitcast ([5 x i8]* @.str.11 to i32*), align 1
  %301 = load i8*, i8** %4, align 8
  %302 = bitcast i8* %301 to i32*
  store i32 %300, i32* %302, align 4
  %303 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %303, i32* %3, align 4
  br label %425

304:                                              ; preds = %295
  br label %305

305:                                              ; preds = %304
  %306 = load i8*, i8** %4, align 8
  %307 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %306, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %305
  %310 = load i32, i32* @VIDEO_FORMAT_I444, align 4
  store i32 %310, i32* %3, align 4
  br label %425

311:                                              ; preds = %305
  br label %312

312:                                              ; preds = %311
  %313 = load i32*, i32** %5, align 8
  store i32 1, i32* %313, align 4
  br label %314

314:                                              ; preds = %312
  %315 = load i8*, i8** %4, align 8
  %316 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %315, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %314
  %319 = load i32, i32* bitcast ([5 x i8]* @.str to i32*), align 1
  %320 = load i8*, i8** %4, align 8
  %321 = bitcast i8* %320 to i32*
  store i32 %319, i32* %321, align 4
  %322 = load i32, i32* @VIDEO_FORMAT_RGBA, align 4
  store i32 %322, i32* %3, align 4
  br label %425

323:                                              ; preds = %314
  br label %324

324:                                              ; preds = %323
  br label %325

325:                                              ; preds = %324
  br label %326

326:                                              ; preds = %325
  %327 = load i8*, i8** %4, align 8
  %328 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %327, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0))
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %326
  %331 = load i32, i32* bitcast ([5 x i8]* @.str to i32*), align 1
  %332 = load i8*, i8** %4, align 8
  %333 = bitcast i8* %332 to i32*
  store i32 %331, i32* %333, align 4
  %334 = load i32, i32* @VIDEO_FORMAT_RGBA, align 4
  store i32 %334, i32* %3, align 4
  br label %425

335:                                              ; preds = %326
  br label %336

336:                                              ; preds = %335
  br label %337

337:                                              ; preds = %336
  %338 = load i8*, i8** %4, align 8
  %339 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %338, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0))
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %337
  %342 = load i32, i32* bitcast ([5 x i8]* @.str.34 to i32*), align 1
  %343 = load i8*, i8** %4, align 8
  %344 = bitcast i8* %343 to i32*
  store i32 %342, i32* %344, align 4
  %345 = load i32, i32* @VIDEO_FORMAT_I444, align 4
  store i32 %345, i32* %3, align 4
  br label %425

346:                                              ; preds = %337
  br label %347

347:                                              ; preds = %346
  br label %348

348:                                              ; preds = %347
  %349 = load i8*, i8** %4, align 8
  %350 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %349, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %348
  %353 = load i32, i32* bitcast ([5 x i8]* @.str.34 to i32*), align 1
  %354 = load i8*, i8** %4, align 8
  %355 = bitcast i8* %354 to i32*
  store i32 %353, i32* %355, align 4
  %356 = load i32, i32* @VIDEO_FORMAT_I444, align 4
  store i32 %356, i32* %3, align 4
  br label %425

357:                                              ; preds = %348
  br label %358

358:                                              ; preds = %357
  br label %359

359:                                              ; preds = %358
  %360 = load i8*, i8** %4, align 8
  %361 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %360, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0))
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %359
  %364 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 1
  %365 = load i8*, i8** %4, align 8
  %366 = bitcast i8* %365 to i32*
  store i32 %364, i32* %366, align 4
  %367 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %367, i32* %3, align 4
  br label %425

368:                                              ; preds = %359
  br label %369

369:                                              ; preds = %368
  br label %370

370:                                              ; preds = %369
  %371 = load i8*, i8** %4, align 8
  %372 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %371, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %370
  %375 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 1
  %376 = load i8*, i8** %4, align 8
  %377 = bitcast i8* %376 to i32*
  store i32 %375, i32* %377, align 4
  %378 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %378, i32* %3, align 4
  br label %425

379:                                              ; preds = %370
  br label %380

380:                                              ; preds = %379
  br label %381

381:                                              ; preds = %380
  %382 = load i8*, i8** %4, align 8
  %383 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %382, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0))
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %381
  %386 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 1
  %387 = load i8*, i8** %4, align 8
  %388 = bitcast i8* %387 to i32*
  store i32 %386, i32* %388, align 4
  %389 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %389, i32* %3, align 4
  br label %425

390:                                              ; preds = %381
  br label %391

391:                                              ; preds = %390
  br label %392

392:                                              ; preds = %391
  %393 = load i8*, i8** %4, align 8
  %394 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %393, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0))
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %401

396:                                              ; preds = %392
  %397 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 1
  %398 = load i8*, i8** %4, align 8
  %399 = bitcast i8* %398 to i32*
  store i32 %397, i32* %399, align 4
  %400 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %400, i32* %3, align 4
  br label %425

401:                                              ; preds = %392
  br label %402

402:                                              ; preds = %401
  %403 = load i8*, i8** %4, align 8
  %404 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %403, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0))
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %408

406:                                              ; preds = %402
  %407 = load i32, i32* @VIDEO_FORMAT_Y800, align 4
  store i32 %407, i32* %3, align 4
  br label %425

408:                                              ; preds = %402
  %409 = load i8*, i8** %4, align 8
  %410 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %409, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %408
  %413 = load i32, i32* @VIDEO_FORMAT_Y800, align 4
  store i32 %413, i32* %3, align 4
  br label %425

414:                                              ; preds = %408
  %415 = load i8*, i8** %4, align 8
  %416 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @chroma_is to i32 (i8*, i8*, ...)*)(i8* %415, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0))
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %420

418:                                              ; preds = %414
  %419 = load i32, i32* @VIDEO_FORMAT_Y800, align 4
  store i32 %419, i32* %3, align 4
  br label %425

420:                                              ; preds = %414
  %421 = load i32, i32* bitcast ([5 x i8]* @.str.1 to i32*), align 1
  %422 = load i8*, i8** %4, align 8
  %423 = bitcast i8* %422 to i32*
  store i32 %421, i32* %423, align 4
  %424 = load i32, i32* @VIDEO_FORMAT_BGRA, align 4
  store i32 %424, i32* %3, align 4
  br label %425

425:                                              ; preds = %420, %418, %412, %406, %396, %385, %374, %363, %352, %341, %330, %318, %309, %299, %288, %277, %266, %255, %244, %233, %222, %211, %200, %193, %187, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %115, %109, %98, %85, %74, %63, %52, %41, %34, %28, %22, %16, %10
  %426 = load i32, i32* %3, align 4
  ret i32 %426
}

declare dso_local i32 @chroma_is(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
