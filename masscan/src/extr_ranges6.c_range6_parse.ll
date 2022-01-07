; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range6 = type { %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@range6_parse.badrange = internal constant %struct.Range6 { %struct.TYPE_9__ { i64 -1, i64 -1, i32 0, i32 0 }, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [115 x i8] c"err: ending addr %4x:%4x:%4x:%4x:%4x:%4x:%4x:%4x cannot come before starting addr %4x:%4x:%4x:%4x:%4x:%4x:%4x:%4x\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"err: range %4x:%4x:%4x:%4x:%4x:%4x:%4x:%4x - %4x:%4x:%4x:%4x:%4x:%4x:%4x:%4x greater than 64-bits\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @range6_parse(%struct.Range6* noalias sret %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Range6, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca %struct.TYPE_9__, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 %3, i32* %7, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = bitcast %struct.Range6* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.Range6* @range6_parse.badrange to i8*), i64 72, i1 false)
  br label %488

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  store i32* %8, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  br label %32

29:                                               ; preds = %22
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %25
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = call i64 @isspace(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %37, %33
  %49 = phi i1 [ false, %33 ], [ %47, %37 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %33

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %57 = call i32 @parse_ipv6(i8* %54, i32* %8, i32 %55, %struct.TYPE_9__* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = bitcast %struct.Range6* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 bitcast (%struct.Range6* @range6_parse.badrange to i8*), i64 72, i1 false)
  br label %488

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 0
  %64 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %65 = bitcast %struct.TYPE_9__* %63 to i8*
  %66 = bitcast %struct.TYPE_9__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 24, i1 false)
  br label %67

67:                                               ; preds = %84, %62
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = and i32 %77, 255
  %79 = trunc i32 %78 to i8
  %80 = call i64 @isspace(i8 signext %79)
  %81 = icmp ne i64 %80, 0
  br label %82

82:                                               ; preds = %71, %67
  %83 = phi i1 [ false, %67 ], [ %81, %71 ]
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = load i32, i32* %8, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %67

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp uge i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %483

92:                                               ; preds = %87
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 47
  br i1 %99, label %100, label %234

100:                                              ; preds = %92
  store i32 0, i32* %11, align 4
  %101 = bitcast %struct.TYPE_9__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %101, i8 0, i64 24, i1 false)
  store i32 0, i32* %13, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %8, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = and i32 %109, 255
  %111 = trunc i32 %110 to i8
  %112 = call i64 @isdigit(i8 signext %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %100
  %115 = bitcast %struct.Range6* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %115, i8* align 8 bitcast (%struct.Range6* @range6_parse.badrange to i8*), i64 72, i1 false)
  br label %488

116:                                              ; preds = %100
  br label %117

117:                                              ; preds = %131, %116
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i8*, i8** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 48
  br label %129

129:                                              ; preds = %121, %117
  %130 = phi i1 [ false, %117 ], [ %128, %121 ]
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = load i32, i32* %8, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %117

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %169, %134
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %135
  %140 = load i8*, i8** %5, align 8
  %141 = load i32, i32* %8, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = and i32 %145, 255
  %147 = trunc i32 %146 to i8
  %148 = call i64 @isdigit(i8 signext %147)
  %149 = icmp ne i64 %148, 0
  br label %150

150:                                              ; preds = %139, %135
  %151 = phi i1 [ false, %135 ], [ %149, %139 ]
  br i1 %151, label %152, label %170

152:                                              ; preds = %150
  %153 = load i32, i32* %11, align 4
  %154 = mul nsw i32 %153, 10
  %155 = load i8*, i8** %5, align 8
  %156 = load i32, i32* %8, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %8, align 4
  %158 = zext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = sub nsw i32 %161, 48
  %163 = add nsw i32 %154, %162
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %13, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %13, align 4
  %166 = icmp ugt i32 %165, 3
  br i1 %166, label %167, label %169

167:                                              ; preds = %152
  %168 = bitcast %struct.Range6* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 bitcast (%struct.Range6* @range6_parse.badrange to i8*), i64 72, i1 false)
  br label %488

169:                                              ; preds = %152
  br label %135

170:                                              ; preds = %150
  %171 = load i32, i32* %11, align 4
  %172 = icmp sgt i32 %171, 128
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = bitcast %struct.Range6* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %174, i8* align 8 bitcast (%struct.Range6* @range6_parse.badrange to i8*), i64 72, i1 false)
  br label %488

175:                                              ; preds = %170
  %176 = load i32, i32* %11, align 4
  %177 = icmp sgt i32 %176, 64
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 -1, i64* %179, align 8
  br label %192

180:                                              ; preds = %175
  %181 = load i32, i32* %11, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 0, i64* %184, align 8
  br label %191

185:                                              ; preds = %180
  %186 = load i32, i32* %11, align 4
  %187 = sub nsw i32 64, %186
  %188 = zext i32 %187 to i64
  %189 = shl i64 -1, %188
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 %189, i64* %190, align 8
  br label %191

191:                                              ; preds = %185, %183
  br label %192

192:                                              ; preds = %191, %178
  %193 = load i32, i32* %11, align 4
  %194 = icmp sgt i32 %193, 64
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load i32, i32* %11, align 4
  %197 = sub nsw i32 128, %196
  %198 = zext i32 %197 to i64
  %199 = shl i64 -1, %198
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i64 %199, i64* %200, align 8
  br label %203

201:                                              ; preds = %192
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i64 0, i64* %202, align 8
  br label %203

203:                                              ; preds = %201, %195
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = and i64 %208, %205
  store i64 %209, i64* %207, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = and i64 %214, %211
  store i64 %215, i64* %213, align 8
  %216 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = xor i64 %220, -1
  %222 = or i64 %218, %221
  %223 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  store i64 %222, i64* %224, align 8
  %225 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = xor i64 %229, -1
  %231 = or i64 %227, %230
  %232 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  store i64 %231, i64* %233, align 8
  br label %483

234:                                              ; preds = %92
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* %7, align 4
  %237 = icmp ult i32 %235, %236
  br i1 %237, label %238, label %482

238:                                              ; preds = %234
  %239 = load i8*, i8** %5, align 8
  %240 = load i32, i32* %8, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %244, 45
  br i1 %245, label %246, label %482

246:                                              ; preds = %238
  %247 = load i32, i32* %8, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %8, align 4
  %249 = load i8*, i8** %5, align 8
  %250 = load i32, i32* %7, align 4
  %251 = call i32 @parse_ipv6(i8* %249, i32* %8, i32 %250, %struct.TYPE_9__* %14)
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %10, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %246
  %255 = bitcast %struct.Range6* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %255, i8* align 8 bitcast (%struct.Range6* @range6_parse.badrange to i8*), i64 72, i1 false)
  br label %488

256:                                              ; preds = %246
  %257 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %258 = call i64 @LESS(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %14, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %354

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %262 = bitcast %struct.TYPE_9__* %15 to i8*
  %263 = bitcast %struct.TYPE_9__* %261 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %262, i8* align 8 %263, i64 24, i1 false)
  %264 = load i32, i32* @stderr, align 4
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = lshr i64 %266, 48
  %268 = and i64 %267, 65535
  %269 = trunc i64 %268 to i32
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = lshr i64 %271, 32
  %273 = and i64 %272, 65535
  %274 = trunc i64 %273 to i32
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = lshr i64 %276, 16
  %278 = and i64 %277, 65535
  %279 = trunc i64 %278 to i32
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = lshr i64 %281, 0
  %283 = and i64 %282, 65535
  %284 = trunc i64 %283 to i32
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = lshr i64 %286, 48
  %288 = and i64 %287, 65535
  %289 = trunc i64 %288 to i32
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = lshr i64 %291, 32
  %293 = and i64 %292, 65535
  %294 = trunc i64 %293 to i32
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = lshr i64 %296, 16
  %298 = and i64 %297, 65535
  %299 = trunc i64 %298 to i32
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = lshr i64 %301, 0
  %303 = and i64 %302, 65535
  %304 = trunc i64 %303 to i32
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = lshr i64 %306, 48
  %308 = and i64 %307, 65535
  %309 = trunc i64 %308 to i32
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = lshr i64 %311, 32
  %313 = and i64 %312, 65535
  %314 = trunc i64 %313 to i32
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = lshr i64 %316, 16
  %318 = and i64 %317, 65535
  %319 = trunc i64 %318 to i32
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = lshr i64 %321, 0
  %323 = and i64 %322, 65535
  %324 = trunc i64 %323 to i32
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = lshr i64 %326, 48
  %328 = and i64 %327, 65535
  %329 = trunc i64 %328 to i32
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = lshr i64 %331, 32
  %333 = and i64 %332, 65535
  %334 = trunc i64 %333 to i32
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = lshr i64 %336, 16
  %338 = and i64 %337, 65535
  %339 = trunc i64 %338 to i32
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = lshr i64 %341, 0
  %343 = and i64 %342, 65535
  %344 = trunc i64 %343 to i32
  %345 = call i32 @fprintf(i32 %264, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i32 %269, i32 %274, i32 %279, i32 %284, i32 %289, i32 %294, i32 %299, i32 %304, i32 %309, i32 %314, i32 %319, i32 %324, i32 %329, i32 %334, i32 %339, i32 %344)
  %346 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 0
  store i64 -1, i64* %347, align 8
  %348 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 1
  store i64 -1, i64* %349, align 8
  %350 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 0
  store i64 0, i64* %351, align 8
  %352 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 1
  store i64 0, i64* %353, align 8
  br label %358

354:                                              ; preds = %256
  %355 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 0
  %356 = bitcast %struct.TYPE_9__* %355 to i8*
  %357 = bitcast %struct.TYPE_9__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %356, i8* align 8 %357, i64 24, i1 false)
  br label %358

358:                                              ; preds = %354, %260
  %359 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = sub i64 %361, %364
  %366 = icmp ugt i64 %365, 2
  br i1 %366, label %384, label %367

367:                                              ; preds = %358
  %368 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = sub i64 %370, %373
  %375 = icmp eq i64 %374, 1
  br i1 %375, label %376, label %481

376:                                              ; preds = %367
  %377 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 1
  %379 = load i64, i64* %378, align 8
  %380 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 1
  %382 = load i64, i64* %381, align 8
  %383 = icmp uge i64 %379, %382
  br i1 %383, label %384, label %481

384:                                              ; preds = %376, %358
  %385 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %386 = bitcast %struct.TYPE_9__* %16 to i8*
  %387 = bitcast %struct.TYPE_9__* %385 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %386, i8* align 8 %387, i64 24, i1 false)
  %388 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 0
  %389 = bitcast %struct.TYPE_9__* %17 to i8*
  %390 = bitcast %struct.TYPE_9__* %388 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %389, i8* align 8 %390, i64 24, i1 false)
  %391 = load i32, i32* @stderr, align 4
  %392 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = lshr i64 %393, 48
  %395 = and i64 %394, 65535
  %396 = trunc i64 %395 to i32
  %397 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = lshr i64 %398, 32
  %400 = and i64 %399, 65535
  %401 = trunc i64 %400 to i32
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = lshr i64 %403, 16
  %405 = and i64 %404, 65535
  %406 = trunc i64 %405 to i32
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = lshr i64 %408, 0
  %410 = and i64 %409, 65535
  %411 = trunc i64 %410 to i32
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = lshr i64 %413, 48
  %415 = and i64 %414, 65535
  %416 = trunc i64 %415 to i32
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = lshr i64 %418, 32
  %420 = and i64 %419, 65535
  %421 = trunc i64 %420 to i32
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = lshr i64 %423, 16
  %425 = and i64 %424, 65535
  %426 = trunc i64 %425 to i32
  %427 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = lshr i64 %428, 0
  %430 = and i64 %429, 65535
  %431 = trunc i64 %430 to i32
  %432 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = lshr i64 %433, 48
  %435 = and i64 %434, 65535
  %436 = trunc i64 %435 to i32
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = lshr i64 %438, 32
  %440 = and i64 %439, 65535
  %441 = trunc i64 %440 to i32
  %442 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = lshr i64 %443, 16
  %445 = and i64 %444, 65535
  %446 = trunc i64 %445 to i32
  %447 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = lshr i64 %448, 0
  %450 = and i64 %449, 65535
  %451 = trunc i64 %450 to i32
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %453 = load i64, i64* %452, align 8
  %454 = lshr i64 %453, 48
  %455 = and i64 %454, 65535
  %456 = trunc i64 %455 to i32
  %457 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %458 = load i64, i64* %457, align 8
  %459 = lshr i64 %458, 32
  %460 = and i64 %459, 65535
  %461 = trunc i64 %460 to i32
  %462 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %463 = load i64, i64* %462, align 8
  %464 = lshr i64 %463, 16
  %465 = and i64 %464, 65535
  %466 = trunc i64 %465 to i32
  %467 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %468 = load i64, i64* %467, align 8
  %469 = lshr i64 %468, 0
  %470 = and i64 %469, 65535
  %471 = trunc i64 %470 to i32
  %472 = call i32 @fprintf(i32 %391, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 %396, i32 %401, i32 %406, i32 %411, i32 %416, i32 %421, i32 %426, i32 %431, i32 %436, i32 %441, i32 %446, i32 %451, i32 %456, i32 %461, i32 %466, i32 %471)
  %473 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %474 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %473, i32 0, i32 0
  store i64 -1, i64* %474, align 8
  %475 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 1
  %476 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i32 0, i32 1
  store i64 -1, i64* %476, align 8
  %477 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i32 0, i32 0
  store i64 0, i64* %478, align 8
  %479 = getelementptr inbounds %struct.Range6, %struct.Range6* %9, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %479, i32 0, i32 1
  store i64 0, i64* %480, align 8
  br label %481

481:                                              ; preds = %384, %376, %367
  br label %483

482:                                              ; preds = %238, %234
  br label %483

483:                                              ; preds = %482, %481, %203, %91
  %484 = load i32, i32* %8, align 4
  %485 = load i32*, i32** %6, align 8
  store i32 %484, i32* %485, align 4
  %486 = bitcast %struct.Range6* %0 to i8*
  %487 = bitcast %struct.Range6* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %486, i8* align 8 %487, i64 72, i1 false)
  br label %488

488:                                              ; preds = %483, %254, %173, %167, %114, %60, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @parse_ipv6(i8*, i32*, i32, %struct.TYPE_9__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @isdigit(i8 signext) #2

declare dso_local i64 @LESS(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
