; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_parse_decimal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_parse_decimal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXLONGLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Expected exponent part\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unexpected end of file\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"wrong char after zero\0A\00", align 1
@JS_E_MISSING_SEMICOLON = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_decimal(i8** %0, i8* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store double* %2, double** %7, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %48, %3
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @iswdigit(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i1 [ false, %16 ], [ %24, %20 ]
  br i1 %26, label %27, label %49

27:                                               ; preds = %25
  %28 = load i32, i32* %9, align 4
  %29 = mul nsw i32 %28, 10
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = add nsw i32 %29, %33
  %35 = sub nsw i32 %34, 48
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MAXLONGLONG, align 4
  %38 = sdiv i32 %37, 10
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %27
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %46
  br label %16

49:                                               ; preds = %43, %25
  br label %50

50:                                               ; preds = %61, %49
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ult i8* %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @iswdigit(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i1 [ false, %50 ], [ %58, %54 ]
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  br label %50

66:                                               ; preds = %59
  %67 = load i8*, i8** %8, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 46
  br i1 %70, label %71, label %122

71:                                               ; preds = %66
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  br label %74

74:                                               ; preds = %102, %71
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ult i8* %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i8*, i8** %8, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @iswdigit(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %78, %74
  %84 = phi i1 [ false, %74 ], [ %82, %78 ]
  br i1 %84, label %85, label %106

85:                                               ; preds = %83
  %86 = load i32, i32* %9, align 4
  %87 = mul nsw i32 %86, 10
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %8, align 8
  %90 = load i8, i8* %88, align 1
  %91 = sext i8 %90 to i32
  %92 = add nsw i32 %87, %91
  %93 = sub nsw i32 %92, 48
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @MAXLONGLONG, align 4
  %96 = sdiv i32 %95, 10
  %97 = icmp sgt i32 %94, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %85
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %85
  br label %106

102:                                              ; preds = %98
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %11, align 4
  br label %74

106:                                              ; preds = %101, %83
  br label %107

107:                                              ; preds = %118, %106
  %108 = load i8*, i8** %8, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = icmp ult i8* %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i8*, i8** %8, align 8
  %113 = load i8, i8* %112, align 1
  %114 = call i64 @iswdigit(i8 signext %113)
  %115 = icmp ne i64 %114, 0
  br label %116

116:                                              ; preds = %111, %107
  %117 = phi i1 [ false, %107 ], [ %115, %111 ]
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %8, align 8
  br label %107

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %121, %66
  %123 = load i8*, i8** %8, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = icmp ult i8* %123, %124
  br i1 %125, label %126, label %240

126:                                              ; preds = %122
  %127 = load i8*, i8** %8, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 101
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load i8*, i8** %8, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 69
  br i1 %135, label %136, label %240

136:                                              ; preds = %131, %126
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %137 = load i8*, i8** %8, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %8, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = icmp ult i8* %138, %139
  br i1 %140, label %141, label %168

141:                                              ; preds = %136
  %142 = load i8*, i8** %8, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 43
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %8, align 8
  br label %167

149:                                              ; preds = %141
  %150 = load i8*, i8** %8, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 45
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  store i32 -1, i32* %12, align 4
  %155 = load i8*, i8** %8, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %8, align 8
  br label %166

157:                                              ; preds = %149
  %158 = load i8*, i8** %8, align 8
  %159 = load i8, i8* %158, align 1
  %160 = call i64 @iswdigit(i8 signext %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %164 = load i32, i32* @E_FAIL, align 4
  store i32 %164, i32* %4, align 4
  br label %269

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %165, %154
  br label %167

167:                                              ; preds = %166, %146
  br label %168

168:                                              ; preds = %167, %136
  %169 = load i8*, i8** %8, align 8
  %170 = load i8*, i8** %6, align 8
  %171 = icmp eq i8* %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %174 = load i32, i32* @E_FAIL, align 4
  store i32 %174, i32* %4, align 4
  br label %269

175:                                              ; preds = %168
  br label %176

176:                                              ; preds = %204, %175
  %177 = load i8*, i8** %8, align 8
  %178 = load i8*, i8** %6, align 8
  %179 = icmp ult i8* %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i8*, i8** %8, align 8
  %182 = load i8, i8* %181, align 1
  %183 = call i64 @iswdigit(i8 signext %182)
  %184 = icmp ne i64 %183, 0
  br label %185

185:                                              ; preds = %180, %176
  %186 = phi i1 [ false, %176 ], [ %184, %180 ]
  br i1 %186, label %187, label %205

187:                                              ; preds = %185
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* @INT_MAX, align 4
  %190 = sdiv i32 %189, 10
  %191 = icmp sgt i32 %188, %190
  br i1 %191, label %202, label %192

192:                                              ; preds = %187
  %193 = load i32, i32* %13, align 4
  %194 = mul nsw i32 %193, 10
  %195 = load i8*, i8** %8, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %8, align 8
  %197 = load i8, i8* %195, align 1
  %198 = sext i8 %197 to i32
  %199 = add nsw i32 %194, %198
  %200 = sub nsw i32 %199, 48
  store i32 %200, i32* %13, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %192, %187
  %203 = load i32, i32* @INT_MAX, align 4
  store i32 %203, i32* %13, align 4
  br label %204

204:                                              ; preds = %202, %192
  br label %176

205:                                              ; preds = %185
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* %13, align 4
  %208 = mul nsw i32 %207, %206
  store i32 %208, i32* %13, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %205
  %212 = load i32, i32* %13, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %211
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %11, align 4
  %217 = add nsw i32 %215, %216
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = load i32, i32* @INT_MIN, align 4
  store i32 %220, i32* %11, align 4
  br label %239

221:                                              ; preds = %214, %211, %205
  %222 = load i32, i32* %11, align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %221
  %225 = load i32, i32* %13, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %224
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %11, align 4
  %230 = add nsw i32 %228, %229
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %227
  %233 = load i32, i32* @INT_MAX, align 4
  store i32 %233, i32* %11, align 4
  br label %238

234:                                              ; preds = %227, %224, %221
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %11, align 4
  br label %238

238:                                              ; preds = %234, %232
  br label %239

239:                                              ; preds = %238, %219
  br label %240

240:                                              ; preds = %239, %131, %122
  %241 = load i8*, i8** %8, align 8
  %242 = load i8, i8* %241, align 1
  %243 = call i64 @is_identifier_char(i8 signext %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %240
  %246 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %247 = load i32, i32* @JS_E_MISSING_SEMICOLON, align 4
  store i32 %247, i32* %4, align 4
  br label %269

248:                                              ; preds = %240
  %249 = load i32, i32* %11, align 4
  %250 = icmp sge i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* %11, align 4
  %254 = call i32 @pow(i32 10, i32 %253)
  %255 = mul nsw i32 %252, %254
  br label %262

256:                                              ; preds = %248
  %257 = load i32, i32* %9, align 4
  %258 = load i32, i32* %11, align 4
  %259 = sub nsw i32 0, %258
  %260 = call i32 @pow(i32 10, i32 %259)
  %261 = sdiv i32 %257, %260
  br label %262

262:                                              ; preds = %256, %251
  %263 = phi i32 [ %255, %251 ], [ %261, %256 ]
  %264 = sitofp i32 %263 to double
  %265 = load double*, double** %7, align 8
  store double %264, double* %265, align 8
  %266 = load i8*, i8** %8, align 8
  %267 = load i8**, i8*** %5, align 8
  store i8* %266, i8** %267, align 8
  %268 = load i32, i32* @S_OK, align 4
  store i32 %268, i32* %4, align 4
  br label %269

269:                                              ; preds = %262, %245, %172, %162
  %270 = load i32, i32* %4, align 4
  ret i32 %270
}

declare dso_local i64 @iswdigit(i8 signext) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @is_identifier_char(i8 signext) #1

declare dso_local i32 @pow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
