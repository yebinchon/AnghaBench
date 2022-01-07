; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_text2.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_text2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32*, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [124 x i8] c"TEXT2(x=%d,y=%d,cl=%d,ct=%d,cr=%d,cb=%d,bl=%d,bt=%d,br=%d,bb=%d,bs=%d,bg=0x%x,fg=0x%x,font=%d,fl=0x%x,op=0x%x,mix=%d,n=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Text: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*, i32, i32)* @process_text2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_text2(i32 %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @in_uint8(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %14, %4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @in_uint8(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %20
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @in_uint8(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %30
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @in_uint8(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %40
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 16
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 6
  %58 = call i32 @rdp_in_colour(i32 %55, i32* %57)
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 7
  %67 = call i32 @rdp_in_colour(i32 %64, i32* %66)
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 64
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 14
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @in_uint16_le(i32 %73, i64 %76)
  br label %78

78:                                               ; preds = %72, %68
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, 128
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 12
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @in_uint16_le(i32 %83, i64 %86)
  br label %88

88:                                               ; preds = %82, %78
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 256
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 15
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @in_uint16_le(i32 %93, i64 %96)
  br label %98

98:                                               ; preds = %92, %88
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, 512
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 13
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @in_uint16_le(i32 %103, i64 %106)
  br label %108

108:                                              ; preds = %102, %98
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, 1024
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 10
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @in_uint16_le(i32 %113, i64 %116)
  br label %118

118:                                              ; preds = %112, %108
  %119 = load i32, i32* %7, align 4
  %120 = and i32 %119, 2048
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @in_uint16_le(i32 %123, i64 %126)
  br label %128

128:                                              ; preds = %122, %118
  %129 = load i32, i32* %7, align 4
  %130 = and i32 %129, 4096
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 11
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @in_uint16_le(i32 %133, i64 %136)
  br label %138

138:                                              ; preds = %132, %128
  %139 = load i32, i32* %7, align 4
  %140 = and i32 %139, 8192
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load i32, i32* %5, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 9
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @in_uint16_le(i32 %143, i64 %146)
  br label %148

148:                                              ; preds = %142, %138
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 18
  %152 = load i32, i32* %7, align 4
  %153 = ashr i32 %152, 14
  %154 = call i32 @rdp_parse_brush(i32 %149, %struct.TYPE_6__* %151, i32 %153)
  %155 = load i32, i32* %7, align 4
  %156 = and i32 %155, 524288
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %148
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 17
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @in_uint16_le(i32 %159, i64 %162)
  br label %164

164:                                              ; preds = %158, %148
  %165 = load i32, i32* %7, align 4
  %166 = and i32 %165, 1048576
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load i32, i32* %5, align 4
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 16
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @in_uint16_le(i32 %169, i64 %172)
  br label %174

174:                                              ; preds = %168, %164
  %175 = load i32, i32* %7, align 4
  %176 = and i32 %175, 2097152
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %174
  %179 = load i32, i32* %5, align 4
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @in_uint8(i32 %179, i32 %182)
  %184 = load i32, i32* %5, align 4
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 5
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @in_uint8a(i32 %184, i32* %187, i32 %190)
  br label %192

192:                                              ; preds = %178, %174
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 17
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 16
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 14
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 12
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 15
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 13
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 10
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 8
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 11
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 9
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 18
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = inttoptr i64 %248 to i8*
  %250 = call i32 @DEBUG(i8* %249)
  %251 = call i32 @DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %252

252:                                              ; preds = %269, %192
  %253 = load i32, i32* %9, align 4
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %258, label %272

258:                                              ; preds = %252
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 5
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = inttoptr i64 %266 to i8*
  %268 = call i32 @DEBUG(i8* %267)
  br label %269

269:                                              ; preds = %258
  %270 = load i32, i32* %9, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %9, align 4
  br label %252

272:                                              ; preds = %252
  %273 = call i32 @DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 18
  %276 = call i32 @setup_brush(i32* %10, %struct.TYPE_6__* %275)
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = sub nsw i32 %285, 1
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 17
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 16
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 14
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 12
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 15
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 14
  %307 = load i64, i64* %306, align 8
  %308 = sub nsw i64 %304, %307
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 13
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 12
  %314 = load i64, i64* %313, align 8
  %315 = sub nsw i64 %311, %314
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 10
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 8
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 11
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 10
  %327 = load i64, i64* %326, align 8
  %328 = sub nsw i64 %324, %327
  %329 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 9
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 8
  %334 = load i64, i64* %333, align 8
  %335 = sub nsw i64 %331, %334
  %336 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 7
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 6
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 5
  %344 = load i32*, i32** %343, align 8
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @ui_draw_text(i32 %279, i32 %282, i32 %286, i32 %289, i64 %292, i64 %295, i64 %298, i64 %301, i64 %308, i64 %315, i64 %318, i64 %321, i64 %328, i64 %335, i32* %10, i32 %338, i32 %341, i32* %344, i32 %347)
  ret void
}

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @rdp_in_colour(i32, i32*) #1

declare dso_local i32 @in_uint16_le(i32, i64) #1

declare dso_local i32 @rdp_parse_brush(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @in_uint8a(i32, i32*, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @setup_brush(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ui_draw_text(i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
