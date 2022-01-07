; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_BrowsePage.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_BrowsePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32**, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i8* }
%struct.RtfData = type { i32, i32, i32, i32, i64, i64, i32, i32*, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported charset %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"{\\rtf1\\%s\\deff0\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"{\\rtf1\\ansi\\ansicpg%d\\deff0\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"{\\fonttbl\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"modern\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"roman\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"swiss\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"decor\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"{\\f%d\\f%s\\fprq%d\\fcharset%d %s;}\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"{\\colortbl ;\\red0\\green128\\blue0;\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"\\red%d\\green%d\\blue%d;\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"maplen\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"extra\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"buf[0x14] = %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HLPFILE_BrowsePage(%struct.TYPE_9__* %0, %struct.RtfData* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.RtfData*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [1024 x i8], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.RtfData* %1, %struct.RtfData** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %10, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i8* null, i8** %22, align 8
  %30 = load i32, i32* @TRUE, align 4
  %31 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %32 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 8
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %35 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %34, i32 0, i32 0
  store i32 32768, i32* %35, align 8
  %36 = call i32 @HeapAlloc(i32 %33, i32 0, i32 32768)
  %37 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %38 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %40 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %39, i32 0, i32 9
  store i32 %36, i32* %40, align 4
  %41 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %42 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %44 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %43, i32 0, i32 7
  store i32* null, i32** %44, align 8
  %45 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %46 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %45, i32 0, i32 3
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %49 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %52 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %55 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %57 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %77 [
    i32 149, label %61
    i32 153, label %61
    i32 131, label %62
    i32 140, label %63
    i32 142, label %64
    i32 150, label %65
    i32 141, label %66
    i32 129, label %67
    i32 139, label %68
    i32 152, label %69
    i32 151, label %70
    i32 128, label %71
    i32 132, label %72
    i32 148, label %73
    i32 130, label %74
    i32 134, label %75
    i32 133, label %76
  ]

61:                                               ; preds = %4, %4
  store i32 1252, i32* %19, align 4
  br label %82

62:                                               ; preds = %4
  store i32 932, i32* %19, align 4
  br label %82

63:                                               ; preds = %4
  store i32 949, i32* %19, align 4
  br label %82

64:                                               ; preds = %4
  store i32 936, i32* %19, align 4
  br label %82

65:                                               ; preds = %4
  store i32 950, i32* %19, align 4
  br label %82

66:                                               ; preds = %4
  store i32 1253, i32* %19, align 4
  br label %82

67:                                               ; preds = %4
  store i32 1254, i32* %19, align 4
  br label %82

68:                                               ; preds = %4
  store i32 1255, i32* %19, align 4
  br label %82

69:                                               ; preds = %4
  store i32 1256, i32* %19, align 4
  br label %82

70:                                               ; preds = %4
  store i32 1257, i32* %19, align 4
  br label %82

71:                                               ; preds = %4
  store i32 1258, i32* %19, align 4
  br label %82

72:                                               ; preds = %4
  store i32 1251, i32* %19, align 4
  br label %82

73:                                               ; preds = %4
  store i32 1250, i32* %19, align 4
  br label %82

74:                                               ; preds = %4
  store i32 874, i32* %19, align 4
  br label %82

75:                                               ; preds = %4
  store i32 1361, i32* %19, align 4
  br label %82

76:                                               ; preds = %4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  br label %82

77:                                               ; preds = %4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @WINE_FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  store i32 1252, i32* %19, align 4
  br label %82

82:                                               ; preds = %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61
  %83 = load i8*, i8** %22, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %87 = load i8*, i8** %22, align 8
  %88 = call i32 (i8*, i8*, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  %89 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %91 = call i32 @HLPFILE_RtfAddControl(%struct.RtfData* %89, i8* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %5, align 4
  br label %402

95:                                               ; preds = %85
  br label %107

96:                                               ; preds = %82
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %98 = load i32, i32* %19, align 4
  %99 = call i32 (i8*, i8*, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %102 = call i32 @HLPFILE_RtfAddControl(%struct.RtfData* %100, i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %96
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %5, align 4
  br label %402

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %95
  %108 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %109 = call i32 @HLPFILE_RtfAddControl(%struct.RtfData* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %5, align 4
  br label %402

113:                                              ; preds = %107
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %177, %113
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ult i32 %115, %118
  br i1 %119, label %120, label %180

120:                                              ; preds = %114
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 7
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, 240
  switch i32 %130, label %136 [
    i32 146, label %131
    i32 145, label %132
    i32 143, label %133
    i32 144, label %134
    i32 147, label %135
  ]

131:                                              ; preds = %120
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %23, align 8
  br label %137

132:                                              ; preds = %120
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %23, align 8
  br label %137

133:                                              ; preds = %120
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %23, align 8
  br label %137

134:                                              ; preds = %120
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %23, align 8
  br label %137

135:                                              ; preds = %120
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %23, align 8
  br label %137

136:                                              ; preds = %120
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %23, align 8
  br label %137

137:                                              ; preds = %136, %135, %134, %133, %132, %131
  %138 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %139 = load i32, i32* %14, align 4
  %140 = load i8*, i8** %23, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 7
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = load i32, i32* %14, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, 15
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 7
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 7
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = load i32, i32* %14, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 (i8*, i8*, ...) @sprintf(i8* %138, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %139, i8* %140, i32 %150, i32 %159, i8* %168)
  %170 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %171 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %172 = call i32 @HLPFILE_RtfAddControl(%struct.RtfData* %170, i8* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %137
  %175 = load i32, i32* @FALSE, align 4
  store i32 %175, i32* %5, align 4
  br label %402

176:                                              ; preds = %137
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %14, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %14, align 4
  br label %114

180:                                              ; preds = %114
  %181 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %182 = call i32 @HLPFILE_RtfAddControl(%struct.RtfData* %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* @FALSE, align 4
  store i32 %185, i32* %5, align 4
  br label %402

186:                                              ; preds = %180
  %187 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %188 = call i32 @HLPFILE_RtfAddControl(%struct.RtfData* %187, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* @FALSE, align 4
  store i32 %191, i32* %5, align 4
  br label %402

192:                                              ; preds = %186
  store i32 0, i32* %14, align 4
  br label %193

193:                                              ; preds = %236, %192
  %194 = load i32, i32* %14, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp ult i32 %194, %197
  br i1 %198, label %199, label %239

199:                                              ; preds = %193
  %200 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 7
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = load i32, i32* %14, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @GetRValue(i32 %208)
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 7
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @GetGValue(i32 %217)
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 7
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = load i32, i32* %14, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @GetBValue(i32 %226)
  %228 = call i32 (i8*, i8*, ...) @sprintf(i8* %200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %209, i32 %218, i32 %227)
  %229 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %230 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %231 = call i32 @HLPFILE_RtfAddControl(%struct.RtfData* %229, i8* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %199
  %234 = load i32, i32* @FALSE, align 4
  store i32 %234, i32* %5, align 4
  br label %402

235:                                              ; preds = %199
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %14, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %14, align 4
  br label %193

239:                                              ; preds = %193
  %240 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %241 = call i32 @HLPFILE_RtfAddControl(%struct.RtfData* %240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %239
  %244 = load i32, i32* @FALSE, align 4
  store i32 %244, i32* %5, align 4
  br label %402

245:                                              ; preds = %239
  br label %246

246:                                              ; preds = %390, %245
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = icmp sle i32 %249, 16
  br i1 %250, label %251, label %264

251:                                              ; preds = %246
  %252 = load i32, i32* %13, align 4
  %253 = sub nsw i32 %252, 12
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = sdiv i32 %253, %256
  store i32 %257, i32* %14, align 4
  %258 = load i32, i32* %13, align 4
  %259 = sub nsw i32 %258, 12
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = srem i32 %259, %262
  store i32 %263, i32* %16, align 4
  br label %271

264:                                              ; preds = %246
  %265 = load i32, i32* %13, align 4
  %266 = sub nsw i32 %265, 12
  %267 = ashr i32 %266, 14
  store i32 %267, i32* %14, align 4
  %268 = load i32, i32* %13, align 4
  %269 = sub nsw i32 %268, 12
  %270 = and i32 %269, 16383
  store i32 %270, i32* %16, align 4
  br label %271

271:                                              ; preds = %264, %251
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = icmp sle i32 %274, 16
  br i1 %275, label %276, label %288

276:                                              ; preds = %271
  %277 = load i32, i32* %14, align 4
  %278 = load i32, i32* %15, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %288

280:                                              ; preds = %276
  %281 = load i32, i32* %15, align 4
  %282 = icmp ne i32 %281, -1
  br i1 %282, label %283, label %288

283:                                              ; preds = %280
  %284 = load i32, i32* %13, align 4
  %285 = sub nsw i32 %284, 12
  store i32 %285, i32* %13, align 4
  %286 = load i32, i32* %16, align 4
  %287 = sub i32 %286, 12
  store i32 %287, i32* %16, align 4
  br label %288

288:                                              ; preds = %283, %280, %276, %271
  %289 = load i32, i32* %14, align 4
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  %293 = icmp uge i32 %289, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %288
  %295 = call i32 @WINE_WARN(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %393

296:                                              ; preds = %288
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 5
  %299 = load i32**, i32*** %298, align 8
  %300 = load i32, i32* %14, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i32*, i32** %299, i64 %301
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %16, align 4
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  store i32* %306, i32** %11, align 8
  %307 = load i32*, i32** %11, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 21
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 6
  %311 = load i32*, i32** %310, align 8
  %312 = icmp uge i32* %308, %311
  br i1 %312, label %313, label %315

313:                                              ; preds = %296
  %314 = call i32 @WINE_WARN(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %393

315:                                              ; preds = %296
  %316 = load i32*, i32** %11, align 8
  %317 = load i32*, i32** %11, align 8
  %318 = call i32 @GET_UINT(i32* %317, i32 0)
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %316, i64 %319
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 6
  %323 = load i32*, i32** %322, align 8
  %324 = call i32* @min(i32* %320, i32* %323)
  store i32* %324, i32** %12, align 8
  %325 = load i32, i32* %14, align 4
  %326 = load i32, i32* %15, align 4
  %327 = icmp ne i32 %325, %326
  br i1 %327, label %328, label %330

328:                                              ; preds = %315
  store i32 0, i32* %18, align 4
  %329 = load i32, i32* %14, align 4
  store i32 %329, i32* %15, align 4
  br label %330

330:                                              ; preds = %328, %315
  %331 = load i32*, i32** %11, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 20
  %333 = load i32, i32* %332, align 4
  switch i32 %333, label %366 [
    i32 135, label %334
    i32 137, label %340
    i32 138, label %340
    i32 136, label %340
  ]

334:                                              ; preds = %330
  %335 = load i32, i32* %17, align 4
  %336 = add i32 %335, 1
  store i32 %336, i32* %17, align 4
  %337 = icmp ne i32 %335, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %334
  br label %394

339:                                              ; preds = %334
  br label %371

340:                                              ; preds = %330, %330, %330
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %342 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %343 = load i32*, i32** %11, align 8
  %344 = load i32*, i32** %12, align 8
  %345 = call i32 @HLPFILE_BrowseParagraph(%struct.TYPE_9__* %341, %struct.RtfData* %342, i32* %343, i32* %344, i32* %20)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %349, label %347

347:                                              ; preds = %340
  %348 = load i32, i32* @FALSE, align 4
  store i32 %348, i32* %5, align 4
  br label %402

349:                                              ; preds = %340
  %350 = load i32, i32* %9, align 4
  %351 = load i32, i32* %14, align 4
  %352 = mul i32 %351, 32768
  %353 = load i32, i32* %18, align 4
  %354 = add i32 %352, %353
  %355 = icmp ugt i32 %350, %354
  br i1 %355, label %356, label %362

356:                                              ; preds = %349
  %357 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %358 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %357, i32 0, i32 4
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %361 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %360, i32 0, i32 5
  store i64 %359, i64* %361, align 8
  br label %362

362:                                              ; preds = %356, %349
  %363 = load i32, i32* %20, align 4
  %364 = load i32, i32* %18, align 4
  %365 = add i32 %364, %363
  store i32 %365, i32* %18, align 4
  br label %371

366:                                              ; preds = %330
  %367 = load i32*, i32** %11, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 20
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @WINE_ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %369)
  br label %371

371:                                              ; preds = %366, %362, %339
  %372 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = icmp sle i32 %374, 16
  br i1 %375, label %376, label %386

376:                                              ; preds = %371
  %377 = load i32*, i32** %11, align 8
  %378 = call i32 @GET_UINT(i32* %377, i32 12)
  %379 = load i32, i32* %13, align 4
  %380 = add nsw i32 %379, %378
  store i32 %380, i32* %13, align 4
  %381 = load i32*, i32** %11, align 8
  %382 = call i32 @GET_UINT(i32* %381, i32 12)
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %376
  br label %393

385:                                              ; preds = %376
  br label %389

386:                                              ; preds = %371
  %387 = load i32*, i32** %11, align 8
  %388 = call i32 @GET_UINT(i32* %387, i32 12)
  store i32 %388, i32* %13, align 4
  br label %389

389:                                              ; preds = %386, %385
  br label %390

390:                                              ; preds = %389
  %391 = load i32, i32* %13, align 4
  %392 = icmp ne i32 %391, -1
  br i1 %392, label %246, label %393

393:                                              ; preds = %390, %384, %313, %294
  br label %394

394:                                              ; preds = %393, %338
  %395 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %396 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 1
  store i32 %397, i32* %399, align 4
  %400 = load %struct.RtfData*, %struct.RtfData** %7, align 8
  %401 = call i32 @HLPFILE_RtfAddControl(%struct.RtfData* %400, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32 %401, i32* %5, align 4
  br label %402

402:                                              ; preds = %394, %347, %243, %233, %190, %184, %174, %111, %104, %93
  %403 = load i32, i32* %5, align 4
  ret i32 %403
}

declare dso_local i32 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @WINE_FIXME(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @HLPFILE_RtfAddControl(%struct.RtfData*, i8*) #1

declare dso_local i32 @GetRValue(i32) #1

declare dso_local i32 @GetGValue(i32) #1

declare dso_local i32 @GetBValue(i32) #1

declare dso_local i32 @WINE_WARN(i8*) #1

declare dso_local i32* @min(i32*, i32*) #1

declare dso_local i32 @GET_UINT(i32*, i32) #1

declare dso_local i32 @HLPFILE_BrowseParagraph(%struct.TYPE_9__*, %struct.RtfData*, i32*, i32*, i32*) #1

declare dso_local i32 @WINE_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
