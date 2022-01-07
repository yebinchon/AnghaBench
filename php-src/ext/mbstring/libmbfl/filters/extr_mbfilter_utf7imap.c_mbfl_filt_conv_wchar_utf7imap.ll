; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf7imap.c_mbfl_filt_conv_wchar_utf7imap.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf7imap.c_mbfl_filt_conv_wchar_utf7imap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 (i32, i32)*, {}* }

@MBFL_WCSPLANE_UCS2MAX = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_SUPMIN = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_SUPMAX = common dso_local global i32 0, align 4
@mbfl_utf7imap_base64_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_utf7imap(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 38
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %70

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 32
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %15, 126
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  store i32 2, i32* %6, align 4
  br label %69

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MBFL_WCSPLANE_UCS2MAX, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %68

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @MBFL_WCSPLANE_SUPMIN, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MBFL_WCSPLANE_SUPMAX, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %38, 10
  %40 = sub nsw i32 %39, 64
  %41 = or i32 %40, 55296
  store i32 %41, i32* %7, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = bitcast {}** %43 to i32 (i32, %struct.TYPE_6__*)**
  %45 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = call i32 %45(i32 %46, %struct.TYPE_6__* %47)
  %49 = call i32 @CK(i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, 1023
  %52 = or i32 %51, 56320
  store i32 %52, i32* %7, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  %55 = bitcast {}** %54 to i32 (i32, %struct.TYPE_6__*)**
  %56 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = call i32 %56(i32 %57, %struct.TYPE_6__* %58)
  %60 = call i32 @CK(i32 %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %3, align 4
  br label %411

62:                                               ; preds = %33, %29
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = call i32 @mbfl_filt_conv_illegal_output(i32 %63, %struct.TYPE_6__* %64)
  %66 = call i32 @CK(i32 %65)
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %3, align 4
  br label %411

68:                                               ; preds = %28
  br label %69

69:                                               ; preds = %68, %20
  br label %70

70:                                               ; preds = %69, %10
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %406 [
    i32 0, label %74
    i32 1, label %114
    i32 2, label %208
    i32 3, label %317
  ]

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %74
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32 (i32, i32)*, i32 (i32, i32)** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 %80(i32 %81, i32 %84)
  %86 = call i32 @CK(i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %98

89:                                               ; preds = %77
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load i32 (i32, i32)*, i32 (i32, i32)** %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 %92(i32 45, i32 %95)
  %97 = call i32 @CK(i32 %96)
  br label %98

98:                                               ; preds = %89, %77
  br label %113

99:                                               ; preds = %74
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = load i32 (i32, i32)*, i32 (i32, i32)** %101, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 %102(i32 38, i32 %105)
  %107 = call i32 @CK(i32 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %99, %98
  br label %409

114:                                              ; preds = %70
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %7, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32 (i32, i32)*, i32 (i32, i32)** %119, align 8
  %121 = load i32*, i32** @mbfl_utf7imap_base64_table, align 8
  %122 = load i32, i32* %7, align 4
  %123 = ashr i32 %122, 10
  %124 = and i32 %123, 63
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 %120(i32 %127, i32 %130)
  %132 = call i32 @CK(i32 %131)
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  %135 = load i32 (i32, i32)*, i32 (i32, i32)** %134, align 8
  %136 = load i32*, i32** @mbfl_utf7imap_base64_table, align 8
  %137 = load i32, i32* %7, align 4
  %138 = ashr i32 %137, 4
  %139 = and i32 %138, 63
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 %135(i32 %142, i32 %145)
  %147 = call i32 @CK(i32 %146)
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %197

150:                                              ; preds = %114
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 3
  %153 = load i32 (i32, i32)*, i32 (i32, i32)** %152, align 8
  %154 = load i32*, i32** @mbfl_utf7imap_base64_table, align 8
  %155 = load i32, i32* %7, align 4
  %156 = shl i32 %155, 2
  %157 = and i32 %156, 60
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %154, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 %153(i32 %160, i32 %163)
  %165 = call i32 @CK(i32 %164)
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  %168 = load i32 (i32, i32)*, i32 (i32, i32)** %167, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 %168(i32 45, i32 %171)
  %173 = call i32 @CK(i32 %172)
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 3
  %176 = load i32 (i32, i32)*, i32 (i32, i32)** %175, align 8
  %177 = load i32, i32* %4, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 %176(i32 %177, i32 %180)
  %182 = call i32 @CK(i32 %181)
  %183 = load i32, i32* %6, align 4
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %194

185:                                              ; preds = %150
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  %188 = load i32 (i32, i32)*, i32 (i32, i32)** %187, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 %188(i32 45, i32 %191)
  %193 = call i32 @CK(i32 %192)
  br label %194

194:                                              ; preds = %185, %150
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  store i32 0, i32* %196, align 8
  br label %207

197:                                              ; preds = %114
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  store i32 2, i32* %199, align 8
  %200 = load i32, i32* %7, align 4
  %201 = and i32 %200, 15
  %202 = shl i32 %201, 16
  %203 = load i32, i32* %4, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %197, %194
  br label %409

208:                                              ; preds = %70
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %7, align 4
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 3
  %214 = load i32 (i32, i32)*, i32 (i32, i32)** %213, align 8
  %215 = load i32*, i32** @mbfl_utf7imap_base64_table, align 8
  %216 = load i32, i32* %7, align 4
  %217 = ashr i32 %216, 14
  %218 = and i32 %217, 63
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %215, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = call i32 %214(i32 %221, i32 %224)
  %226 = call i32 @CK(i32 %225)
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 3
  %229 = load i32 (i32, i32)*, i32 (i32, i32)** %228, align 8
  %230 = load i32*, i32** @mbfl_utf7imap_base64_table, align 8
  %231 = load i32, i32* %7, align 4
  %232 = ashr i32 %231, 8
  %233 = and i32 %232, 63
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %230, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = call i32 %229(i32 %236, i32 %239)
  %241 = call i32 @CK(i32 %240)
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 3
  %244 = load i32 (i32, i32)*, i32 (i32, i32)** %243, align 8
  %245 = load i32*, i32** @mbfl_utf7imap_base64_table, align 8
  %246 = load i32, i32* %7, align 4
  %247 = ashr i32 %246, 2
  %248 = and i32 %247, 63
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %245, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i32 %244(i32 %251, i32 %254)
  %256 = call i32 @CK(i32 %255)
  %257 = load i32, i32* %6, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %306

259:                                              ; preds = %208
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 3
  %262 = load i32 (i32, i32)*, i32 (i32, i32)** %261, align 8
  %263 = load i32*, i32** @mbfl_utf7imap_base64_table, align 8
  %264 = load i32, i32* %7, align 4
  %265 = shl i32 %264, 4
  %266 = and i32 %265, 48
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %263, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = call i32 %262(i32 %269, i32 %272)
  %274 = call i32 @CK(i32 %273)
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 3
  %277 = load i32 (i32, i32)*, i32 (i32, i32)** %276, align 8
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = call i32 %277(i32 45, i32 %280)
  %282 = call i32 @CK(i32 %281)
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 3
  %285 = load i32 (i32, i32)*, i32 (i32, i32)** %284, align 8
  %286 = load i32, i32* %4, align 4
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = call i32 %285(i32 %286, i32 %289)
  %291 = call i32 @CK(i32 %290)
  %292 = load i32, i32* %6, align 4
  %293 = icmp eq i32 %292, 1
  br i1 %293, label %294, label %303

294:                                              ; preds = %259
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 3
  %297 = load i32 (i32, i32)*, i32 (i32, i32)** %296, align 8
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = call i32 %297(i32 45, i32 %300)
  %302 = call i32 @CK(i32 %301)
  br label %303

303:                                              ; preds = %294, %259
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 0
  store i32 0, i32* %305, align 8
  br label %316

306:                                              ; preds = %208
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 0
  store i32 3, i32* %308, align 8
  %309 = load i32, i32* %7, align 4
  %310 = and i32 %309, 3
  %311 = shl i32 %310, 16
  %312 = load i32, i32* %4, align 4
  %313 = or i32 %311, %312
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 1
  store i32 %313, i32* %315, align 4
  br label %316

316:                                              ; preds = %306, %303
  br label %409

317:                                              ; preds = %70
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  store i32 %320, i32* %7, align 4
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 3
  %323 = load i32 (i32, i32)*, i32 (i32, i32)** %322, align 8
  %324 = load i32*, i32** @mbfl_utf7imap_base64_table, align 8
  %325 = load i32, i32* %7, align 4
  %326 = ashr i32 %325, 12
  %327 = and i32 %326, 63
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %324, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = call i32 %323(i32 %330, i32 %333)
  %335 = call i32 @CK(i32 %334)
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 3
  %338 = load i32 (i32, i32)*, i32 (i32, i32)** %337, align 8
  %339 = load i32*, i32** @mbfl_utf7imap_base64_table, align 8
  %340 = load i32, i32* %7, align 4
  %341 = ashr i32 %340, 6
  %342 = and i32 %341, 63
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %339, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = call i32 %338(i32 %345, i32 %348)
  %350 = call i32 @CK(i32 %349)
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 3
  %353 = load i32 (i32, i32)*, i32 (i32, i32)** %352, align 8
  %354 = load i32*, i32** @mbfl_utf7imap_base64_table, align 8
  %355 = load i32, i32* %7, align 4
  %356 = and i32 %355, 63
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %354, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = call i32 %353(i32 %359, i32 %362)
  %364 = call i32 @CK(i32 %363)
  %365 = load i32, i32* %6, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %399

367:                                              ; preds = %317
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 3
  %370 = load i32 (i32, i32)*, i32 (i32, i32)** %369, align 8
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = call i32 %370(i32 45, i32 %373)
  %375 = call i32 @CK(i32 %374)
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 3
  %378 = load i32 (i32, i32)*, i32 (i32, i32)** %377, align 8
  %379 = load i32, i32* %4, align 4
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = call i32 %378(i32 %379, i32 %382)
  %384 = call i32 @CK(i32 %383)
  %385 = load i32, i32* %6, align 4
  %386 = icmp eq i32 %385, 1
  br i1 %386, label %387, label %396

387:                                              ; preds = %367
  %388 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 3
  %390 = load i32 (i32, i32)*, i32 (i32, i32)** %389, align 8
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = call i32 %390(i32 45, i32 %393)
  %395 = call i32 @CK(i32 %394)
  br label %396

396:                                              ; preds = %387, %367
  %397 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 0
  store i32 0, i32* %398, align 8
  br label %405

399:                                              ; preds = %317
  %400 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 0
  store i32 1, i32* %401, align 8
  %402 = load i32, i32* %4, align 4
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 1
  store i32 %402, i32* %404, align 4
  br label %405

405:                                              ; preds = %399, %396
  br label %409

406:                                              ; preds = %70
  %407 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 0
  store i32 0, i32* %408, align 8
  br label %409

409:                                              ; preds = %406, %405, %316, %207, %113
  %410 = load i32, i32* %4, align 4
  store i32 %410, i32* %3, align 4
  br label %411

411:                                              ; preds = %409, %62, %37
  %412 = load i32, i32* %3, align 4
  ret i32 %412
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
