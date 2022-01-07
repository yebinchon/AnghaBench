; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__bmp_parse_header.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__bmp_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [8 x i8] c"not BMP\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Corrupt BMP\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"unknown BMP\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"BMP type not supported: unknown\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"bad BMP\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"monochrome\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"BMP type not supported: 1-bit\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"BMP RLE\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"BMP type not supported: RLE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, %struct.TYPE_9__*)* @stbi__bmp_parse_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stbi__bmp_parse_header(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = call signext i8 @stbi__get8(%struct.TYPE_8__* %9)
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 66
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = call signext i8 @stbi__get8(%struct.TYPE_8__* %14)
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 77
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %2
  %19 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %19, i8** %3, align 8
  br label %274

20:                                               ; preds = %13
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = call i8* @stbi__get32le(%struct.TYPE_8__* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = call i32 @stbi__get16le(%struct.TYPE_8__* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = call i32 @stbi__get16le(%struct.TYPE_8__* %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = call i8* @stbi__get32le(%struct.TYPE_8__* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i8* @stbi__get32le(%struct.TYPE_8__* %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 12
  br i1 %37, label %38, label %52

38:                                               ; preds = %20
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 40
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 56
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 108
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 124
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i8* %51, i8** %3, align 8
  br label %274

52:                                               ; preds = %47, %44, %41, %38, %20
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 12
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = call i32 @stbi__get16le(%struct.TYPE_8__* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = call i32 @stbi__get16le(%struct.TYPE_8__* %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %75

64:                                               ; preds = %52
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = call i8* @stbi__get32le(%struct.TYPE_8__* %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = call i8* @stbi__get32le(%struct.TYPE_8__* %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %64, %55
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = call i32 @stbi__get16le(%struct.TYPE_8__* %76)
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %80, i8** %3, align 8
  br label %274

81:                                               ; preds = %75
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = call i32 @stbi__get16le(%struct.TYPE_8__* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  store i8* %91, i8** %3, align 8
  br label %274

92:                                               ; preds = %81
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 12
  br i1 %94, label %95, label %273

95:                                               ; preds = %92
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = call i8* @stbi__get32le(%struct.TYPE_8__* %96)
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %106

104:                                              ; preds = %101, %95
  %105 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  store i8* %105, i8** %3, align 8
  br label %274

106:                                              ; preds = %101
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = call i8* @stbi__get32le(%struct.TYPE_8__* %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = call i8* @stbi__get32le(%struct.TYPE_8__* %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = call i8* @stbi__get32le(%struct.TYPE_8__* %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %114 = call i8* @stbi__get32le(%struct.TYPE_8__* %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = call i8* @stbi__get32le(%struct.TYPE_8__* %115)
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 40
  br i1 %118, label %122, label %119

119:                                              ; preds = %106
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %120, 56
  br i1 %121, label %122, label %219

122:                                              ; preds = %119, %106
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %123, 56
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %127 = call i8* @stbi__get32le(%struct.TYPE_8__* %126)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = call i8* @stbi__get32le(%struct.TYPE_8__* %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = call i8* @stbi__get32le(%struct.TYPE_8__* %130)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = call i8* @stbi__get32le(%struct.TYPE_8__* %132)
  br label %134

134:                                              ; preds = %125, %122
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 16
  br i1 %138, label %144, label %139

139:                                              ; preds = %134
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 32
  br i1 %143, label %144, label %218

144:                                              ; preds = %139, %134
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  store i32 0, i32* %146, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 3
  store i32 0, i32* %148, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  store i32 0, i32* %150, align 8
  %151 = load i32, i32* %7, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %177

153:                                              ; preds = %144
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 32
  br i1 %157, label %158, label %169

158:                                              ; preds = %153
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 2
  store i32 16711680, i32* %160, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 3
  store i32 65280, i32* %162, align 4
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 4
  store i32 255, i32* %164, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 5
  store i32 -16777216, i32* %166, align 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 6
  store i64 0, i64* %168, align 8
  br label %176

169:                                              ; preds = %153
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  store i32 31744, i32* %171, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 3
  store i32 992, i32* %173, align 4
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 4
  store i32 31, i32* %175, align 8
  br label %176

176:                                              ; preds = %169, %158
  br label %217

177:                                              ; preds = %144
  %178 = load i32, i32* %7, align 4
  %179 = icmp eq i32 %178, 3
  br i1 %179, label %180, label %214

180:                                              ; preds = %177
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %182 = call i8* @stbi__get32le(%struct.TYPE_8__* %181)
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %187 = call i8* @stbi__get32le(%struct.TYPE_8__* %186)
  %188 = ptrtoint i8* %187 to i32
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %192 = call i8* @stbi__get32le(%struct.TYPE_8__* %191)
  %193 = ptrtoint i8* %192 to i32
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 4
  store i32 %193, i32* %195, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %198, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %180
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %206, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %203
  %212 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %212, i8** %3, align 8
  br label %274

213:                                              ; preds = %203, %180
  br label %216

214:                                              ; preds = %177
  %215 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %215, i8** %3, align 8
  br label %274

216:                                              ; preds = %213
  br label %217

217:                                              ; preds = %216, %176
  br label %218

218:                                              ; preds = %217, %139
  br label %272

219:                                              ; preds = %119
  %220 = load i32, i32* %6, align 4
  %221 = icmp ne i32 %220, 108
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load i32, i32* %6, align 4
  %224 = icmp ne i32 %223, 124
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %226, i8** %3, align 8
  br label %274

227:                                              ; preds = %222, %219
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %229 = call i8* @stbi__get32le(%struct.TYPE_8__* %228)
  %230 = ptrtoint i8* %229 to i32
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %234 = call i8* @stbi__get32le(%struct.TYPE_8__* %233)
  %235 = ptrtoint i8* %234 to i32
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 4
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %239 = call i8* @stbi__get32le(%struct.TYPE_8__* %238)
  %240 = ptrtoint i8* %239 to i32
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 4
  store i32 %240, i32* %242, align 8
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %244 = call i8* @stbi__get32le(%struct.TYPE_8__* %243)
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 5
  store i32 %245, i32* %247, align 4
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %249 = call i8* @stbi__get32le(%struct.TYPE_8__* %248)
  store i32 0, i32* %8, align 4
  br label %250

250:                                              ; preds = %256, %227
  %251 = load i32, i32* %8, align 4
  %252 = icmp slt i32 %251, 12
  br i1 %252, label %253, label %259

253:                                              ; preds = %250
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %255 = call i8* @stbi__get32le(%struct.TYPE_8__* %254)
  br label %256

256:                                              ; preds = %253
  %257 = load i32, i32* %8, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %8, align 4
  br label %250

259:                                              ; preds = %250
  %260 = load i32, i32* %6, align 4
  %261 = icmp eq i32 %260, 124
  br i1 %261, label %262, label %271

262:                                              ; preds = %259
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %264 = call i8* @stbi__get32le(%struct.TYPE_8__* %263)
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %266 = call i8* @stbi__get32le(%struct.TYPE_8__* %265)
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %268 = call i8* @stbi__get32le(%struct.TYPE_8__* %267)
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %270 = call i8* @stbi__get32le(%struct.TYPE_8__* %269)
  br label %271

271:                                              ; preds = %262, %259
  br label %272

272:                                              ; preds = %271, %218
  br label %273

273:                                              ; preds = %272, %92
  store i8* inttoptr (i64 1 to i8*), i8** %3, align 8
  br label %274

274:                                              ; preds = %273, %225, %214, %211, %104, %90, %79, %50, %18
  %275 = load i8*, i8** %3, align 8
  ret i8* %275
}

declare dso_local signext i8 @stbi__get8(%struct.TYPE_8__*) #1

declare dso_local i8* @stbi__errpuc(i8*, i8*) #1

declare dso_local i8* @stbi__get32le(%struct.TYPE_8__*) #1

declare dso_local i32 @stbi__get16le(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
