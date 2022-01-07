; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_parseurl.c_RTMP_ParseURL.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_parseurl.c_RTMP_ParseURL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@RTMP_LOGDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Parsing...\00", align 1
@RTMP_PROTOCOL_RTMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@RTMP_LOGERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"RTMP URL: No :// in url!\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"rtmp\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"rtmpt\00", align 1
@RTMP_PROTOCOL_RTMPT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"rtmps\00", align 1
@RTMP_PROTOCOL_RTMPS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"rtmpe\00", align 1
@RTMP_PROTOCOL_RTMPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"rtmfp\00", align 1
@RTMP_PROTOCOL_RTMFP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"rtmpte\00", align 1
@RTMP_PROTOCOL_RTMPTE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"rtmpts\00", align 1
@RTMP_PROTOCOL_RTMPTS = common dso_local global i32 0, align 4
@RTMP_LOGWARNING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"Unknown protocol!\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Parsed protocol: %d\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"No hostname in URL!\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Parsed host    : %.*s\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Hostname exceeds 255 characters!\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Invalid port number!\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"No application or playpath in URL!\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [22 x i8] c"Parsed app     : %.*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RTMP_ParseURL(i8* %0, i32* %1, %struct.TYPE_4__* %2, i32* %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  %20 = load i32, i32* @RTMP_LOGDEBUG, align 4
  %21 = call i32 (i32, i8*, ...) @RTMP_Log(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @RTMP_PROTOCOL_RTMP, align 4
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %10, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i8* null, i8** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @strstr(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* @RTMP_LOGERROR, align 4
  %35 = call i32 (i32, i8*, ...) @RTMP_Log(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %6, align 4
  br label %297

37:                                               ; preds = %5
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @strncasecmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @RTMP_PROTOCOL_RTMP, align 4
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %122

53:                                               ; preds = %46, %37
  %54 = load i32, i32* %17, align 4
  %55 = icmp eq i32 %54, 5
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @strncasecmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @RTMP_PROTOCOL_RTMPT, align 4
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  br label %121

63:                                               ; preds = %56, %53
  %64 = load i32, i32* %17, align 4
  %65 = icmp eq i32 %64, 5
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i8*, i8** %7, align 8
  %68 = call i64 @strncasecmp(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @RTMP_PROTOCOL_RTMPS, align 4
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  br label %120

73:                                               ; preds = %66, %63
  %74 = load i32, i32* %17, align 4
  %75 = icmp eq i32 %74, 5
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i8*, i8** %7, align 8
  %78 = call i64 @strncasecmp(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @RTMP_PROTOCOL_RTMPE, align 4
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  br label %119

83:                                               ; preds = %76, %73
  %84 = load i32, i32* %17, align 4
  %85 = icmp eq i32 %84, 5
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i8*, i8** %7, align 8
  %88 = call i64 @strncasecmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @RTMP_PROTOCOL_RTMFP, align 4
  %92 = load i32*, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  br label %118

93:                                               ; preds = %86, %83
  %94 = load i32, i32* %17, align 4
  %95 = icmp eq i32 %94, 6
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i8*, i8** %7, align 8
  %98 = call i64 @strncasecmp(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* @RTMP_PROTOCOL_RTMPTE, align 4
  %102 = load i32*, i32** %8, align 8
  store i32 %101, i32* %102, align 4
  br label %117

103:                                              ; preds = %96, %93
  %104 = load i32, i32* %17, align 4
  %105 = icmp eq i32 %104, 6
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i8*, i8** %7, align 8
  %108 = call i64 @strncasecmp(i8* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 6)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @RTMP_PROTOCOL_RTMPTS, align 4
  %112 = load i32*, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  br label %116

113:                                              ; preds = %106, %103
  %114 = load i32, i32* @RTMP_LOGWARNING, align 4
  %115 = call i32 (i32, i8*, ...) @RTMP_Log(i32 %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %127

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %100
  br label %118

118:                                              ; preds = %117, %90
  br label %119

119:                                              ; preds = %118, %80
  br label %120

120:                                              ; preds = %119, %70
  br label %121

121:                                              ; preds = %120, %60
  br label %122

122:                                              ; preds = %121, %50
  %123 = load i32, i32* @RTMP_LOGDEBUG, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, ...) @RTMP_Log(i32 %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %122, %113
  %128 = load i8*, i8** %12, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 3
  store i8* %129, i8** %12, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i32, i32* @RTMP_LOGWARNING, align 4
  %136 = call i32 (i32, i8*, ...) @RTMP_Log(i32 %135, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %6, align 4
  br label %297

138:                                              ; preds = %127
  %139 = load i8*, i8** %12, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = call i32 @strlen(i8* %140)
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  store i8* %143, i8** %13, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = call i8* @strchr(i8* %144, i8 signext 93)
  store i8* %145, i8** %16, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = call i8* @strchr(i8* %146, i8 signext 47)
  store i8* %147, i8** %15, align 8
  %148 = load i8*, i8** %16, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %138
  %151 = load i8*, i8** %16, align 8
  %152 = load i8*, i8** %15, align 8
  %153 = icmp ult i8* %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i8*, i8** %16, align 8
  br label %158

156:                                              ; preds = %150, %138
  %157 = load i8*, i8** %12, align 8
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i8* [ %155, %154 ], [ %157, %156 ]
  %160 = call i8* @strchr(i8* %159, i8 signext 58)
  store i8* %160, i8** %14, align 8
  %161 = load i8*, i8** %15, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load i8*, i8** %15, align 8
  %165 = load i8*, i8** %12, align 8
  %166 = ptrtoint i8* %164 to i64
  %167 = ptrtoint i8* %165 to i64
  %168 = sub i64 %166, %167
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %18, align 4
  br label %177

170:                                              ; preds = %158
  %171 = load i8*, i8** %13, align 8
  %172 = load i8*, i8** %12, align 8
  %173 = ptrtoint i8* %171 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %18, align 4
  br label %177

177:                                              ; preds = %170, %163
  %178 = load i8*, i8** %14, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %196

180:                                              ; preds = %177
  %181 = load i8*, i8** %14, align 8
  %182 = load i8*, i8** %12, align 8
  %183 = ptrtoint i8* %181 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = icmp slt i64 %185, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %180
  %190 = load i8*, i8** %14, align 8
  %191 = load i8*, i8** %12, align 8
  %192 = ptrtoint i8* %190 to i64
  %193 = ptrtoint i8* %191 to i64
  %194 = sub i64 %192, %193
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %18, align 4
  br label %196

196:                                              ; preds = %189, %180, %177
  %197 = load i32, i32* %18, align 4
  %198 = icmp slt i32 %197, 256
  br i1 %198, label %199, label %212

199:                                              ; preds = %196
  %200 = load i8*, i8** %12, align 8
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  %203 = load i32, i32* %18, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load i32, i32* @RTMP_LOGDEBUG, align 4
  %207 = load i32, i32* %18, align 4
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 (i32, i8*, ...) @RTMP_Log(i32 %206, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %207, i8* %210)
  br label %215

212:                                              ; preds = %196
  %213 = load i32, i32* @RTMP_LOGWARNING, align 4
  %214 = call i32 (i32, i8*, ...) @RTMP_Log(i32 %213, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %199
  %216 = load i32, i32* %18, align 4
  %217 = load i8*, i8** %12, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8* %219, i8** %12, align 8
  %220 = load i8*, i8** %12, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 58
  br i1 %223, label %224, label %238

224:                                              ; preds = %215
  %225 = load i8*, i8** %12, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %12, align 8
  %227 = load i8*, i8** %12, align 8
  %228 = call i32 @atoi(i8* %227)
  store i32 %228, i32* %19, align 4
  %229 = load i32, i32* %19, align 4
  %230 = icmp ugt i32 %229, 65535
  br i1 %230, label %231, label %234

231:                                              ; preds = %224
  %232 = load i32, i32* @RTMP_LOGWARNING, align 4
  %233 = call i32 (i32, i8*, ...) @RTMP_Log(i32 %232, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  br label %237

234:                                              ; preds = %224
  %235 = load i32, i32* %19, align 4
  %236 = load i32*, i32** %10, align 8
  store i32 %235, i32* %236, align 4
  br label %237

237:                                              ; preds = %234, %231
  br label %238

238:                                              ; preds = %237, %215
  %239 = load i8*, i8** %15, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %245, label %241

241:                                              ; preds = %238
  %242 = load i32, i32* @RTMP_LOGWARNING, align 4
  %243 = call i32 (i32, i8*, ...) @RTMP_Log(i32 %242, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  %244 = load i32, i32* @TRUE, align 4
  store i32 %244, i32* %6, align 4
  br label %297

245:                                              ; preds = %238
  %246 = load i8*, i8** %15, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 1
  store i8* %247, i8** %12, align 8
  %248 = load i8*, i8** %12, align 8
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 1
  store i8* %248, i8** %250, align 8
  %251 = load i8*, i8** %12, align 8
  %252 = call i32 @strlen(i8* %251)
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %275

259:                                              ; preds = %245
  %260 = load i8*, i8** %12, align 8
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = sub nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %260, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, 47
  br i1 %269, label %270, label %275

270:                                              ; preds = %259
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %272, align 8
  br label %275

275:                                              ; preds = %270, %259, %245
  %276 = load i32, i32* @RTMP_LOGDEBUG, align 4
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i8*, i8** %12, align 8
  %281 = call i32 (i32, i8*, ...) @RTMP_Log(i32 %276, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %279, i8* %280)
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i8*, i8** %12, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i8, i8* %285, i64 %286
  store i8* %287, i8** %12, align 8
  %288 = load i8*, i8** %12, align 8
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp eq i32 %290, 47
  br i1 %291, label %292, label %295

292:                                              ; preds = %275
  %293 = load i8*, i8** %12, align 8
  %294 = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %294, i8** %12, align 8
  br label %295

295:                                              ; preds = %292, %275
  %296 = load i32, i32* @TRUE, align 4
  store i32 %296, i32* %6, align 4
  br label %297

297:                                              ; preds = %295, %241, %134, %33
  %298 = load i32, i32* %6, align 4
  ret i32 %298
}

declare dso_local i32 @RTMP_Log(i32, i8*, ...) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
