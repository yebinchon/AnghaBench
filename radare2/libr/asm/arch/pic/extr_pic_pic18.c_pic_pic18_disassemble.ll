; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/pic/extr_pic_pic18.c_pic_pic18_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/pic/extr_pic_pic18.c_pic_pic18_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@ops = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s 0x%x, %d, %d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s 0x%x, %d\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%s 0x%x, 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%s %s, %d\00", align 1
@fsr = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"unknown args\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pic_pic18_disassemble(%struct.TYPE_4__* %0, i8* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strcpy(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  store i32 -1, i32* %5, align 4
  br label %326

26:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %27 = load i64*, i64** %8, align 8
  %28 = call i32 @memcpy(i32* %11, i64* %27, i32 4)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @strcpy(i8* %29, i8* %30)
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %67, %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %38, %46
  br i1 %47, label %64, label %48

48:                                               ; preds = %32
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %60, %61
  %63 = icmp ne i32 %54, %62
  br label %64

64:                                               ; preds = %48, %32
  %65 = phi i1 [ true, %32 ], [ %63, %48 ]
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %32

70:                                               ; preds = %64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %70
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 65535
  br i1 %85, label %86, label %97

86:                                               ; preds = %78
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strcpy(i8* %87, i8* %93)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 2, i32* %96, align 4
  store i32 -1, i32* %5, align 4
  br label %326

97:                                               ; preds = %78, %70
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 2, i32* %99, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %318 [
    i32 131, label %106
    i32 130, label %113
    i32 134, label %113
    i32 137, label %123
    i32 140, label %139
    i32 139, label %152
    i32 132, label %168
    i32 138, label %178
    i32 135, label %209
    i32 136, label %238
    i32 129, label %265
    i32 128, label %275
    i32 133, label %285
  ]

106:                                              ; preds = %97
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %12, align 8
  br label %319

113:                                              ; preds = %97, %97
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = and i32 %120, 255
  %122 = call i8* (i8*, i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %119, i32 %121)
  store i8* %122, i8** %12, align 8
  br label %319

123:                                              ; preds = %97
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = and i32 %130, 255
  %132 = load i32, i32* %11, align 4
  %133 = ashr i32 %132, 9
  %134 = and i32 %133, 1
  %135 = load i32, i32* %11, align 4
  %136 = ashr i32 %135, 8
  %137 = and i32 %136, 1
  %138 = call i8* (i8*, i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %129, i32 %131, i32 %134, i32 %137)
  store i8* %138, i8** %12, align 8
  br label %319

139:                                              ; preds = %97
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = and i32 %146, 255
  %148 = load i32, i32* %11, align 4
  %149 = ashr i32 %148, 8
  %150 = and i32 %149, 1
  %151 = call i8* (i8*, i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %145, i32 %147, i32 %150)
  store i8* %151, i8** %12, align 8
  br label %319

152:                                              ; preds = %97
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = and i32 %159, 255
  %161 = load i32, i32* %11, align 4
  %162 = ashr i32 %161, 9
  %163 = and i32 %162, 7
  %164 = load i32, i32* %11, align 4
  %165 = ashr i32 %164, 8
  %166 = and i32 %165, 1
  %167 = call i8* (i8*, i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %158, i32 %160, i32 %163, i32 %166)
  store i8* %167, i8** %12, align 8
  br label %319

168:                                              ; preds = %97
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = and i32 %175, 2047
  %177 = call i8* (i8*, i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %174, i32 %176)
  store i8* %177, i8** %12, align 8
  br label %319

178:                                              ; preds = %97
  %179 = load i32, i32* %9, align 4
  %180 = icmp slt i32 %179, 4
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  store i32 -1, i32* %5, align 4
  br label %326

182:                                              ; preds = %178
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  store i32 4, i32* %184, align 4
  %185 = load i64*, i64** %8, align 8
  %186 = bitcast i64* %185 to i32*
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %13, align 4
  %188 = load i32, i32* %13, align 4
  %189 = ashr i32 %188, 28
  %190 = icmp ne i32 %189, 15
  br i1 %190, label %191, label %192

191:                                              ; preds = %182
  store i32 -1, i32* %5, align 4
  br label %326

192:                                              ; preds = %182
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* %13, align 4
  %200 = and i32 %199, 255
  %201 = load i32, i32* %13, align 4
  %202 = ashr i32 %201, 8
  %203 = and i32 %202, 1048320
  %204 = or i32 %200, %203
  %205 = load i32, i32* %13, align 4
  %206 = ashr i32 %205, 8
  %207 = and i32 %206, 1
  %208 = call i8* (i8*, i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %198, i32 %204, i32 %207)
  store i8* %208, i8** %12, align 8
  br label %319

209:                                              ; preds = %97
  %210 = load i32, i32* %9, align 4
  %211 = icmp slt i32 %210, 4
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  store i32 -1, i32* %5, align 4
  br label %326

213:                                              ; preds = %209
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  store i32 4, i32* %215, align 4
  %216 = load i64*, i64** %8, align 8
  %217 = bitcast i64* %216 to i32*
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %14, align 4
  %219 = load i32, i32* %14, align 4
  %220 = ashr i32 %219, 28
  %221 = icmp ne i32 %220, 15
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  store i32 -1, i32* %5, align 4
  br label %326

223:                                              ; preds = %213
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 2
  %229 = load i8*, i8** %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = and i32 %230, 255
  %232 = load i32, i32* %14, align 4
  %233 = and i32 %232, 268369920
  %234 = ashr i32 %233, 8
  %235 = or i32 %231, %234
  %236 = mul nsw i32 %235, 2
  %237 = call i8* (i8*, i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %229, i32 %236)
  store i8* %237, i8** %12, align 8
  br label %319

238:                                              ; preds = %97
  %239 = load i32, i32* %9, align 4
  %240 = icmp slt i32 %239, 4
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  store i32 -1, i32* %5, align 4
  br label %326

242:                                              ; preds = %238
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  store i32 4, i32* %244, align 4
  %245 = load i64*, i64** %8, align 8
  %246 = bitcast i64* %245 to i32*
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %15, align 4
  %248 = load i32, i32* %15, align 4
  %249 = ashr i32 %248, 28
  %250 = icmp ne i32 %249, 15
  br i1 %250, label %251, label %252

251:                                              ; preds = %242
  store i32 -1, i32* %5, align 4
  br label %326

252:                                              ; preds = %242
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %254 = load i32, i32* %10, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 2
  %258 = load i8*, i8** %257, align 8
  %259 = load i32, i32* %15, align 4
  %260 = and i32 %259, 4095
  %261 = load i32, i32* %15, align 4
  %262 = ashr i32 %261, 16
  %263 = and i32 %262, 4095
  %264 = call i8* (i8*, i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %258, i32 %260, i32 %263)
  store i8* %264, i8** %12, align 8
  br label %319

265:                                              ; preds = %97
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 2
  %271 = load i8*, i8** %270, align 8
  %272 = load i32, i32* %11, align 4
  %273 = and i32 %272, 15
  %274 = call i8* (i8*, i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %271, i32 %273)
  store i8* %274, i8** %12, align 8
  br label %319

275:                                              ; preds = %97
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %277 = load i32, i32* %10, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 2
  %281 = load i8*, i8** %280, align 8
  %282 = load i32, i32* %11, align 4
  %283 = and i32 %282, 1
  %284 = call i8* (i8*, i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %281, i32 %283)
  store i8* %284, i8** %12, align 8
  br label %319

285:                                              ; preds = %97
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  store i32 4, i32* %287, align 4
  %288 = load i64*, i64** %8, align 8
  %289 = bitcast i64* %288 to i32*
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %16, align 4
  %291 = load i32, i32* %16, align 4
  %292 = ashr i32 %291, 28
  %293 = icmp ne i32 %292, 15
  br i1 %293, label %294, label %295

294:                                              ; preds = %285
  store i32 -1, i32* %5, align 4
  br label %326

295:                                              ; preds = %285
  %296 = load i32, i32* %16, align 4
  %297 = ashr i32 %296, 4
  %298 = and i32 %297, 3
  %299 = sext i32 %298 to i64
  store i64 %299, i64* %17, align 8
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ops, align 8
  %301 = load i32, i32* %10, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 2
  %305 = load i8*, i8** %304, align 8
  %306 = load i32*, i32** @fsr, align 8
  %307 = load i64, i64* %17, align 8
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %16, align 4
  %311 = and i32 %310, 15
  %312 = shl i32 %311, 8
  %313 = load i32, i32* %16, align 4
  %314 = ashr i32 %313, 16
  %315 = and i32 %314, 255
  %316 = or i32 %312, %315
  %317 = call i8* (i8*, i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %305, i32 %309, i32 %316)
  store i8* %317, i8** %12, align 8
  br label %319

318:                                              ; preds = %97
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  br label %319

319:                                              ; preds = %318, %295, %275, %265, %252, %223, %192, %168, %152, %139, %123, %113, %106
  %320 = load i8*, i8** %7, align 8
  %321 = load i8*, i8** %12, align 8
  %322 = call i32 @strcpy(i8* %320, i8* %321)
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %5, align 4
  br label %326

326:                                              ; preds = %319, %294, %251, %241, %222, %212, %191, %181, %86, %20
  %327 = load i32, i32* %5, align 4
  ret i32 %327
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i8* @sdb_fmt(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
