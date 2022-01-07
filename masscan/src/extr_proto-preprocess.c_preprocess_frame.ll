; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-preprocess.c_preprocess_frame.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-preprocess.c_preprocess_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PreprocessedInfo = type { i32, i32, i8*, i8*, i32, i8, i8*, i8*, i8, i8, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.anon = type { i32, i32, i32, [8 x i8], i32 }

@FOUND_NOTHING = common dso_local global i32 0, align 4
@FOUND_ETHERNET = common dso_local global i32 0, align 4
@FOUND_IPV4 = common dso_local global i32 0, align 4
@FOUND_OPROTO = common dso_local global i32 0, align 4
@FOUND_TCP = common dso_local global i32 0, align 4
@FOUND_UDP = common dso_local global i32 0, align 4
@FOUND_ICMP = common dso_local global i32 0, align 4
@FOUND_SCTP = common dso_local global i32 0, align 4
@FOUND_DNS = common dso_local global i32 0, align 4
@FOUND_IPV6 = common dso_local global i32 0, align 4
@FOUND_IPV6_HOP = common dso_local global i32 0, align 4
@FOUND_8021Q = common dso_local global i32 0, align 4
@FOUND_MPLS = common dso_local global i32 0, align 4
@FOUND_WIFI_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] zeroinitializer, align 1
@FOUND_WIFI = common dso_local global i32 0, align 4
@FOUND_RADIOTAP = common dso_local global i32 0, align 4
@FOUND_PRISM = common dso_local global i32 0, align 4
@FOUND_LLC = common dso_local global i32 0, align 4
@FOUND_SLL = common dso_local global i32 0, align 4
@FOUND_ARP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @preprocess_frame(i8* %0, i32 %1, i32 %2, %struct.PreprocessedInfo* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.PreprocessedInfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.anon, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.PreprocessedInfo* %3, %struct.PreprocessedInfo** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %30 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %31 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* @FOUND_NOTHING, align 4
  %33 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %34 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %33, i32 0, i32 17
  store i32 %32, i32* %34, align 8
  %35 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %36 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %4
  br label %789

40:                                               ; preds = %4
  br label %41

41:                                               ; preds = %791, %40
  %42 = load i32, i32* @FOUND_ETHERNET, align 4
  %43 = call i32 @VERIFY_REMAINING(i32 14, i32 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %50 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = getelementptr inbounds i8, i8* %54, i64 6
  %56 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %57 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = getelementptr inbounds i8, i8* %61, i64 12
  %63 = call i32 @ex16be(i8* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add i32 %64, 14
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ult i32 %66, 2000
  br i1 %67, label %68, label %69

68:                                               ; preds = %41
  br label %747

69:                                               ; preds = %41
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 2048
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %781

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %792, %783, %528, %73
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %77 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @FOUND_IPV4, align 4
  %79 = call i32 @VERIFY_REMAINING(i32 20, i32 %78)
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = ashr i32 %85, 4
  %87 = icmp ne i32 %86, 4
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %917

89:                                               ; preds = %74
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 15
  %97 = mul nsw i32 %96, 4
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @FOUND_IPV4, align 4
  %100 = call i32 @VERIFY_REMAINING(i32 %98, i32 %99)
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 6
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %107, 224
  store i32 %108, i32* %13, align 4
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = getelementptr inbounds i8, i8* %112, i64 6
  %114 = call i32 @ex16be(i8* %113)
  %115 = and i32 %114, 16383
  %116 = shl i32 %115, 3
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %89
  %120 = load i32, i32* %13, align 4
  %121 = and i32 %120, 32
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119, %89
  store i32 0, i32* %5, align 4
  br label %917

124:                                              ; preds = %119
  %125 = load i8*, i8** %6, align 8
  %126 = load i32, i32* %10, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = call i32 @ex16be(i8* %129)
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @FOUND_IPV4, align 4
  %133 = call i32 @VERIFY_REMAINING(i32 %131, i32 %132)
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %917

138:                                              ; preds = %124
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %15, align 4
  %141 = add i32 %139, %140
  store i32 %141, i32* %7, align 4
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* %10, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = ashr i32 %147, 4
  %149 = and i32 %148, 15
  %150 = trunc i32 %149 to i8
  %151 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %152 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %151, i32 0, i32 5
  store i8 %150, i8* %152, align 4
  %153 = load i8*, i8** %6, align 8
  %154 = load i32, i32* %10, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = getelementptr inbounds i8, i8* %156, i64 12
  %158 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %159 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %158, i32 0, i32 6
  store i8* %157, i8** %159, align 8
  %160 = load i8*, i8** %6, align 8
  %161 = load i32, i32* %10, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = getelementptr inbounds i8, i8* %163, i64 16
  %165 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %166 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %165, i32 0, i32 7
  store i8* %164, i8** %166, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = load i32, i32* %10, align 4
  %169 = add i32 %168, 8
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %174 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %173, i32 0, i32 8
  store i8 %172, i8* %174, align 8
  %175 = load i8*, i8** %6, align 8
  %176 = load i32, i32* %10, align 4
  %177 = add i32 %176, 9
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %182 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %181, i32 0, i32 9
  store i8 %180, i8* %182, align 1
  %183 = load i32, i32* %15, align 4
  %184 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %185 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %184, i32 0, i32 10
  store i32 %183, i32* %185, align 4
  %186 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %187 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %186, i32 0, i32 5
  %188 = load i8, i8* %187, align 4
  %189 = zext i8 %188 to i32
  %190 = icmp ne i32 %189, 4
  br i1 %190, label %191, label %192

191:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %917

192:                                              ; preds = %138
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %10, align 4
  %195 = add i32 %194, %193
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %198 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %200 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %199, i32 0, i32 9
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  switch i32 %202, label %207 [
    i32 1, label %203
    i32 6, label %204
    i32 17, label %205
    i32 132, label %206
  ]

203:                                              ; preds = %192
  br label %313

204:                                              ; preds = %192
  br label %210

205:                                              ; preds = %192
  br label %265

206:                                              ; preds = %192
  br label %334

207:                                              ; preds = %192
  %208 = load i32, i32* @FOUND_OPROTO, align 4
  %209 = call i32 @VERIFY_REMAINING(i32 0, i32 %208)
  store i32 0, i32* %5, align 4
  br label %917

210:                                              ; preds = %450, %204
  %211 = load i32, i32* @FOUND_TCP, align 4
  %212 = call i32 @VERIFY_REMAINING(i32 20, i32 %211)
  %213 = load i8*, i8** %6, align 8
  %214 = load i32, i32* %10, align 4
  %215 = add i32 %214, 12
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %213, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = ashr i32 %219, 2
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* @FOUND_TCP, align 4
  %223 = call i32 @VERIFY_REMAINING(i32 %221, i32 %222)
  %224 = load i8*, i8** %6, align 8
  %225 = load i32, i32* %10, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  %228 = getelementptr inbounds i8, i8* %227, i64 0
  %229 = call i32 @ex16be(i8* %228)
  %230 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %231 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %230, i32 0, i32 11
  store i32 %229, i32* %231, align 8
  %232 = load i8*, i8** %6, align 8
  %233 = load i32, i32* %10, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = getelementptr inbounds i8, i8* %235, i64 2
  %237 = call i32 @ex16be(i8* %236)
  %238 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %239 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %238, i32 0, i32 12
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %16, align 4
  %242 = add i32 %240, %241
  %243 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %244 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %243, i32 0, i32 13
  store i32 %242, i32* %244, align 8
  %245 = load i32, i32* %7, align 4
  %246 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %247 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %246, i32 0, i32 13
  %248 = load i32, i32* %247, align 8
  %249 = sub i32 %245, %248
  %250 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %251 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %250, i32 0, i32 14
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* %7, align 4
  %253 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %254 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = sub i32 %252, %255
  %257 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %258 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %257, i32 0, i32 15
  store i32 %256, i32* %258, align 8
  %259 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %260 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %259, i32 0, i32 14
  %261 = load i32, i32* %260, align 4
  %262 = icmp ult i32 %261, 2000
  %263 = zext i1 %262 to i32
  %264 = call i32 @assert(i32 %263)
  store i32 1, i32* %5, align 4
  br label %917

265:                                              ; preds = %451, %205
  %266 = load i32, i32* @FOUND_UDP, align 4
  %267 = call i32 @VERIFY_REMAINING(i32 8, i32 %266)
  %268 = load i8*, i8** %6, align 8
  %269 = load i32, i32* %10, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = getelementptr inbounds i8, i8* %271, i64 0
  %273 = call i32 @ex16be(i8* %272)
  %274 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %275 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %274, i32 0, i32 11
  store i32 %273, i32* %275, align 8
  %276 = load i8*, i8** %6, align 8
  %277 = load i32, i32* %10, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %276, i64 %278
  %280 = getelementptr inbounds i8, i8* %279, i64 2
  %281 = call i32 @ex16be(i8* %280)
  %282 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %283 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %282, i32 0, i32 12
  store i32 %281, i32* %283, align 4
  %284 = load i32, i32* %10, align 4
  %285 = add i32 %284, 8
  store i32 %285, i32* %10, align 4
  %286 = load i32, i32* %10, align 4
  %287 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %288 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %287, i32 0, i32 13
  store i32 %286, i32* %288, align 8
  %289 = load i32, i32* %7, align 4
  %290 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %291 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %290, i32 0, i32 13
  %292 = load i32, i32* %291, align 8
  %293 = sub i32 %289, %292
  %294 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %295 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %294, i32 0, i32 14
  store i32 %293, i32* %295, align 4
  %296 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %297 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %296, i32 0, i32 14
  %298 = load i32, i32* %297, align 4
  %299 = icmp ult i32 %298, 2000
  %300 = zext i1 %299 to i32
  %301 = call i32 @assert(i32 %300)
  %302 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %303 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %302, i32 0, i32 12
  %304 = load i32, i32* %303, align 4
  %305 = icmp eq i32 %304, 53
  br i1 %305, label %311, label %306

306:                                              ; preds = %265
  %307 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %308 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %307, i32 0, i32 11
  %309 = load i32, i32* %308, align 8
  %310 = icmp eq i32 %309, 53
  br i1 %310, label %311, label %312

311:                                              ; preds = %306, %265
  br label %370

312:                                              ; preds = %306
  store i32 1, i32* %5, align 4
  br label %917

313:                                              ; preds = %203
  %314 = load i32, i32* @FOUND_ICMP, align 4
  %315 = call i32 @VERIFY_REMAINING(i32 4, i32 %314)
  %316 = load i8*, i8** %6, align 8
  %317 = load i32, i32* %10, align 4
  %318 = add i32 %317, 0
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %316, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i32
  %323 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %324 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %323, i32 0, i32 11
  store i32 %322, i32* %324, align 8
  %325 = load i8*, i8** %6, align 8
  %326 = load i32, i32* %10, align 4
  %327 = add i32 %326, 1
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds i8, i8* %325, i64 %328
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %333 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %332, i32 0, i32 12
  store i32 %331, i32* %333, align 4
  store i32 1, i32* %5, align 4
  br label %917

334:                                              ; preds = %206
  %335 = load i32, i32* @FOUND_SCTP, align 4
  %336 = call i32 @VERIFY_REMAINING(i32 12, i32 %335)
  %337 = load i8*, i8** %6, align 8
  %338 = load i32, i32* %10, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i8, i8* %337, i64 %339
  %341 = getelementptr inbounds i8, i8* %340, i64 0
  %342 = call i32 @ex16be(i8* %341)
  %343 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %344 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %343, i32 0, i32 11
  store i32 %342, i32* %344, align 8
  %345 = load i8*, i8** %6, align 8
  %346 = load i32, i32* %10, align 4
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds i8, i8* %345, i64 %347
  %349 = getelementptr inbounds i8, i8* %348, i64 2
  %350 = call i32 @ex16be(i8* %349)
  %351 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %352 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %351, i32 0, i32 12
  store i32 %350, i32* %352, align 4
  %353 = load i32, i32* %10, align 4
  %354 = add i32 %353, 12
  %355 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %356 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %355, i32 0, i32 13
  store i32 %354, i32* %356, align 8
  %357 = load i32, i32* %7, align 4
  %358 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %359 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %358, i32 0, i32 13
  %360 = load i32, i32* %359, align 8
  %361 = sub i32 %357, %360
  %362 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %363 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %362, i32 0, i32 14
  store i32 %361, i32* %363, align 4
  %364 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %365 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %364, i32 0, i32 14
  %366 = load i32, i32* %365, align 4
  %367 = icmp ult i32 %366, 2000
  %368 = zext i1 %367 to i32
  %369 = call i32 @assert(i32 %368)
  store i32 1, i32* %5, align 4
  br label %917

370:                                              ; preds = %311
  %371 = load i32, i32* @FOUND_DNS, align 4
  %372 = call i32 @VERIFY_REMAINING(i32 8, i32 %371)
  store i32 1, i32* %5, align 4
  br label %917

373:                                              ; preds = %785
  %374 = load i32, i32* @FOUND_IPV6, align 4
  %375 = call i32 @VERIFY_REMAINING(i32 40, i32 %374)
  %376 = load i8*, i8** %6, align 8
  %377 = load i32, i32* %10, align 4
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds i8, i8* %376, i64 %378
  %380 = load i8, i8* %379, align 1
  %381 = zext i8 %380 to i32
  %382 = ashr i32 %381, 4
  %383 = icmp ne i32 %382, 6
  br i1 %383, label %384, label %385

384:                                              ; preds = %373
  store i32 0, i32* %5, align 4
  br label %917

385:                                              ; preds = %373
  %386 = load i8*, i8** %6, align 8
  %387 = load i32, i32* %10, align 4
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds i8, i8* %386, i64 %388
  %390 = getelementptr inbounds i8, i8* %389, i64 4
  %391 = call i32 @ex16be(i8* %390)
  store i32 %391, i32* %17, align 4
  %392 = load i32, i32* %17, align 4
  %393 = add i32 40, %392
  %394 = load i32, i32* @FOUND_IPV6, align 4
  %395 = call i32 @VERIFY_REMAINING(i32 %393, i32 %394)
  %396 = load i32, i32* %7, align 4
  %397 = load i32, i32* %10, align 4
  %398 = add i32 %397, 40
  %399 = load i32, i32* %17, align 4
  %400 = add i32 %398, %399
  %401 = icmp ugt i32 %396, %400
  br i1 %401, label %402, label %407

402:                                              ; preds = %385
  %403 = load i32, i32* %10, align 4
  %404 = add i32 %403, 40
  %405 = load i32, i32* %17, align 4
  %406 = add i32 %404, %405
  store i32 %406, i32* %7, align 4
  br label %407

407:                                              ; preds = %402, %385
  %408 = load i8*, i8** %6, align 8
  %409 = load i32, i32* %10, align 4
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds i8, i8* %408, i64 %410
  %412 = load i8, i8* %411, align 1
  %413 = zext i8 %412 to i32
  %414 = ashr i32 %413, 4
  %415 = and i32 %414, 15
  %416 = trunc i32 %415 to i8
  %417 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %418 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %417, i32 0, i32 5
  store i8 %416, i8* %418, align 4
  %419 = load i8*, i8** %6, align 8
  %420 = load i32, i32* %10, align 4
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds i8, i8* %419, i64 %421
  %423 = getelementptr inbounds i8, i8* %422, i64 8
  %424 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %425 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %424, i32 0, i32 6
  store i8* %423, i8** %425, align 8
  %426 = load i8*, i8** %6, align 8
  %427 = load i32, i32* %10, align 4
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds i8, i8* %426, i64 %428
  %430 = getelementptr inbounds i8, i8* %429, i64 8
  %431 = getelementptr inbounds i8, i8* %430, i64 16
  %432 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %433 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %432, i32 0, i32 7
  store i8* %431, i8** %433, align 8
  %434 = load i8*, i8** %6, align 8
  %435 = load i32, i32* %10, align 4
  %436 = add i32 %435, 6
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds i8, i8* %434, i64 %437
  %439 = load i8, i8* %438, align 1
  %440 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %441 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %440, i32 0, i32 9
  store i8 %439, i8* %441, align 1
  %442 = load i32, i32* %10, align 4
  %443 = add i32 %442, 40
  store i32 %443, i32* %10, align 4
  br label %444

444:                                              ; preds = %455, %407
  %445 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %446 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %445, i32 0, i32 9
  %447 = load i8, i8* %446, align 1
  %448 = zext i8 %447 to i32
  switch i32 %448, label %454 [
    i32 0, label %449
    i32 6, label %450
    i32 17, label %451
    i32 58, label %452
    i32 44, label %453
  ]

449:                                              ; preds = %444
  br label %455

450:                                              ; preds = %444
  br label %210

451:                                              ; preds = %444
  br label %265

452:                                              ; preds = %444
  br label %479

453:                                              ; preds = %444
  store i32 0, i32* %5, align 4
  br label %917

454:                                              ; preds = %444
  store i32 0, i32* %5, align 4
  br label %917

455:                                              ; preds = %449
  %456 = load i32, i32* @FOUND_IPV6_HOP, align 4
  %457 = call i32 @VERIFY_REMAINING(i32 8, i32 %456)
  %458 = load i8*, i8** %6, align 8
  %459 = load i32, i32* %10, align 4
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds i8, i8* %458, i64 %460
  %462 = load i8, i8* %461, align 1
  %463 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %464 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %463, i32 0, i32 9
  store i8 %462, i8* %464, align 1
  %465 = load i8*, i8** %6, align 8
  %466 = load i32, i32* %10, align 4
  %467 = add i32 %466, 1
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds i8, i8* %465, i64 %468
  %470 = load i8, i8* %469, align 1
  %471 = zext i8 %470 to i32
  %472 = add nsw i32 %471, 8
  store i32 %472, i32* %18, align 4
  %473 = load i32, i32* %18, align 4
  %474 = load i32, i32* @FOUND_IPV6_HOP, align 4
  %475 = call i32 @VERIFY_REMAINING(i32 %473, i32 %474)
  %476 = load i32, i32* %18, align 4
  %477 = load i32, i32* %10, align 4
  %478 = add i32 %477, %476
  store i32 %478, i32* %10, align 4
  br label %444

479:                                              ; preds = %452
  store i32 1, i32* %5, align 4
  br label %917

480:                                              ; preds = %786
  %481 = load i32, i32* @FOUND_8021Q, align 4
  %482 = call i32 @VERIFY_REMAINING(i32 4, i32 %481)
  %483 = load i8*, i8** %6, align 8
  %484 = load i32, i32* %10, align 4
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds i8, i8* %483, i64 %485
  %487 = getelementptr inbounds i8, i8* %486, i64 2
  %488 = call i32 @ex16be(i8* %487)
  store i32 %488, i32* %11, align 4
  %489 = load i32, i32* %10, align 4
  %490 = add i32 %489, 4
  store i32 %490, i32* %10, align 4
  br label %781

491:                                              ; preds = %787
  br label %492

492:                                              ; preds = %510, %491
  %493 = load i32, i32* %10, align 4
  %494 = add i32 %493, 4
  %495 = load i32, i32* %7, align 4
  %496 = icmp ult i32 %494, %495
  br i1 %496, label %497, label %508

497:                                              ; preds = %492
  %498 = load i8*, i8** %6, align 8
  %499 = load i32, i32* %10, align 4
  %500 = add i32 %499, 2
  %501 = zext i32 %500 to i64
  %502 = getelementptr inbounds i8, i8* %498, i64 %501
  %503 = load i8, i8* %502, align 1
  %504 = zext i8 %503 to i32
  %505 = and i32 %504, 1
  %506 = icmp ne i32 %505, 0
  %507 = xor i1 %506, true
  br label %508

508:                                              ; preds = %497, %492
  %509 = phi i1 [ false, %492 ], [ %507, %497 ]
  br i1 %509, label %510, label %513

510:                                              ; preds = %508
  %511 = load i32, i32* %10, align 4
  %512 = add i32 %511, 4
  store i32 %512, i32* %10, align 4
  br label %492

513:                                              ; preds = %508
  %514 = load i32, i32* @FOUND_MPLS, align 4
  %515 = call i32 @VERIFY_REMAINING(i32 4, i32 %514)
  %516 = load i32, i32* %10, align 4
  %517 = add i32 %516, 4
  store i32 %517, i32* %10, align 4
  %518 = load i8*, i8** %6, align 8
  %519 = load i32, i32* %10, align 4
  %520 = sub i32 %519, 4
  %521 = add i32 %520, 2
  %522 = zext i32 %521 to i64
  %523 = getelementptr inbounds i8, i8* %518, i64 %522
  %524 = load i8, i8* %523, align 1
  %525 = zext i8 %524 to i32
  %526 = and i32 %525, 1
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %513
  br label %74

529:                                              ; preds = %513
  store i32 0, i32* %5, align 4
  br label %917

530:                                              ; preds = %657
  %531 = load i32, i32* @FOUND_WIFI_DATA, align 4
  %532 = call i32 @VERIFY_REMAINING(i32 24, i32 %531)
  %533 = load i8*, i8** %6, align 8
  %534 = load i32, i32* %10, align 4
  %535 = zext i32 %534 to i64
  %536 = getelementptr inbounds i8, i8* %533, i64 %535
  %537 = load i8, i8* %536, align 1
  %538 = zext i8 %537 to i32
  store i32 %538, i32* %19, align 4
  %539 = load i8*, i8** %6, align 8
  %540 = load i32, i32* %10, align 4
  %541 = add i32 %540, 1
  %542 = zext i32 %541 to i64
  %543 = getelementptr inbounds i8, i8* %539, i64 %542
  %544 = load i8, i8* %543, align 1
  %545 = zext i8 %544 to i32
  %546 = and i32 %545, 3
  switch i32 %546, label %610 [
    i32 0, label %547
    i32 2, label %547
    i32 1, label %569
    i32 3, label %591
  ]

547:                                              ; preds = %530, %530
  %548 = load i8*, i8** %6, align 8
  %549 = load i32, i32* %10, align 4
  %550 = zext i32 %549 to i64
  %551 = getelementptr inbounds i8, i8* %548, i64 %550
  %552 = getelementptr inbounds i8, i8* %551, i64 4
  %553 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %554 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %553, i32 0, i32 2
  store i8* %552, i8** %554, align 8
  %555 = load i8*, i8** %6, align 8
  %556 = load i32, i32* %10, align 4
  %557 = zext i32 %556 to i64
  %558 = getelementptr inbounds i8, i8* %555, i64 %557
  %559 = getelementptr inbounds i8, i8* %558, i64 10
  %560 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %561 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %560, i32 0, i32 16
  store i8* %559, i8** %561, align 8
  %562 = load i8*, i8** %6, align 8
  %563 = load i32, i32* %10, align 4
  %564 = zext i32 %563 to i64
  %565 = getelementptr inbounds i8, i8* %562, i64 %564
  %566 = getelementptr inbounds i8, i8* %565, i64 16
  %567 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %568 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %567, i32 0, i32 3
  store i8* %566, i8** %568, align 8
  br label %610

569:                                              ; preds = %530
  %570 = load i8*, i8** %6, align 8
  %571 = load i32, i32* %10, align 4
  %572 = zext i32 %571 to i64
  %573 = getelementptr inbounds i8, i8* %570, i64 %572
  %574 = getelementptr inbounds i8, i8* %573, i64 4
  %575 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %576 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %575, i32 0, i32 16
  store i8* %574, i8** %576, align 8
  %577 = load i8*, i8** %6, align 8
  %578 = load i32, i32* %10, align 4
  %579 = zext i32 %578 to i64
  %580 = getelementptr inbounds i8, i8* %577, i64 %579
  %581 = getelementptr inbounds i8, i8* %580, i64 10
  %582 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %583 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %582, i32 0, i32 3
  store i8* %581, i8** %583, align 8
  %584 = load i8*, i8** %6, align 8
  %585 = load i32, i32* %10, align 4
  %586 = zext i32 %585 to i64
  %587 = getelementptr inbounds i8, i8* %584, i64 %586
  %588 = getelementptr inbounds i8, i8* %587, i64 16
  %589 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %590 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %589, i32 0, i32 2
  store i8* %588, i8** %590, align 8
  br label %610

591:                                              ; preds = %530
  %592 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %593 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %592, i32 0, i32 16
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %593, align 8
  %594 = load i8*, i8** %6, align 8
  %595 = load i32, i32* %10, align 4
  %596 = zext i32 %595 to i64
  %597 = getelementptr inbounds i8, i8* %594, i64 %596
  %598 = getelementptr inbounds i8, i8* %597, i64 16
  %599 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %600 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %599, i32 0, i32 2
  store i8* %598, i8** %600, align 8
  %601 = load i8*, i8** %6, align 8
  %602 = load i32, i32* %10, align 4
  %603 = zext i32 %602 to i64
  %604 = getelementptr inbounds i8, i8* %601, i64 %603
  %605 = getelementptr inbounds i8, i8* %604, i64 24
  %606 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %607 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %606, i32 0, i32 3
  store i8* %605, i8** %607, align 8
  %608 = load i32, i32* %10, align 4
  %609 = add i32 %608, 6
  store i32 %609, i32* %10, align 4
  br label %610

610:                                              ; preds = %530, %591, %569, %547
  %611 = load i8*, i8** %6, align 8
  %612 = load i32, i32* %10, align 4
  %613 = add i32 %612, 1
  %614 = zext i32 %613 to i64
  %615 = getelementptr inbounds i8, i8* %611, i64 %614
  %616 = load i8, i8* %615, align 1
  %617 = zext i8 %616 to i32
  %618 = and i32 %617, 4
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %630, label %620

620:                                              ; preds = %610
  %621 = load i8*, i8** %6, align 8
  %622 = load i32, i32* %10, align 4
  %623 = add i32 %622, 22
  %624 = zext i32 %623 to i64
  %625 = getelementptr inbounds i8, i8* %621, i64 %624
  %626 = load i8, i8* %625, align 1
  %627 = zext i8 %626 to i32
  %628 = and i32 %627, 15
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %631

630:                                              ; preds = %620, %610
  store i32 0, i32* %5, align 4
  br label %917

631:                                              ; preds = %620
  %632 = load i32, i32* %10, align 4
  %633 = add i32 %632, 24
  store i32 %633, i32* %10, align 4
  %634 = load i32, i32* %19, align 4
  %635 = icmp eq i32 %634, 136
  br i1 %635, label %636, label %639

636:                                              ; preds = %631
  %637 = load i32, i32* %10, align 4
  %638 = add i32 %637, 2
  store i32 %638, i32* %10, align 4
  br label %639

639:                                              ; preds = %636, %631
  br label %747

640:                                              ; preds = %793, %740, %715
  %641 = load i32, i32* @FOUND_WIFI, align 4
  %642 = call i32 @VERIFY_REMAINING(i32 2, i32 %641)
  %643 = load i8*, i8** %6, align 8
  %644 = load i32, i32* %10, align 4
  %645 = zext i32 %644 to i64
  %646 = getelementptr inbounds i8, i8* %643, i64 %645
  %647 = load i8, i8* %646, align 1
  %648 = zext i8 %647 to i32
  switch i32 %648, label %658 [
    i32 8, label %649
    i32 136, label %649
  ]

649:                                              ; preds = %640, %640
  %650 = load i8*, i8** %6, align 8
  %651 = getelementptr inbounds i8, i8* %650, i64 1
  %652 = load i8, i8* %651, align 1
  %653 = zext i8 %652 to i32
  %654 = and i32 %653, 64
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %657

656:                                              ; preds = %649
  store i32 0, i32* %5, align 4
  br label %917

657:                                              ; preds = %649
  br label %530

658:                                              ; preds = %640
  store i32 0, i32* %5, align 4
  br label %917

659:                                              ; preds = %796
  %660 = load i32, i32* @FOUND_RADIOTAP, align 4
  %661 = call i32 @VERIFY_REMAINING(i32 8, i32 %660)
  %662 = load i8*, i8** %6, align 8
  %663 = load i32, i32* %10, align 4
  %664 = zext i32 %663 to i64
  %665 = getelementptr inbounds i8, i8* %662, i64 %664
  %666 = load i8, i8* %665, align 1
  %667 = zext i8 %666 to i32
  %668 = icmp ne i32 %667, 0
  br i1 %668, label %669, label %670

669:                                              ; preds = %659
  store i32 0, i32* %5, align 4
  br label %917

670:                                              ; preds = %659
  %671 = load i8*, i8** %6, align 8
  %672 = load i32, i32* %10, align 4
  %673 = zext i32 %672 to i64
  %674 = getelementptr inbounds i8, i8* %671, i64 %673
  %675 = getelementptr inbounds i8, i8* %674, i64 2
  %676 = call i32 @ex16le(i8* %675)
  store i32 %676, i32* %20, align 4
  %677 = load i8*, i8** %6, align 8
  %678 = load i32, i32* %10, align 4
  %679 = zext i32 %678 to i64
  %680 = getelementptr inbounds i8, i8* %677, i64 %679
  %681 = getelementptr inbounds i8, i8* %680, i64 4
  %682 = call i32 @ex32le(i8* %681)
  store i32 %682, i32* %21, align 4
  %683 = load i32, i32* %20, align 4
  %684 = load i32, i32* @FOUND_RADIOTAP, align 4
  %685 = call i32 @VERIFY_REMAINING(i32 %683, i32 %684)
  %686 = load i32, i32* %21, align 4
  %687 = and i32 %686, 16384
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %689, label %715

689:                                              ; preds = %670
  %690 = load i8*, i8** %6, align 8
  %691 = load i32, i32* %10, align 4
  %692 = zext i32 %691 to i64
  %693 = getelementptr inbounds i8, i8* %690, i64 %692
  %694 = load i32, i32* %20, align 4
  %695 = zext i32 %694 to i64
  %696 = getelementptr inbounds i8, i8* %693, i64 %695
  %697 = getelementptr inbounds i8, i8* %696, i64 -4
  %698 = call i32 @ex32le(i8* %697)
  store i32 %698, i32* %22, align 4
  %699 = load i8*, i8** %6, align 8
  %700 = load i32, i32* %7, align 4
  %701 = zext i32 %700 to i64
  %702 = getelementptr inbounds i8, i8* %699, i64 %701
  %703 = getelementptr inbounds i8, i8* %702, i64 -4
  %704 = call i32 @ex32le(i8* %703)
  store i32 %704, i32* %23, align 4
  %705 = load i32, i32* %22, align 4
  %706 = load i32, i32* %23, align 4
  %707 = icmp eq i32 %705, %706
  br i1 %707, label %708, label %711

708:                                              ; preds = %689
  %709 = load i32, i32* %7, align 4
  %710 = sub i32 %709, 4
  store i32 %710, i32* %7, align 4
  br label %711

711:                                              ; preds = %708, %689
  %712 = load i32, i32* %20, align 4
  %713 = load i32, i32* @FOUND_RADIOTAP, align 4
  %714 = call i32 @VERIFY_REMAINING(i32 %712, i32 %713)
  br label %715

715:                                              ; preds = %711, %670
  %716 = load i32, i32* %20, align 4
  %717 = load i32, i32* %10, align 4
  %718 = add i32 %717, %716
  store i32 %718, i32* %10, align 4
  br label %640

719:                                              ; preds = %795
  %720 = load i32, i32* @FOUND_PRISM, align 4
  %721 = call i32 @VERIFY_REMAINING(i32 8, i32 %720)
  %722 = load i8*, i8** %6, align 8
  %723 = load i32, i32* %10, align 4
  %724 = zext i32 %723 to i64
  %725 = getelementptr inbounds i8, i8* %722, i64 %724
  %726 = getelementptr inbounds i8, i8* %725, i64 0
  %727 = call i32 @ex32le(i8* %726)
  %728 = icmp ne i32 %727, 68
  br i1 %728, label %729, label %730

729:                                              ; preds = %719
  store i32 0, i32* %5, align 4
  br label %917

730:                                              ; preds = %719
  %731 = load i8*, i8** %6, align 8
  %732 = load i32, i32* %10, align 4
  %733 = zext i32 %732 to i64
  %734 = getelementptr inbounds i8, i8* %731, i64 %733
  %735 = getelementptr inbounds i8, i8* %734, i64 4
  %736 = call i32 @ex32le(i8* %735)
  store i32 %736, i32* %24, align 4
  %737 = load i32, i32* %24, align 4
  %738 = icmp ugt i32 %737, 1048575
  br i1 %738, label %739, label %740

739:                                              ; preds = %730
  store i32 0, i32* %5, align 4
  br label %917

740:                                              ; preds = %730
  %741 = load i32, i32* %24, align 4
  %742 = load i32, i32* @FOUND_PRISM, align 4
  %743 = call i32 @VERIFY_REMAINING(i32 %741, i32 %742)
  %744 = load i32, i32* %24, align 4
  %745 = load i32, i32* %10, align 4
  %746 = add i32 %745, %744
  store i32 %746, i32* %10, align 4
  br label %640

747:                                              ; preds = %755, %639, %68
  %748 = load i32, i32* @FOUND_LLC, align 4
  %749 = call i32 @VERIFY_REMAINING(i32 3, i32 %748)
  %750 = load i8*, i8** %6, align 8
  %751 = load i32, i32* %10, align 4
  %752 = zext i32 %751 to i64
  %753 = getelementptr inbounds i8, i8* %750, i64 %752
  %754 = call i32 @ex24be(i8* %753)
  switch i32 %754, label %758 [
    i32 170, label %755
    i32 11184643, label %759
  ]

755:                                              ; preds = %747
  %756 = load i32, i32* %10, align 4
  %757 = add i32 %756, 2
  store i32 %757, i32* %10, align 4
  br label %747

758:                                              ; preds = %747
  store i32 0, i32* %5, align 4
  br label %917

759:                                              ; preds = %747
  br label %760

760:                                              ; preds = %759
  %761 = load i32, i32* %10, align 4
  %762 = add i32 %761, 3
  store i32 %762, i32* %10, align 4
  %763 = load i32, i32* @FOUND_LLC, align 4
  %764 = call i32 @VERIFY_REMAINING(i32 5, i32 %763)
  %765 = load i8*, i8** %6, align 8
  %766 = load i32, i32* %10, align 4
  %767 = zext i32 %766 to i64
  %768 = getelementptr inbounds i8, i8* %765, i64 %767
  %769 = call i32 @ex24be(i8* %768)
  store i32 %769, i32* %25, align 4
  %770 = load i8*, i8** %6, align 8
  %771 = load i32, i32* %10, align 4
  %772 = zext i32 %771 to i64
  %773 = getelementptr inbounds i8, i8* %770, i64 %772
  %774 = getelementptr inbounds i8, i8* %773, i64 3
  %775 = call i32 @ex16be(i8* %774)
  store i32 %775, i32* %11, align 4
  %776 = load i32, i32* %10, align 4
  %777 = add i32 %776, 5
  store i32 %777, i32* %10, align 4
  %778 = load i32, i32* %25, align 4
  switch i32 %778, label %780 [
    i32 0, label %779
  ]

779:                                              ; preds = %760
  br label %781

780:                                              ; preds = %760
  store i32 0, i32* %5, align 4
  br label %917

781:                                              ; preds = %798, %779, %480, %72
  %782 = load i32, i32* %11, align 4
  switch i32 %782, label %788 [
    i32 2048, label %783
    i32 2054, label %784
    i32 34525, label %785
    i32 33024, label %786
    i32 34887, label %787
  ]

783:                                              ; preds = %781
  br label %74

784:                                              ; preds = %781
  br label %839

785:                                              ; preds = %781
  br label %373

786:                                              ; preds = %781
  br label %480

787:                                              ; preds = %781
  br label %491

788:                                              ; preds = %781
  store i32 0, i32* %5, align 4
  br label %917

789:                                              ; preds = %39
  %790 = load i32, i32* %8, align 4
  switch i32 %790, label %797 [
    i32 1, label %791
    i32 12, label %792
    i32 105, label %793
    i32 113, label %794
    i32 119, label %795
    i32 127, label %796
  ]

791:                                              ; preds = %789
  br label %41

792:                                              ; preds = %789
  br label %74

793:                                              ; preds = %789
  br label %640

794:                                              ; preds = %789
  br label %798

795:                                              ; preds = %789
  br label %719

796:                                              ; preds = %789
  br label %659

797:                                              ; preds = %789
  store i32 0, i32* %5, align 4
  br label %917

798:                                              ; preds = %794
  %799 = load i32, i32* @FOUND_SLL, align 4
  %800 = call i32 @VERIFY_REMAINING(i32 16, i32 %799)
  %801 = load i8*, i8** %6, align 8
  %802 = load i32, i32* %10, align 4
  %803 = zext i32 %802 to i64
  %804 = getelementptr inbounds i8, i8* %801, i64 %803
  %805 = getelementptr inbounds i8, i8* %804, i64 0
  %806 = call i32 @ex16be(i8* %805)
  %807 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0
  store i32 %806, i32* %807, align 4
  %808 = load i8*, i8** %6, align 8
  %809 = load i32, i32* %10, align 4
  %810 = zext i32 %809 to i64
  %811 = getelementptr inbounds i8, i8* %808, i64 %810
  %812 = getelementptr inbounds i8, i8* %811, i64 2
  %813 = call i32 @ex16be(i8* %812)
  %814 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 1
  store i32 %813, i32* %814, align 4
  %815 = load i8*, i8** %6, align 8
  %816 = load i32, i32* %10, align 4
  %817 = zext i32 %816 to i64
  %818 = getelementptr inbounds i8, i8* %815, i64 %817
  %819 = getelementptr inbounds i8, i8* %818, i64 4
  %820 = call i32 @ex16be(i8* %819)
  %821 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 2
  store i32 %820, i32* %821, align 4
  %822 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 3
  %823 = getelementptr inbounds [8 x i8], [8 x i8]* %822, i64 0, i64 0
  %824 = load i8*, i8** %6, align 8
  %825 = load i32, i32* %10, align 4
  %826 = zext i32 %825 to i64
  %827 = getelementptr inbounds i8, i8* %824, i64 %826
  %828 = getelementptr inbounds i8, i8* %827, i64 6
  %829 = call i32 @memcpy(i8* %823, i8* %828, i32 8)
  %830 = load i8*, i8** %6, align 8
  %831 = load i32, i32* %10, align 4
  %832 = zext i32 %831 to i64
  %833 = getelementptr inbounds i8, i8* %830, i64 %832
  %834 = getelementptr inbounds i8, i8* %833, i64 14
  %835 = call i32 @ex16be(i8* %834)
  %836 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 4
  store i32 %835, i32* %836, align 4
  %837 = load i32, i32* %10, align 4
  %838 = add i32 %837, 16
  store i32 %838, i32* %10, align 4
  br label %781

839:                                              ; preds = %784
  %840 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %841 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %840, i32 0, i32 5
  store i8 0, i8* %841, align 4
  %842 = load i32, i32* %10, align 4
  %843 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %844 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %843, i32 0, i32 4
  store i32 %842, i32* %844, align 8
  %845 = load i32, i32* @FOUND_ARP, align 4
  %846 = call i32 @VERIFY_REMAINING(i32 8, i32 %845)
  %847 = load i8*, i8** %6, align 8
  %848 = load i32, i32* %10, align 4
  %849 = add i32 %848, 4
  %850 = zext i32 %849 to i64
  %851 = getelementptr inbounds i8, i8* %847, i64 %850
  %852 = load i8, i8* %851, align 1
  %853 = zext i8 %852 to i32
  store i32 %853, i32* %27, align 4
  %854 = load i8*, i8** %6, align 8
  %855 = load i32, i32* %10, align 4
  %856 = add i32 %855, 5
  %857 = zext i32 %856 to i64
  %858 = getelementptr inbounds i8, i8* %854, i64 %857
  %859 = load i8, i8* %858, align 1
  %860 = zext i8 %859 to i32
  store i32 %860, i32* %28, align 4
  %861 = load i8*, i8** %6, align 8
  %862 = load i32, i32* %10, align 4
  %863 = add i32 %862, 6
  %864 = zext i32 %863 to i64
  %865 = getelementptr inbounds i8, i8* %861, i64 %864
  %866 = load i8, i8* %865, align 1
  %867 = zext i8 %866 to i32
  %868 = shl i32 %867, 8
  %869 = load i8*, i8** %6, align 8
  %870 = load i32, i32* %10, align 4
  %871 = add i32 %870, 7
  %872 = zext i32 %871 to i64
  %873 = getelementptr inbounds i8, i8* %869, i64 %872
  %874 = load i8, i8* %873, align 1
  %875 = zext i8 %874 to i32
  %876 = or i32 %868, %875
  store i32 %876, i32* %29, align 4
  %877 = load i32, i32* %10, align 4
  %878 = add i32 %877, 8
  store i32 %878, i32* %10, align 4
  %879 = load i32, i32* %27, align 4
  %880 = mul i32 2, %879
  %881 = load i32, i32* %28, align 4
  %882 = mul i32 2, %881
  %883 = add i32 %880, %882
  %884 = load i32, i32* @FOUND_ARP, align 4
  %885 = call i32 @VERIFY_REMAINING(i32 %883, i32 %884)
  %886 = load i8*, i8** %6, align 8
  %887 = load i32, i32* %10, align 4
  %888 = zext i32 %887 to i64
  %889 = getelementptr inbounds i8, i8* %886, i64 %888
  %890 = load i32, i32* %27, align 4
  %891 = zext i32 %890 to i64
  %892 = getelementptr inbounds i8, i8* %889, i64 %891
  %893 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %894 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %893, i32 0, i32 6
  store i8* %892, i8** %894, align 8
  %895 = load i8*, i8** %6, align 8
  %896 = load i32, i32* %10, align 4
  %897 = zext i32 %896 to i64
  %898 = getelementptr inbounds i8, i8* %895, i64 %897
  %899 = load i32, i32* %27, align 4
  %900 = mul i32 2, %899
  %901 = zext i32 %900 to i64
  %902 = getelementptr inbounds i8, i8* %898, i64 %901
  %903 = load i32, i32* %28, align 4
  %904 = zext i32 %903 to i64
  %905 = getelementptr inbounds i8, i8* %902, i64 %904
  %906 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %907 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %906, i32 0, i32 7
  store i8* %905, i8** %907, align 8
  %908 = load i32, i32* %29, align 4
  %909 = trunc i32 %908 to i8
  %910 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %911 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %910, i32 0, i32 9
  store i8 %909, i8* %911, align 1
  %912 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %913 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %912, i32 0, i32 4
  %914 = load i32, i32* %913, align 8
  %915 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %9, align 8
  %916 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %915, i32 0, i32 1
  store i32 %914, i32* %916, align 4
  store i32 1, i32* %5, align 4
  br label %917

917:                                              ; preds = %839, %797, %788, %780, %758, %739, %729, %669, %658, %656, %630, %529, %479, %454, %453, %384, %370, %334, %313, %312, %210, %207, %191, %137, %123, %88
  %918 = load i32, i32* %5, align 4
  ret i32 %918
}

declare dso_local i32 @VERIFY_REMAINING(i32, i32) #1

declare dso_local i32 @ex16be(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ex16le(i8*) #1

declare dso_local i32 @ex32le(i8*) #1

declare dso_local i32 @ex24be(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
