; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_runword.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_runword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i64, i32*, %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64 (%struct.TYPE_16__*, i8*)* }
%struct.TYPE_13__ = type { i32, i8*, i64, i64 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*)* }

@.str = private unnamed_addr constant [29 x i8] c"ESIL infinite loop detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"?{\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"}{\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%s returned 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ESIL stack is full\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*)* @runword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runword(%struct.TYPE_16__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %265

12:                                               ; preds = %2
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 2
  store i32 1, i32* %26, align 8
  store i32 0, i32* %3, align 4
  br label %265

27:                                               ; preds = %12
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %67, label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %67

36:                                               ; preds = %31
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 1
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %36
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @memset(i8* %64, i32 0, i32 8)
  br label %66

66:                                               ; preds = %55, %36
  br label %67

67:                                               ; preds = %66, %31, %27
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = icmp ne %struct.TYPE_13__* %70, null
  br i1 %71, label %72, label %140

72:                                               ; preds = %67
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %140

79:                                               ; preds = %72
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %7, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = sext i32 %88 to i64
  %90 = sub i64 8, %89
  %91 = sub i64 %90, 1
  %92 = trunc i64 %91 to i32
  %93 = call i32 @strncat(i8* %85, i8* %86, i32 %92)
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = sext i32 %96 to i64
  %98 = sub i64 8, %97
  %99 = sub i64 %98, 1
  %100 = trunc i64 %99 to i32
  %101 = call i32 @strncat(i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i8*, i8** %5, align 8
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %127, label %105

105:                                              ; preds = %79
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %111, %116
  %118 = add nsw i64 %117, 1
  %119 = call i32 @r_anal_esil_pushnum(%struct.TYPE_16__* %106, i64 %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @r_anal_esil_parse(%struct.TYPE_16__* %120, i8* %125)
  store i32 1, i32* %3, align 4
  br label %265

127:                                              ; preds = %79
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = call i64 @iscommand(%struct.TYPE_16__* %128, i8* %129, %struct.TYPE_15__** %6)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %132, %127
  store i32 1, i32* %3, align 4
  br label %265

140:                                              ; preds = %72, %67
  %141 = load i8*, i8** %5, align 8
  %142 = call i64 @strcmp(i8* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %162, label %144

144:                                              ; preds = %140
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 3
  store i32 0, i32* %151, align 4
  br label %161

152:                                              ; preds = %144
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 3
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %152
  br label %161

161:                                              ; preds = %160, %149
  store i32 1, i32* %3, align 4
  br label %265

162:                                              ; preds = %140
  %163 = load i8*, i8** %5, align 8
  %164 = call i64 @strcmp(i8* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %177, label %166

166:                                              ; preds = %162
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %171, %166
  store i32 1, i32* %3, align 4
  br label %265

177:                                              ; preds = %162
  br label %178

178:                                              ; preds = %177
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load i8*, i8** %5, align 8
  %185 = call i64 @strcmp(i8* %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  store i32 1, i32* %3, align 4
  br label %265

188:                                              ; preds = %183, %178
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %190 = load i8*, i8** %5, align 8
  %191 = call i64 @iscommand(%struct.TYPE_16__* %189, i8* %190, %struct.TYPE_15__** %6)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %243

193:                                              ; preds = %188
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %195 = icmp ne %struct.TYPE_15__* %194, null
  br i1 %195, label %196, label %242

196:                                              ; preds = %193
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 7
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i64 (%struct.TYPE_16__*, i8*)*, i64 (%struct.TYPE_16__*, i8*)** %199, align 8
  %201 = icmp ne i64 (%struct.TYPE_16__*, i8*)* %200, null
  br i1 %201, label %202, label %213

202:                                              ; preds = %196
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 7
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i64 (%struct.TYPE_16__*, i8*)*, i64 (%struct.TYPE_16__*, i8*)** %205, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %208 = load i8*, i8** %5, align 8
  %209 = call i64 %206(%struct.TYPE_16__* %207, i8* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %202
  store i32 1, i32* %3, align 4
  br label %265

212:                                              ; preds = %202
  br label %213

213:                                              ; preds = %212, %196
  %214 = load i8*, i8** %5, align 8
  %215 = call i32* @strdup(i8* %214)
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 6
  store i32* %215, i32** %217, align 8
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 0
  %220 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %219, align 8
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %222 = call i32 %220(%struct.TYPE_16__* %221)
  store i32 %222, i32* %8, align 4
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 6
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @free(i32* %225)
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 6
  store i32* null, i32** %228, align 8
  %229 = load i32, i32* %8, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %240, label %231

231:                                              ; preds = %213
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 5
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load i8*, i8** %5, align 8
  %238 = call i32 @eprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %237)
  br label %239

239:                                              ; preds = %236, %231
  br label %240

240:                                              ; preds = %239, %213
  %241 = load i32, i32* %8, align 4
  store i32 %241, i32* %3, align 4
  br label %265

242:                                              ; preds = %193
  br label %243

243:                                              ; preds = %242, %188
  %244 = load i8*, i8** %5, align 8
  %245 = load i8, i8* %244, align 1
  %246 = icmp ne i8 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %243
  %248 = load i8*, i8** %5, align 8
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %250, 44
  br i1 %251, label %252, label %253

252:                                              ; preds = %247, %243
  store i32 1, i32* %3, align 4
  br label %265

253:                                              ; preds = %247
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %255 = load i8*, i8** %5, align 8
  %256 = call i32 @r_anal_esil_push(%struct.TYPE_16__* %254, i8* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %253
  %259 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 1
  store i32 1, i32* %261, align 4
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 4
  store i32 1, i32* %263, align 8
  br label %264

264:                                              ; preds = %258, %253
  store i32 1, i32* %3, align 4
  br label %265

265:                                              ; preds = %264, %252, %240, %211, %187, %176, %161, %139, %105, %21, %11
  %266 = load i32, i32* %3, align 4
  ret i32 %266
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_anal_esil_pushnum(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @r_anal_esil_parse(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @iscommand(%struct.TYPE_16__*, i8*, %struct.TYPE_15__**) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

declare dso_local i32 @r_anal_esil_push(%struct.TYPE_16__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
