; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf7.c_mbfl_filt_conv_wchar_utf7.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf7.c_mbfl_filt_conv_wchar_utf7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 (i32, i32)*, {}* }

@MBFL_WCSPLANE_UCS2MAX = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_SUPMIN = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_SUPMAX = common dso_local global i32 0, align 4
@mbfl_base64_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_utf7(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %107

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 128
  br i1 %12, label %13, label %107

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 65
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp sle i32 %17, 90
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  br label %106

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 97
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %24, 122
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  br label %105

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 48
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp sle i32 %31, 57
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %7, align 4
  br label %104

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  br label %103

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  br label %102

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  br label %101

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 2, i32* %7, align 4
  br label %100

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 9
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 2, i32* %7, align 4
  br label %99

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 13
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 2, i32* %7, align 4
  br label %98

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 2, i32* %7, align 4
  br label %97

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 39
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 2, i32* %7, align 4
  br label %96

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 40
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 2, i32* %7, align 4
  br label %95

70:                                               ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 41
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 2, i32* %7, align 4
  br label %94

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %75, 44
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 2, i32* %7, align 4
  br label %93

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 46
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 2, i32* %7, align 4
  br label %92

82:                                               ; preds = %78
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 58
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 2, i32* %7, align 4
  br label %91

86:                                               ; preds = %82
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 63
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 2, i32* %7, align 4
  br label %90

90:                                               ; preds = %89, %86
  br label %91

91:                                               ; preds = %90, %85
  br label %92

92:                                               ; preds = %91, %81
  br label %93

93:                                               ; preds = %92, %77
  br label %94

94:                                               ; preds = %93, %73
  br label %95

95:                                               ; preds = %94, %69
  br label %96

96:                                               ; preds = %95, %65
  br label %97

97:                                               ; preds = %96, %61
  br label %98

98:                                               ; preds = %97, %57
  br label %99

99:                                               ; preds = %98, %53
  br label %100

100:                                              ; preds = %99, %49
  br label %101

101:                                              ; preds = %100, %45
  br label %102

102:                                              ; preds = %101, %41
  br label %103

103:                                              ; preds = %102, %37
  br label %104

104:                                              ; preds = %103, %33
  br label %105

105:                                              ; preds = %104, %26
  br label %106

106:                                              ; preds = %105, %19
  br label %155

107:                                              ; preds = %10, %2
  %108 = load i32, i32* %4, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @MBFL_WCSPLANE_UCS2MAX, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %154

115:                                              ; preds = %110, %107
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @MBFL_WCSPLANE_SUPMIN, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %148

119:                                              ; preds = %115
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @MBFL_WCSPLANE_SUPMAX, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %148

123:                                              ; preds = %119
  %124 = load i32, i32* %4, align 4
  %125 = ashr i32 %124, 10
  %126 = sub nsw i32 %125, 64
  %127 = or i32 %126, 55296
  store i32 %127, i32* %6, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  %130 = bitcast {}** %129 to i32 (i32, %struct.TYPE_6__*)**
  %131 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = call i32 %131(i32 %132, %struct.TYPE_6__* %133)
  %135 = call i32 @CK(i32 %134)
  %136 = load i32, i32* %4, align 4
  %137 = and i32 %136, 1023
  %138 = or i32 %137, 56320
  store i32 %138, i32* %6, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 4
  %141 = bitcast {}** %140 to i32 (i32, %struct.TYPE_6__*)**
  %142 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %145 = call i32 %142(i32 %143, %struct.TYPE_6__* %144)
  %146 = call i32 @CK(i32 %145)
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* %3, align 4
  br label %466

148:                                              ; preds = %119, %115
  %149 = load i32, i32* %4, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = call i32 @mbfl_filt_conv_illegal_output(i32 %149, %struct.TYPE_6__* %150)
  %152 = call i32 @CK(i32 %151)
  %153 = load i32, i32* %4, align 4
  store i32 %153, i32* %3, align 4
  br label %466

154:                                              ; preds = %114
  br label %155

155:                                              ; preds = %154, %106
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  switch i32 %158, label %461 [
    i32 0, label %159
    i32 1, label %189
    i32 2, label %277
    i32 3, label %380
  ]

159:                                              ; preds = %155
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  %165 = load i32 (i32, i32)*, i32 (i32, i32)** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 %165(i32 %166, i32 %169)
  %171 = call i32 @CK(i32 %170)
  br label %188

172:                                              ; preds = %159
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 3
  %175 = load i32 (i32, i32)*, i32 (i32, i32)** %174, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 %175(i32 43, i32 %178)
  %180 = call i32 @CK(i32 %179)
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = load i32, i32* %4, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %172, %162
  br label %464

189:                                              ; preds = %155
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %6, align 4
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 3
  %195 = load i32 (i32, i32)*, i32 (i32, i32)** %194, align 8
  %196 = load i32*, i32** @mbfl_base64_table, align 8
  %197 = load i32, i32* %6, align 4
  %198 = ashr i32 %197, 10
  %199 = and i32 %198, 63
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %196, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 %195(i32 %202, i32 %205)
  %207 = call i32 @CK(i32 %206)
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 3
  %210 = load i32 (i32, i32)*, i32 (i32, i32)** %209, align 8
  %211 = load i32*, i32** @mbfl_base64_table, align 8
  %212 = load i32, i32* %6, align 4
  %213 = ashr i32 %212, 4
  %214 = and i32 %213, 63
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %211, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i32 %210(i32 %217, i32 %220)
  %222 = call i32 @CK(i32 %221)
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %264

225:                                              ; preds = %189
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 3
  %228 = load i32 (i32, i32)*, i32 (i32, i32)** %227, align 8
  %229 = load i32*, i32** @mbfl_base64_table, align 8
  %230 = load i32, i32* %6, align 4
  %231 = shl i32 %230, 2
  %232 = and i32 %231, 60
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %229, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i32 %228(i32 %235, i32 %238)
  %240 = call i32 @CK(i32 %239)
  %241 = load i32, i32* %7, align 4
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %252

243:                                              ; preds = %225
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 3
  %246 = load i32 (i32, i32)*, i32 (i32, i32)** %245, align 8
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 %246(i32 45, i32 %249)
  %251 = call i32 @CK(i32 %250)
  br label %252

252:                                              ; preds = %243, %225
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 3
  %255 = load i32 (i32, i32)*, i32 (i32, i32)** %254, align 8
  %256 = load i32, i32* %4, align 4
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = call i32 %255(i32 %256, i32 %259)
  %261 = call i32 @CK(i32 %260)
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  store i32 0, i32* %263, align 8
  br label %276

264:                                              ; preds = %189
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 8
  %269 = load i32, i32* %6, align 4
  %270 = and i32 %269, 15
  %271 = shl i32 %270, 16
  %272 = load i32, i32* %4, align 4
  %273 = or i32 %271, %272
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 1
  store i32 %273, i32* %275, align 4
  br label %276

276:                                              ; preds = %264, %252
  br label %464

277:                                              ; preds = %155
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %6, align 4
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 3
  %283 = load i32 (i32, i32)*, i32 (i32, i32)** %282, align 8
  %284 = load i32*, i32** @mbfl_base64_table, align 8
  %285 = load i32, i32* %6, align 4
  %286 = ashr i32 %285, 14
  %287 = and i32 %286, 63
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %284, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = call i32 %283(i32 %290, i32 %293)
  %295 = call i32 @CK(i32 %294)
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 3
  %298 = load i32 (i32, i32)*, i32 (i32, i32)** %297, align 8
  %299 = load i32*, i32** @mbfl_base64_table, align 8
  %300 = load i32, i32* %6, align 4
  %301 = ashr i32 %300, 8
  %302 = and i32 %301, 63
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %299, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = call i32 %298(i32 %305, i32 %308)
  %310 = call i32 @CK(i32 %309)
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 3
  %313 = load i32 (i32, i32)*, i32 (i32, i32)** %312, align 8
  %314 = load i32*, i32** @mbfl_base64_table, align 8
  %315 = load i32, i32* %6, align 4
  %316 = ashr i32 %315, 2
  %317 = and i32 %316, 63
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %314, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = call i32 %313(i32 %320, i32 %323)
  %325 = call i32 @CK(i32 %324)
  %326 = load i32, i32* %7, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %367

328:                                              ; preds = %277
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 3
  %331 = load i32 (i32, i32)*, i32 (i32, i32)** %330, align 8
  %332 = load i32*, i32** @mbfl_base64_table, align 8
  %333 = load i32, i32* %6, align 4
  %334 = shl i32 %333, 4
  %335 = and i32 %334, 48
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %332, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = call i32 %331(i32 %338, i32 %341)
  %343 = call i32 @CK(i32 %342)
  %344 = load i32, i32* %7, align 4
  %345 = icmp eq i32 %344, 1
  br i1 %345, label %346, label %355

346:                                              ; preds = %328
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 3
  %349 = load i32 (i32, i32)*, i32 (i32, i32)** %348, align 8
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = call i32 %349(i32 45, i32 %352)
  %354 = call i32 @CK(i32 %353)
  br label %355

355:                                              ; preds = %346, %328
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 3
  %358 = load i32 (i32, i32)*, i32 (i32, i32)** %357, align 8
  %359 = load i32, i32* %4, align 4
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = call i32 %358(i32 %359, i32 %362)
  %364 = call i32 @CK(i32 %363)
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 0
  store i32 0, i32* %366, align 8
  br label %379

367:                                              ; preds = %277
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %369, align 8
  %372 = load i32, i32* %6, align 4
  %373 = and i32 %372, 3
  %374 = shl i32 %373, 16
  %375 = load i32, i32* %4, align 4
  %376 = or i32 %374, %375
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 1
  store i32 %376, i32* %378, align 4
  br label %379

379:                                              ; preds = %367, %355
  br label %464

380:                                              ; preds = %155
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  store i32 %383, i32* %6, align 4
  %384 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 3
  %386 = load i32 (i32, i32)*, i32 (i32, i32)** %385, align 8
  %387 = load i32*, i32** @mbfl_base64_table, align 8
  %388 = load i32, i32* %6, align 4
  %389 = ashr i32 %388, 12
  %390 = and i32 %389, 63
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %387, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 8
  %397 = call i32 %386(i32 %393, i32 %396)
  %398 = call i32 @CK(i32 %397)
  %399 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 3
  %401 = load i32 (i32, i32)*, i32 (i32, i32)** %400, align 8
  %402 = load i32*, i32** @mbfl_base64_table, align 8
  %403 = load i32, i32* %6, align 4
  %404 = ashr i32 %403, 6
  %405 = and i32 %404, 63
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %402, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = call i32 %401(i32 %408, i32 %411)
  %413 = call i32 @CK(i32 %412)
  %414 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i32 0, i32 3
  %416 = load i32 (i32, i32)*, i32 (i32, i32)** %415, align 8
  %417 = load i32*, i32** @mbfl_base64_table, align 8
  %418 = load i32, i32* %6, align 4
  %419 = and i32 %418, 63
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %417, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = call i32 %416(i32 %422, i32 %425)
  %427 = call i32 @CK(i32 %426)
  %428 = load i32, i32* %7, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %454

430:                                              ; preds = %380
  %431 = load i32, i32* %7, align 4
  %432 = icmp eq i32 %431, 1
  br i1 %432, label %433, label %442

433:                                              ; preds = %430
  %434 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 3
  %436 = load i32 (i32, i32)*, i32 (i32, i32)** %435, align 8
  %437 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = call i32 %436(i32 45, i32 %439)
  %441 = call i32 @CK(i32 %440)
  br label %442

442:                                              ; preds = %433, %430
  %443 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %443, i32 0, i32 3
  %445 = load i32 (i32, i32)*, i32 (i32, i32)** %444, align 8
  %446 = load i32, i32* %4, align 4
  %447 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %447, i32 0, i32 2
  %449 = load i32, i32* %448, align 8
  %450 = call i32 %445(i32 %446, i32 %449)
  %451 = call i32 @CK(i32 %450)
  %452 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %453 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %452, i32 0, i32 0
  store i32 0, i32* %453, align 8
  br label %460

454:                                              ; preds = %380
  %455 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i32 0, i32 0
  store i32 1, i32* %456, align 8
  %457 = load i32, i32* %4, align 4
  %458 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %459 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %458, i32 0, i32 1
  store i32 %457, i32* %459, align 4
  br label %460

460:                                              ; preds = %454, %442
  br label %464

461:                                              ; preds = %155
  %462 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %462, i32 0, i32 0
  store i32 0, i32* %463, align 8
  br label %464

464:                                              ; preds = %461, %460, %379, %276, %188
  %465 = load i32, i32* %4, align 4
  store i32 %465, i32* %3, align 4
  br label %466

466:                                              ; preds = %464, %148, %123
  %467 = load i32, i32* %3, align 4
  ret i32 %467
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
