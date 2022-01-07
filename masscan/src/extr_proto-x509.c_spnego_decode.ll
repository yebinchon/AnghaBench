; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-x509.c_spnego_decode.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-x509.c_spnego_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SpnegoDecode = type { %struct.TYPE_8__, %struct.CertDecode* }
%struct.TYPE_8__ = type { i32 }
%struct.CertDecode = type { i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8, i8 }
%struct.TYPE_7__ = type { i64*, i64 }
%struct.BannerOutput = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spnego_decode(%struct.SpnegoDecode* %0, i8* %1, i64 %2, %struct.BannerOutput* %3) #0 {
  %5 = alloca %struct.SpnegoDecode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.BannerOutput*, align 8
  %9 = alloca %struct.CertDecode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.SpnegoDecode* %0, %struct.SpnegoDecode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.BannerOutput* %3, %struct.BannerOutput** %8, align 8
  %13 = load %struct.SpnegoDecode*, %struct.SpnegoDecode** %5, align 8
  %14 = getelementptr inbounds %struct.SpnegoDecode, %struct.SpnegoDecode* %13, i32 0, i32 1
  %15 = load %struct.CertDecode*, %struct.CertDecode** %14, align 8
  store %struct.CertDecode* %15, %struct.CertDecode** %9, align 8
  %16 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %17 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %406, %4
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %409

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %40, %24
  %26 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %27 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %35 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %409

40:                                               ; preds = %33
  %41 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %42 = call i32 @ASN1_pop(%struct.CertDecode* %41)
  store i32 %42, i32* %11, align 4
  br label %25

43:                                               ; preds = %25
  %44 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %45 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %48, align 8
  %51 = load i32, i32* %11, align 4
  switch i32 %51, label %404 [
    i32 0, label %52
    i32 6, label %74
    i32 5, label %99
    i32 4, label %118
    i32 3, label %143
    i32 7, label %162
    i32 8, label %181
    i32 9, label %181
    i32 11, label %181
    i32 12, label %181
    i32 13, label %181
    i32 10, label %186
    i32 14, label %191
    i32 15, label %196
    i32 17, label %196
    i32 16, label %197
    i32 18, label %208
    i32 1, label %272
    i32 2, label %324
  ]

52:                                               ; preds = %43
  %53 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %54 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %53, i32 0, i32 1
  store i32 19, i32* %54, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  switch i32 %60, label %70 [
    i32 160, label %61
    i32 161, label %64
    i32 96, label %67
  ]

61:                                               ; preds = %52
  %62 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %63 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %62, i32 0, i32 2
  store i32 3, i32* %63, align 8
  br label %73

64:                                               ; preds = %52
  %65 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %66 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %65, i32 0, i32 2
  store i32 5, i32* %66, align 8
  br label %73

67:                                               ; preds = %52
  %68 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %69 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %68, i32 0, i32 2
  store i32 7, i32* %69, align 8
  br label %73

70:                                               ; preds = %52
  %71 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %72 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %71, i32 0, i32 2
  store i32 19, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %67, %64, %61
  store i32 1, i32* %11, align 4
  br label %405

74:                                               ; preds = %43
  %75 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %76 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %75, i32 0, i32 1
  store i32 6, i32* %76, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  switch i32 %82, label %95 [
    i32 160, label %83
    i32 161, label %86
    i32 162, label %89
    i32 163, label %92
  ]

83:                                               ; preds = %74
  %84 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %85 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %84, i32 0, i32 2
  store i32 8, i32* %85, align 8
  br label %98

86:                                               ; preds = %74
  %87 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %88 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %87, i32 0, i32 2
  store i32 9, i32* %88, align 8
  br label %98

89:                                               ; preds = %74
  %90 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %91 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %90, i32 0, i32 2
  store i32 10, i32* %91, align 8
  br label %98

92:                                               ; preds = %74
  %93 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %94 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %93, i32 0, i32 2
  store i32 11, i32* %94, align 8
  br label %98

95:                                               ; preds = %74
  %96 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %97 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %96, i32 0, i32 2
  store i32 19, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %92, %89, %86, %83
  store i32 1, i32* %11, align 4
  br label %405

99:                                               ; preds = %43
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp ne i32 %105, 48
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %109 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %108, i32 0, i32 1
  store i32 19, i32* %109, align 4
  %110 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %111 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %110, i32 0, i32 2
  store i32 19, i32* %111, align 8
  br label %117

112:                                              ; preds = %99
  %113 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %114 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %113, i32 0, i32 1
  store i32 19, i32* %114, align 4
  %115 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %116 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %115, i32 0, i32 2
  store i32 6, i32* %116, align 8
  br label %117

117:                                              ; preds = %112, %107
  store i32 1, i32* %11, align 4
  br label %405

118:                                              ; preds = %43
  %119 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %120 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %119, i32 0, i32 1
  store i32 4, i32* %120, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* %10, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  switch i32 %126, label %139 [
    i32 160, label %127
    i32 161, label %130
    i32 162, label %133
    i32 163, label %136
  ]

127:                                              ; preds = %118
  %128 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %129 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %128, i32 0, i32 2
  store i32 12, i32* %129, align 8
  br label %142

130:                                              ; preds = %118
  %131 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %132 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %131, i32 0, i32 2
  store i32 13, i32* %132, align 8
  br label %142

133:                                              ; preds = %118
  %134 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %135 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %134, i32 0, i32 2
  store i32 14, i32* %135, align 8
  br label %142

136:                                              ; preds = %118
  %137 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %138 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %137, i32 0, i32 2
  store i32 11, i32* %138, align 8
  br label %142

139:                                              ; preds = %118
  %140 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %141 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %140, i32 0, i32 2
  store i32 19, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %136, %133, %130, %127
  store i32 1, i32* %11, align 4
  br label %405

143:                                              ; preds = %43
  %144 = load i8*, i8** %6, align 8
  %145 = load i32, i32* %10, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp ne i32 %149, 48
  br i1 %150, label %151, label %156

151:                                              ; preds = %143
  %152 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %153 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %152, i32 0, i32 1
  store i32 19, i32* %153, align 4
  %154 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %155 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %154, i32 0, i32 2
  store i32 19, i32* %155, align 8
  br label %161

156:                                              ; preds = %143
  %157 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %158 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %157, i32 0, i32 1
  store i32 19, i32* %158, align 4
  %159 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %160 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %159, i32 0, i32 2
  store i32 4, i32* %160, align 8
  br label %161

161:                                              ; preds = %156, %151
  store i32 1, i32* %11, align 4
  br label %405

162:                                              ; preds = %43
  %163 = load i8*, i8** %6, align 8
  %164 = load i32, i32* %10, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp eq i32 %168, 6
  br i1 %169, label %170, label %175

170:                                              ; preds = %162
  %171 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %172 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %171, i32 0, i32 1
  store i32 0, i32* %172, align 4
  %173 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %174 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %173, i32 0, i32 2
  store i32 19, i32* %174, align 8
  br label %180

175:                                              ; preds = %162
  %176 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %177 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %176, i32 0, i32 1
  store i32 0, i32* %177, align 4
  %178 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %179 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %178, i32 0, i32 2
  store i32 19, i32* %179, align 8
  br label %180

180:                                              ; preds = %175, %170
  store i32 1, i32* %11, align 4
  br label %405

181:                                              ; preds = %43, %43, %43, %43, %43
  %182 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %183 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %182, i32 0, i32 1
  store i32 19, i32* %183, align 4
  %184 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %185 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %184, i32 0, i32 2
  store i32 19, i32* %185, align 8
  store i32 1, i32* %11, align 4
  br label %405

186:                                              ; preds = %43
  %187 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %188 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %187, i32 0, i32 1
  store i32 19, i32* %188, align 4
  %189 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %190 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %189, i32 0, i32 2
  store i32 16, i32* %190, align 8
  store i32 1, i32* %11, align 4
  br label %405

191:                                              ; preds = %43
  %192 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %193 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %192, i32 0, i32 1
  store i32 19, i32* %193, align 4
  %194 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %195 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %194, i32 0, i32 2
  store i32 15, i32* %195, align 8
  store i32 1, i32* %11, align 4
  br label %405

196:                                              ; preds = %43, %43
  br label %405

197:                                              ; preds = %43
  %198 = load %struct.SpnegoDecode*, %struct.SpnegoDecode** %5, align 8
  %199 = getelementptr inbounds %struct.SpnegoDecode, %struct.SpnegoDecode* %198, i32 0, i32 0
  %200 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %201 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 0
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, 1
  %207 = call i32 @ntlmssp_decode_init(%struct.TYPE_8__* %199, i64 %206)
  store i32 18, i32* %11, align 4
  br label %208

208:                                              ; preds = %43, %197
  %209 = load i64, i64* %7, align 8
  %210 = load i32, i32* %10, align 4
  %211 = zext i32 %210 to i64
  %212 = sub i64 %209, %211
  store i64 %212, i64* %12, align 8
  %213 = load i64, i64* %12, align 8
  %214 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %215 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 0
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, 1
  %221 = icmp ugt i64 %213, %220
  br i1 %221, label %222, label %230

222:                                              ; preds = %208
  %223 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %224 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %223, i32 0, i32 5
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i64*, i64** %225, align 8
  %227 = getelementptr inbounds i64, i64* %226, i64 0
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %12, align 8
  br label %230

230:                                              ; preds = %222, %208
  %231 = load %struct.SpnegoDecode*, %struct.SpnegoDecode** %5, align 8
  %232 = getelementptr inbounds %struct.SpnegoDecode, %struct.SpnegoDecode* %231, i32 0, i32 0
  %233 = load i8*, i8** %6, align 8
  %234 = load i32, i32* %10, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  %237 = load i64, i64* %12, align 8
  %238 = load %struct.BannerOutput*, %struct.BannerOutput** %8, align 8
  %239 = call i32 @ntlmssp_decode(%struct.TYPE_8__* %232, i8* %236, i64 %237, %struct.BannerOutput* %238)
  %240 = load i64, i64* %12, align 8
  %241 = sub i64 %240, 1
  %242 = trunc i64 %241 to i16
  %243 = zext i16 %242 to i64
  %244 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %245 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = load i64*, i64** %246, align 8
  %248 = getelementptr inbounds i64, i64* %247, i64 0
  %249 = load i64, i64* %248, align 8
  %250 = sub nsw i64 %249, %243
  store i64 %250, i64* %248, align 8
  %251 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %252 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %251, i32 0, i32 5
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = load i64*, i64** %253, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %271

258:                                              ; preds = %230
  %259 = load %struct.SpnegoDecode*, %struct.SpnegoDecode** %5, align 8
  %260 = getelementptr inbounds %struct.SpnegoDecode, %struct.SpnegoDecode* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %258
  %265 = load %struct.SpnegoDecode*, %struct.SpnegoDecode** %5, align 8
  %266 = getelementptr inbounds %struct.SpnegoDecode, %struct.SpnegoDecode* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @free(i32 %268)
  br label %270

270:                                              ; preds = %264, %258
  br label %271

271:                                              ; preds = %270, %230
  br label %405

272:                                              ; preds = %43
  %273 = load i8*, i8** %6, align 8
  %274 = load i32, i32* %10, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = and i32 %278, 128
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %298

281:                                              ; preds = %272
  %282 = load i8*, i8** %6, align 8
  %283 = load i32, i32* %10, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* %282, i64 %284
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = and i32 %287, 127
  %289 = trunc i32 %288 to i8
  %290 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %291 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  store i8 %289, i8* %293, align 8
  %294 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %295 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %294, i32 0, i32 4
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 1
  store i8 0, i8* %297, align 1
  store i32 2, i32* %11, align 4
  br label %405

298:                                              ; preds = %272
  %299 = load i8*, i8** %6, align 8
  %300 = load i32, i32* %10, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %305 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %304, i32 0, i32 4
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 1
  store i8 %303, i8* %307, align 1
  %308 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %309 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %310 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %313 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %312, i32 0, i32 4
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 1
  %316 = load i8, i8* %315, align 1
  %317 = call i32 @ASN1_push(%struct.CertDecode* %308, i32 %311, i8 zeroext %316)
  %318 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %319 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  store i32 %320, i32* %11, align 4
  %321 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %322 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %321, i32 0, i32 4
  %323 = call i32 @memset(%struct.TYPE_9__* %322, i32 0, i32 2)
  br label %405

324:                                              ; preds = %43
  %325 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %326 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %325, i32 0, i32 4
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 1
  %329 = load i8, i8* %328, align 1
  %330 = zext i8 %329 to i32
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %343

332:                                              ; preds = %324
  %333 = load i8*, i8** %6, align 8
  %334 = load i32, i32* %10, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %333, i64 %335
  %337 = load i8, i8* %336, align 1
  %338 = zext i8 %337 to i32
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %332
  %341 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %342 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %341, i32 0, i32 3
  store i32 1, i32* %342, align 4
  br label %343

343:                                              ; preds = %340, %332, %324
  %344 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %345 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %344, i32 0, i32 4
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 1
  %348 = load i8, i8* %347, align 1
  %349 = zext i8 %348 to i32
  %350 = shl i32 %349, 8
  %351 = load i8*, i8** %6, align 8
  %352 = load i32, i32* %10, align 4
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds i8, i8* %351, i64 %353
  %355 = load i8, i8* %354, align 1
  %356 = zext i8 %355 to i32
  %357 = or i32 %350, %356
  %358 = trunc i32 %357 to i8
  %359 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %360 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %359, i32 0, i32 4
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 1
  store i8 %358, i8* %362, align 1
  %363 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %364 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %363, i32 0, i32 4
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 0
  %367 = load i8, i8* %366, align 8
  %368 = add i8 %367, -1
  store i8 %368, i8* %366, align 8
  %369 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %370 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %369, i32 0, i32 4
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 0
  %373 = load i8, i8* %372, align 8
  %374 = icmp ne i8 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %343
  br label %406

376:                                              ; preds = %343
  %377 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %378 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %377, i32 0, i32 4
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 1
  %381 = load i8, i8* %380, align 1
  %382 = zext i8 %381 to i32
  %383 = icmp slt i32 %382, 128
  br i1 %383, label %384, label %387

384:                                              ; preds = %376
  %385 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %386 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %385, i32 0, i32 3
  store i32 1, i32* %386, align 4
  br label %387

387:                                              ; preds = %384, %376
  %388 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %389 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %390 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %393 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %392, i32 0, i32 4
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 1
  %396 = load i8, i8* %395, align 1
  %397 = call i32 @ASN1_push(%struct.CertDecode* %388, i32 %391, i8 zeroext %396)
  %398 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %399 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  store i32 %400, i32* %11, align 4
  %401 = load %struct.CertDecode*, %struct.CertDecode** %9, align 8
  %402 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %401, i32 0, i32 4
  %403 = call i32 @memset(%struct.TYPE_9__* %402, i32 0, i32 2)
  br label %405

404:                                              ; preds = %43
  br label %405

405:                                              ; preds = %404, %387, %298, %281, %271, %196, %191, %186, %181, %180, %161, %142, %117, %98, %73
  br label %406

406:                                              ; preds = %405, %375
  %407 = load i32, i32* %10, align 4
  %408 = add i32 %407, 1
  store i32 %408, i32* %10, align 4
  br label %19

409:                                              ; preds = %39, %19
  ret void
}

declare dso_local i32 @ASN1_pop(%struct.CertDecode*) #1

declare dso_local i32 @ntlmssp_decode_init(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @ntlmssp_decode(%struct.TYPE_8__*, i8*, i64, %struct.BannerOutput*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @ASN1_push(%struct.CertDecode*, i32, i8 zeroext) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
