; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/doogle999/extr_doogle999.c_calc.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/doogle999/extr_doogle999.c_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8, i64, i32 }

@CALC_BUFFER_SIZE = common dso_local global i32 0, align 4
@CALC_CHAR_DEC = common dso_local global i8 0, align 1
@CALC_PRIO_ADD = common dso_local global i64 0, align 8
@CALC_PRIO_SUB = common dso_local global i64 0, align 8
@CALC_PRIO_MUL = common dso_local global i64 0, align 8
@CALC_PRIO_DIV = common dso_local global i64 0, align 8
@CALC_PRIO_EXP = common dso_local global i64 0, align 8
@CALC_VALU_EUL = common dso_local global double 0.000000e+00, align 8
@CALC_VALU_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*)* @calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @calc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca double (double)*, align 8
  store i8* %0, i8** %2, align 8
  %23 = load i32, i32* @CALC_BUFFER_SIZE, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = load i32, i32* @CALC_BUFFER_SIZE, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %3, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %4, align 8
  store i8 0, i8* %5, align 1
  store i8 0, i8* %6, align 1
  %31 = load i32, i32* @CALC_BUFFER_SIZE, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = alloca %struct.Token, i64 %33, align 16
  store i64 %33, i64* %7, align 8
  store i8 0, i8* %8, align 1
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %275, %159, %117, %1
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32, i32* @CALC_BUFFER_SIZE, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %280

41:                                               ; preds = %35
  %42 = load i8*, i8** %2, align 8
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %10, align 1
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %41
  %51 = load i8*, i8** %2, align 8
  %52 = load i8, i8* %6, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 129
  br i1 %57, label %58, label %80

58:                                               ; preds = %50
  %59 = load i8*, i8** %2, align 8
  %60 = load i8, i8* %6, align 1
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 141
  br i1 %67, label %68, label %80

68:                                               ; preds = %58
  %69 = load i8, i8* %8, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %70
  %72 = getelementptr inbounds %struct.Token, %struct.Token* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store double 0.000000e+00, double* %73, align 8
  %74 = load i8, i8* %8, align 1
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %75
  %77 = getelementptr inbounds %struct.Token, %struct.Token* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load i8, i8* %8, align 1
  %79 = add i8 %78, 1
  store i8 %79, i8* %8, align 1
  store i32 1, i32* %9, align 4
  br label %80

80:                                               ; preds = %68, %58, %50, %41
  %81 = load i8, i8* %10, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp sge i32 %82, 48
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i8, i8* %10, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp sle i32 %86, 57
  br i1 %87, label %117, label %88

88:                                               ; preds = %84, %80
  %89 = load i8, i8* %5, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load i8*, i8** %2, align 8
  %94 = load i8, i8* %6, align 1
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* @CALC_CHAR_DEC, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %117, label %102

102:                                              ; preds = %92, %88
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %130, label %105

105:                                              ; preds = %102
  %106 = load i8, i8* %5, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %105
  %110 = load i8*, i8** %2, align 8
  %111 = load i8, i8* %6, align 1
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 129
  br i1 %116, label %117, label %130

117:                                              ; preds = %109, %92, %84
  %118 = load i8*, i8** %2, align 8
  %119 = load i8, i8* %6, align 1
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = load i8, i8* %5, align 1
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds i8, i8* %30, i64 %124
  store i8 %122, i8* %125, align 1
  %126 = load i8, i8* %5, align 1
  %127 = add i8 %126, 1
  store i8 %127, i8* %5, align 1
  %128 = load i8, i8* %6, align 1
  %129 = add i8 %128, 1
  store i8 %129, i8* %6, align 1
  br label %35

130:                                              ; preds = %109, %105, %102
  %131 = load i8, i8* %5, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %162

134:                                              ; preds = %130
  %135 = call double @atof(i8* %30)
  %136 = load i8, i8* %8, align 1
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %137
  %139 = getelementptr inbounds %struct.Token, %struct.Token* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store double %135, double* %140, align 8
  %141 = load i8, i8* %8, align 1
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %142
  %144 = getelementptr inbounds %struct.Token, %struct.Token* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  store i8 0, i8* %11, align 1
  br label %145

145:                                              ; preds = %156, %134
  %146 = load i8, i8* %11, align 1
  %147 = zext i8 %146 to i32
  %148 = load i8, i8* %5, align 1
  %149 = zext i8 %148 to i32
  %150 = add nsw i32 %149, 1
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load i8, i8* %11, align 1
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds i8, i8* %30, i64 %154
  store i8 0, i8* %155, align 1
  br label %156

156:                                              ; preds = %152
  %157 = load i8, i8* %11, align 1
  %158 = add i8 %157, 1
  store i8 %158, i8* %11, align 1
  br label %145

159:                                              ; preds = %145
  store i8 0, i8* %5, align 1
  %160 = load i8, i8* %8, align 1
  %161 = add i8 %160, 1
  store i8 %161, i8* %8, align 1
  store i32 1, i32* %9, align 4
  br label %35

162:                                              ; preds = %130
  %163 = load i8, i8* %8, align 1
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %164
  %166 = getelementptr inbounds %struct.Token, %struct.Token* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  %167 = load i8*, i8** %2, align 8
  %168 = load i8, i8* %6, align 1
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = load i8, i8* %8, align 1
  %173 = zext i8 %172 to i64
  %174 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %173
  %175 = getelementptr inbounds %struct.Token, %struct.Token* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  store i8 %171, i8* %177, align 8
  %178 = load i8, i8* %8, align 1
  %179 = zext i8 %178 to i64
  %180 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %179
  %181 = getelementptr inbounds %struct.Token, %struct.Token* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  store i64 0, i64* %183, align 8
  %184 = load i8, i8* %8, align 1
  %185 = zext i8 %184 to i64
  %186 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %185
  %187 = getelementptr inbounds %struct.Token, %struct.Token* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  store i32 1, i32* %189, align 8
  store i32 0, i32* %9, align 4
  %190 = load i8*, i8** %2, align 8
  %191 = load i8, i8* %6, align 1
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  switch i32 %195, label %272 [
    i32 141, label %196
    i32 138, label %197
    i32 144, label %198
    i32 129, label %206
    i32 133, label %214
    i32 139, label %222
    i32 136, label %230
    i32 131, label %244
    i32 140, label %244
    i32 128, label %244
    i32 143, label %244
    i32 145, label %244
    i32 142, label %244
    i32 135, label %244
    i32 134, label %244
    i32 130, label %244
    i32 137, label %245
    i32 132, label %256
    i32 0, label %267
  ]

196:                                              ; preds = %162
  br label %275

197:                                              ; preds = %162
  store i32 1, i32* %9, align 4
  br label %275

198:                                              ; preds = %162
  %199 = load i64, i64* @CALC_PRIO_ADD, align 8
  %200 = load i8, i8* %8, align 1
  %201 = zext i8 %200 to i64
  %202 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %201
  %203 = getelementptr inbounds %struct.Token, %struct.Token* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  store i64 %199, i64* %205, align 8
  br label %275

206:                                              ; preds = %162
  %207 = load i64, i64* @CALC_PRIO_SUB, align 8
  %208 = load i8, i8* %8, align 1
  %209 = zext i8 %208 to i64
  %210 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %209
  %211 = getelementptr inbounds %struct.Token, %struct.Token* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  store i64 %207, i64* %213, align 8
  br label %275

214:                                              ; preds = %162
  %215 = load i64, i64* @CALC_PRIO_MUL, align 8
  %216 = load i8, i8* %8, align 1
  %217 = zext i8 %216 to i64
  %218 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %217
  %219 = getelementptr inbounds %struct.Token, %struct.Token* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 1
  store i64 %215, i64* %221, align 8
  br label %275

222:                                              ; preds = %162
  %223 = load i64, i64* @CALC_PRIO_DIV, align 8
  %224 = load i8, i8* %8, align 1
  %225 = zext i8 %224 to i64
  %226 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %225
  %227 = getelementptr inbounds %struct.Token, %struct.Token* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 1
  store i64 %223, i64* %229, align 8
  br label %275

230:                                              ; preds = %162
  %231 = load i64, i64* @CALC_PRIO_EXP, align 8
  %232 = load i8, i8* %8, align 1
  %233 = zext i8 %232 to i64
  %234 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %233
  %235 = getelementptr inbounds %struct.Token, %struct.Token* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 1
  store i64 %231, i64* %237, align 8
  %238 = load i8, i8* %8, align 1
  %239 = zext i8 %238 to i64
  %240 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %239
  %241 = getelementptr inbounds %struct.Token, %struct.Token* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 2
  store i32 0, i32* %243, align 8
  br label %275

244:                                              ; preds = %162, %162, %162, %162, %162, %162, %162, %162, %162
  br label %275

245:                                              ; preds = %162
  %246 = load i8, i8* %8, align 1
  %247 = zext i8 %246 to i64
  %248 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %247
  %249 = getelementptr inbounds %struct.Token, %struct.Token* %248, i32 0, i32 0
  store i32 1, i32* %249, align 8
  %250 = load double, double* @CALC_VALU_EUL, align 8
  %251 = load i8, i8* %8, align 1
  %252 = zext i8 %251 to i64
  %253 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %252
  %254 = getelementptr inbounds %struct.Token, %struct.Token* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  store double %250, double* %255, align 8
  store i32 1, i32* %9, align 4
  br label %275

256:                                              ; preds = %162
  %257 = load i8, i8* %8, align 1
  %258 = zext i8 %257 to i64
  %259 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %258
  %260 = getelementptr inbounds %struct.Token, %struct.Token* %259, i32 0, i32 0
  store i32 1, i32* %260, align 8
  %261 = load double, double* @CALC_VALU_PI, align 8
  %262 = load i8, i8* %8, align 1
  %263 = zext i8 %262 to i64
  %264 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %263
  %265 = getelementptr inbounds %struct.Token, %struct.Token* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  store double %261, double* %266, align 8
  store i32 1, i32* %9, align 4
  br label %275

267:                                              ; preds = %162
  %268 = load i8, i8* %8, align 1
  %269 = add i8 %268, -1
  store i8 %269, i8* %8, align 1
  %270 = load i32, i32* @CALC_BUFFER_SIZE, align 4
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* %6, align 1
  br label %275

272:                                              ; preds = %162
  %273 = load i8, i8* %8, align 1
  %274 = add i8 %273, -1
  store i8 %274, i8* %8, align 1
  br label %275

275:                                              ; preds = %272, %267, %256, %245, %244, %230, %222, %214, %206, %198, %197, %196
  %276 = load i8, i8* %8, align 1
  %277 = add i8 %276, 1
  store i8 %277, i8* %8, align 1
  %278 = load i8, i8* %6, align 1
  %279 = add i8 %278, 1
  store i8 %279, i8* %6, align 1
  br label %35

280:                                              ; preds = %35
  %281 = load i32, i32* @CALC_BUFFER_SIZE, align 4
  %282 = add nsw i32 %281, 1
  %283 = zext i32 %282 to i64
  %284 = alloca %struct.Token, i64 %283, align 16
  store i64 %283, i64* %12, align 8
  %285 = load i32, i32* @CALC_BUFFER_SIZE, align 4
  %286 = add nsw i32 %285, 1
  %287 = zext i32 %286 to i64
  %288 = alloca %struct.Token, i64 %287, align 16
  store i64 %287, i64* %13, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %289

289:                                              ; preds = %506, %280
  %290 = load i8, i8* %17, align 1
  %291 = zext i8 %290 to i32
  %292 = load i8, i8* %8, align 1
  %293 = zext i8 %292 to i32
  %294 = icmp slt i32 %291, %293
  br i1 %294, label %295, label %509

295:                                              ; preds = %289
  %296 = load i8, i8* %17, align 1
  %297 = zext i8 %296 to i64
  %298 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %297
  %299 = getelementptr inbounds %struct.Token, %struct.Token* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %313

302:                                              ; preds = %295
  %303 = load i8, i8* %14, align 1
  %304 = zext i8 %303 to i64
  %305 = getelementptr inbounds %struct.Token, %struct.Token* %284, i64 %304
  %306 = load i8, i8* %17, align 1
  %307 = zext i8 %306 to i64
  %308 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %307
  %309 = bitcast %struct.Token* %305 to i8*
  %310 = bitcast %struct.Token* %308 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %309, i8* align 8 %310, i64 40, i1 false)
  %311 = load i8, i8* %14, align 1
  %312 = add i8 %311, 1
  store i8 %312, i8* %14, align 1
  br label %505

313:                                              ; preds = %295
  %314 = load i8, i8* %17, align 1
  %315 = zext i8 %314 to i64
  %316 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %315
  %317 = getelementptr inbounds %struct.Token, %struct.Token* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 0
  %320 = load i8, i8* %319, align 8
  %321 = sext i8 %320 to i32
  %322 = icmp eq i32 %321, 141
  br i1 %322, label %323, label %334

323:                                              ; preds = %313
  %324 = load i8, i8* %15, align 1
  %325 = zext i8 %324 to i64
  %326 = getelementptr inbounds %struct.Token, %struct.Token* %288, i64 %325
  %327 = load i8, i8* %17, align 1
  %328 = zext i8 %327 to i64
  %329 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %328
  %330 = bitcast %struct.Token* %326 to i8*
  %331 = bitcast %struct.Token* %329 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %330, i8* align 8 %331, i64 40, i1 false)
  %332 = load i8, i8* %15, align 1
  %333 = add i8 %332, 1
  store i8 %333, i8* %15, align 1
  br label %504

334:                                              ; preds = %313
  %335 = load i8, i8* %17, align 1
  %336 = zext i8 %335 to i64
  %337 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %336
  %338 = getelementptr inbounds %struct.Token, %struct.Token* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 0
  %341 = load i8, i8* %340, align 8
  %342 = sext i8 %341 to i32
  %343 = icmp eq i32 %342, 138
  br i1 %343, label %344, label %379

344:                                              ; preds = %334
  br label %345

345:                                              ; preds = %357, %344
  %346 = load i8, i8* %15, align 1
  %347 = zext i8 %346 to i32
  %348 = sub nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.Token, %struct.Token* %288, i64 %349
  %351 = getelementptr inbounds %struct.Token, %struct.Token* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 0
  %354 = load i8, i8* %353, align 8
  %355 = sext i8 %354 to i32
  %356 = icmp ne i32 %355, 141
  br i1 %356, label %357, label %372

357:                                              ; preds = %345
  %358 = load i8, i8* %14, align 1
  %359 = zext i8 %358 to i64
  %360 = getelementptr inbounds %struct.Token, %struct.Token* %284, i64 %359
  %361 = load i8, i8* %15, align 1
  %362 = zext i8 %361 to i32
  %363 = sub nsw i32 %362, 1
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.Token, %struct.Token* %288, i64 %364
  %366 = bitcast %struct.Token* %360 to i8*
  %367 = bitcast %struct.Token* %365 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %366, i8* align 8 %367, i64 40, i1 false)
  %368 = load i8, i8* %14, align 1
  %369 = add i8 %368, 1
  store i8 %369, i8* %14, align 1
  %370 = load i8, i8* %15, align 1
  %371 = add i8 %370, -1
  store i8 %371, i8* %15, align 1
  br label %345

372:                                              ; preds = %345
  %373 = load i8, i8* %15, align 1
  %374 = add i8 %373, -1
  store i8 %374, i8* %15, align 1
  %375 = load i8, i8* %16, align 1
  %376 = zext i8 %375 to i32
  %377 = add nsw i32 %376, 2
  %378 = trunc i32 %377 to i8
  store i8 %378, i8* %16, align 1
  br label %503

379:                                              ; preds = %334
  %380 = load i8, i8* %17, align 1
  %381 = zext i8 %380 to i64
  %382 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %381
  %383 = getelementptr inbounds %struct.Token, %struct.Token* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %388, label %399

388:                                              ; preds = %379
  %389 = load i8, i8* %15, align 1
  %390 = zext i8 %389 to i64
  %391 = getelementptr inbounds %struct.Token, %struct.Token* %288, i64 %390
  %392 = load i8, i8* %17, align 1
  %393 = zext i8 %392 to i64
  %394 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %393
  %395 = bitcast %struct.Token* %391 to i8*
  %396 = bitcast %struct.Token* %394 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %395, i8* align 8 %396, i64 40, i1 false)
  %397 = load i8, i8* %15, align 1
  %398 = add i8 %397, 1
  store i8 %398, i8* %15, align 1
  br label %502

399:                                              ; preds = %379
  br label %400

400:                                              ; preds = %476, %399
  %401 = load i8, i8* %15, align 1
  %402 = zext i8 %401 to i32
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %474

404:                                              ; preds = %400
  %405 = load i8, i8* %15, align 1
  %406 = zext i8 %405 to i32
  %407 = sub nsw i32 %406, 1
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.Token, %struct.Token* %288, i64 %408
  %410 = getelementptr inbounds %struct.Token, %struct.Token* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %411, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %462, label %415

415:                                              ; preds = %404
  %416 = load i8, i8* %17, align 1
  %417 = zext i8 %416 to i64
  %418 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %417
  %419 = getelementptr inbounds %struct.Token, %struct.Token* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = load i8, i8* %15, align 1
  %424 = zext i8 %423 to i32
  %425 = sub nsw i32 %424, 1
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.Token, %struct.Token* %288, i64 %426
  %428 = getelementptr inbounds %struct.Token, %struct.Token* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %429, i32 0, i32 1
  %431 = load i64, i64* %430, align 8
  %432 = icmp slt i64 %422, %431
  br i1 %432, label %462, label %433

433:                                              ; preds = %415
  %434 = load i8, i8* %17, align 1
  %435 = zext i8 %434 to i64
  %436 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %435
  %437 = getelementptr inbounds %struct.Token, %struct.Token* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %438, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = load i8, i8* %15, align 1
  %442 = zext i8 %441 to i32
  %443 = sub nsw i32 %442, 1
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.Token, %struct.Token* %288, i64 %444
  %446 = getelementptr inbounds %struct.Token, %struct.Token* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = icmp eq i64 %440, %449
  br i1 %450, label %451, label %474

451:                                              ; preds = %433
  %452 = load i8, i8* %15, align 1
  %453 = zext i8 %452 to i32
  %454 = sub nsw i32 %453, 1
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.Token, %struct.Token* %288, i64 %455
  %457 = getelementptr inbounds %struct.Token, %struct.Token* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %474

462:                                              ; preds = %451, %415, %404
  %463 = load i8, i8* %15, align 1
  %464 = zext i8 %463 to i32
  %465 = sub nsw i32 %464, 1
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.Token, %struct.Token* %288, i64 %466
  %468 = getelementptr inbounds %struct.Token, %struct.Token* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %469, i32 0, i32 0
  %471 = load i8, i8* %470, align 8
  %472 = sext i8 %471 to i32
  %473 = icmp ne i32 %472, 141
  br label %474

474:                                              ; preds = %462, %451, %433, %400
  %475 = phi i1 [ false, %451 ], [ false, %433 ], [ false, %400 ], [ %473, %462 ]
  br i1 %475, label %476, label %491

476:                                              ; preds = %474
  %477 = load i8, i8* %14, align 1
  %478 = zext i8 %477 to i64
  %479 = getelementptr inbounds %struct.Token, %struct.Token* %284, i64 %478
  %480 = load i8, i8* %15, align 1
  %481 = zext i8 %480 to i32
  %482 = sub nsw i32 %481, 1
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.Token, %struct.Token* %288, i64 %483
  %485 = bitcast %struct.Token* %479 to i8*
  %486 = bitcast %struct.Token* %484 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %485, i8* align 8 %486, i64 40, i1 false)
  %487 = load i8, i8* %14, align 1
  %488 = add i8 %487, 1
  store i8 %488, i8* %14, align 1
  %489 = load i8, i8* %15, align 1
  %490 = add i8 %489, -1
  store i8 %490, i8* %15, align 1
  br label %400

491:                                              ; preds = %474
  %492 = load i8, i8* %15, align 1
  %493 = zext i8 %492 to i64
  %494 = getelementptr inbounds %struct.Token, %struct.Token* %288, i64 %493
  %495 = load i8, i8* %17, align 1
  %496 = zext i8 %495 to i64
  %497 = getelementptr inbounds %struct.Token, %struct.Token* %34, i64 %496
  %498 = bitcast %struct.Token* %494 to i8*
  %499 = bitcast %struct.Token* %497 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %498, i8* align 8 %499, i64 40, i1 false)
  %500 = load i8, i8* %15, align 1
  %501 = add i8 %500, 1
  store i8 %501, i8* %15, align 1
  br label %502

502:                                              ; preds = %491, %388
  br label %503

503:                                              ; preds = %502, %372
  br label %504

504:                                              ; preds = %503, %323
  br label %505

505:                                              ; preds = %504, %302
  br label %506

506:                                              ; preds = %505
  %507 = load i8, i8* %17, align 1
  %508 = add i8 %507, 1
  store i8 %508, i8* %17, align 1
  br label %289

509:                                              ; preds = %289
  %510 = load i8, i8* %16, align 1
  %511 = zext i8 %510 to i32
  %512 = load i8, i8* %8, align 1
  %513 = zext i8 %512 to i32
  %514 = sub nsw i32 %513, %511
  %515 = trunc i32 %514 to i8
  store i8 %515, i8* %8, align 1
  %516 = load i8, i8* %15, align 1
  %517 = zext i8 %516 to i32
  %518 = sub nsw i32 %517, 1
  %519 = trunc i32 %518 to i8
  store i8 %519, i8* %18, align 1
  br label %520

520:                                              ; preds = %537, %509
  %521 = load i8, i8* %18, align 1
  %522 = sext i8 %521 to i32
  %523 = icmp sge i32 %522, 0
  br i1 %523, label %524, label %540

524:                                              ; preds = %520
  %525 = load i8, i8* %14, align 1
  %526 = zext i8 %525 to i64
  %527 = getelementptr inbounds %struct.Token, %struct.Token* %284, i64 %526
  %528 = load i8, i8* %18, align 1
  %529 = sext i8 %528 to i64
  %530 = getelementptr inbounds %struct.Token, %struct.Token* %288, i64 %529
  %531 = bitcast %struct.Token* %527 to i8*
  %532 = bitcast %struct.Token* %530 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %531, i8* align 8 %532, i64 40, i1 false)
  %533 = load i8, i8* %14, align 1
  %534 = add i8 %533, 1
  store i8 %534, i8* %14, align 1
  %535 = load i8, i8* %15, align 1
  %536 = add i8 %535, -1
  store i8 %536, i8* %15, align 1
  br label %537

537:                                              ; preds = %524
  %538 = load i8, i8* %18, align 1
  %539 = add i8 %538, -1
  store i8 %539, i8* %18, align 1
  br label %520

540:                                              ; preds = %520
  %541 = load i32, i32* @CALC_BUFFER_SIZE, align 4
  %542 = zext i32 %541 to i64
  %543 = alloca double, i64 %542, align 16
  store i64 %542, i64* %19, align 8
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  br label %544

544:                                              ; preds = %715, %540
  %545 = load i8, i8* %21, align 1
  %546 = zext i8 %545 to i32
  %547 = load i8, i8* %8, align 1
  %548 = zext i8 %547 to i32
  %549 = icmp slt i32 %546, %548
  br i1 %549, label %550, label %718

550:                                              ; preds = %544
  %551 = load i8, i8* %21, align 1
  %552 = zext i8 %551 to i64
  %553 = getelementptr inbounds %struct.Token, %struct.Token* %284, i64 %552
  %554 = getelementptr inbounds %struct.Token, %struct.Token* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %569

557:                                              ; preds = %550
  %558 = load i8, i8* %21, align 1
  %559 = zext i8 %558 to i64
  %560 = getelementptr inbounds %struct.Token, %struct.Token* %284, i64 %559
  %561 = getelementptr inbounds %struct.Token, %struct.Token* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %561, i32 0, i32 0
  %563 = load double, double* %562, align 8
  %564 = load i8, i8* %20, align 1
  %565 = zext i8 %564 to i64
  %566 = getelementptr inbounds double, double* %543, i64 %565
  store double %563, double* %566, align 8
  %567 = load i8, i8* %20, align 1
  %568 = add i8 %567, 1
  store i8 %568, i8* %20, align 1
  br label %715

569:                                              ; preds = %550
  %570 = load i8, i8* %21, align 1
  %571 = zext i8 %570 to i64
  %572 = getelementptr inbounds %struct.Token, %struct.Token* %284, i64 %571
  %573 = getelementptr inbounds %struct.Token, %struct.Token* %572, i32 0, i32 1
  %574 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %573, i32 0, i32 1
  %575 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %574, i32 0, i32 1
  %576 = load i64, i64* %575, align 8
  %577 = icmp eq i64 %576, 0
  br i1 %577, label %578, label %622

578:                                              ; preds = %569
  %579 = load i8, i8* %20, align 1
  %580 = zext i8 %579 to i32
  %581 = icmp slt i32 %580, 1
  br i1 %581, label %582, label %583

582:                                              ; preds = %578
  br label %621

583:                                              ; preds = %578
  %584 = load i8, i8* %20, align 1
  %585 = zext i8 %584 to i32
  %586 = icmp sge i32 %585, 1
  br i1 %586, label %587, label %620

587:                                              ; preds = %583
  %588 = load i8, i8* %21, align 1
  %589 = zext i8 %588 to i64
  %590 = getelementptr inbounds %struct.Token, %struct.Token* %284, i64 %589
  %591 = getelementptr inbounds %struct.Token, %struct.Token* %590, i32 0, i32 1
  %592 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %591, i32 0, i32 1
  %593 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %592, i32 0, i32 0
  %594 = load i8, i8* %593, align 8
  %595 = sext i8 %594 to i32
  switch i32 %595, label %605 [
    i32 131, label %596
    i32 140, label %597
    i32 128, label %598
    i32 143, label %599
    i32 145, label %600
    i32 142, label %601
    i32 135, label %602
    i32 134, label %603
    i32 130, label %604
  ]

596:                                              ; preds = %587
  store double (double)* @sin, double (double)** %22, align 8
  br label %606

597:                                              ; preds = %587
  store double (double)* @cos, double (double)** %22, align 8
  br label %606

598:                                              ; preds = %587
  store double (double)* @tan, double (double)** %22, align 8
  br label %606

599:                                              ; preds = %587
  store double (double)* @asin, double (double)** %22, align 8
  br label %606

600:                                              ; preds = %587
  store double (double)* @acos, double (double)** %22, align 8
  br label %606

601:                                              ; preds = %587
  store double (double)* @atan, double (double)** %22, align 8
  br label %606

602:                                              ; preds = %587
  store double (double)* @log, double (double)** %22, align 8
  br label %606

603:                                              ; preds = %587
  store double (double)* @log10, double (double)** %22, align 8
  br label %606

604:                                              ; preds = %587
  store double (double)* @sqrt, double (double)** %22, align 8
  br label %606

605:                                              ; preds = %587
  br label %715

606:                                              ; preds = %604, %603, %602, %601, %600, %599, %598, %597, %596
  %607 = load double (double)*, double (double)** %22, align 8
  %608 = load i8, i8* %20, align 1
  %609 = zext i8 %608 to i32
  %610 = sub nsw i32 %609, 1
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds double, double* %543, i64 %611
  %613 = load double, double* %612, align 8
  %614 = call double %607(double %613)
  %615 = load i8, i8* %20, align 1
  %616 = zext i8 %615 to i32
  %617 = sub nsw i32 %616, 1
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds double, double* %543, i64 %618
  store double %614, double* %619, align 8
  br label %620

620:                                              ; preds = %606, %583
  br label %621

621:                                              ; preds = %620, %582
  br label %714

622:                                              ; preds = %569
  %623 = load i8, i8* %20, align 1
  %624 = zext i8 %623 to i32
  %625 = icmp sge i32 %624, 2
  br i1 %625, label %626, label %713

626:                                              ; preds = %622
  %627 = load i8, i8* %21, align 1
  %628 = zext i8 %627 to i64
  %629 = getelementptr inbounds %struct.Token, %struct.Token* %284, i64 %628
  %630 = getelementptr inbounds %struct.Token, %struct.Token* %629, i32 0, i32 1
  %631 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %630, i32 0, i32 1
  %632 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %631, i32 0, i32 0
  %633 = load i8, i8* %632, align 8
  %634 = sext i8 %633 to i32
  switch i32 %634, label %710 [
    i32 144, label %635
    i32 129, label %649
    i32 133, label %663
    i32 139, label %677
    i32 136, label %691
  ]

635:                                              ; preds = %626
  %636 = load i8, i8* %20, align 1
  %637 = zext i8 %636 to i32
  %638 = sub nsw i32 %637, 1
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds double, double* %543, i64 %639
  %641 = load double, double* %640, align 8
  %642 = load i8, i8* %20, align 1
  %643 = zext i8 %642 to i32
  %644 = sub nsw i32 %643, 2
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds double, double* %543, i64 %645
  %647 = load double, double* %646, align 8
  %648 = fadd double %647, %641
  store double %648, double* %646, align 8
  br label %710

649:                                              ; preds = %626
  %650 = load i8, i8* %20, align 1
  %651 = zext i8 %650 to i32
  %652 = sub nsw i32 %651, 1
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds double, double* %543, i64 %653
  %655 = load double, double* %654, align 8
  %656 = load i8, i8* %20, align 1
  %657 = zext i8 %656 to i32
  %658 = sub nsw i32 %657, 2
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds double, double* %543, i64 %659
  %661 = load double, double* %660, align 8
  %662 = fsub double %661, %655
  store double %662, double* %660, align 8
  br label %710

663:                                              ; preds = %626
  %664 = load i8, i8* %20, align 1
  %665 = zext i8 %664 to i32
  %666 = sub nsw i32 %665, 1
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds double, double* %543, i64 %667
  %669 = load double, double* %668, align 8
  %670 = load i8, i8* %20, align 1
  %671 = zext i8 %670 to i32
  %672 = sub nsw i32 %671, 2
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds double, double* %543, i64 %673
  %675 = load double, double* %674, align 8
  %676 = fmul double %675, %669
  store double %676, double* %674, align 8
  br label %710

677:                                              ; preds = %626
  %678 = load i8, i8* %20, align 1
  %679 = zext i8 %678 to i32
  %680 = sub nsw i32 %679, 1
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds double, double* %543, i64 %681
  %683 = load double, double* %682, align 8
  %684 = load i8, i8* %20, align 1
  %685 = zext i8 %684 to i32
  %686 = sub nsw i32 %685, 2
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds double, double* %543, i64 %687
  %689 = load double, double* %688, align 8
  %690 = fdiv double %689, %683
  store double %690, double* %688, align 8
  br label %710

691:                                              ; preds = %626
  %692 = load i8, i8* %20, align 1
  %693 = zext i8 %692 to i32
  %694 = sub nsw i32 %693, 2
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds double, double* %543, i64 %695
  %697 = load double, double* %696, align 8
  %698 = load i8, i8* %20, align 1
  %699 = zext i8 %698 to i32
  %700 = sub nsw i32 %699, 1
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds double, double* %543, i64 %701
  %703 = load double, double* %702, align 8
  %704 = call double @pow(double %697, double %703) #1
  %705 = load i8, i8* %20, align 1
  %706 = zext i8 %705 to i32
  %707 = sub nsw i32 %706, 2
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds double, double* %543, i64 %708
  store double %704, double* %709, align 8
  br label %710

710:                                              ; preds = %626, %691, %677, %663, %649, %635
  %711 = load i8, i8* %20, align 1
  %712 = add i8 %711, -1
  store i8 %712, i8* %20, align 1
  br label %713

713:                                              ; preds = %710, %622
  br label %714

714:                                              ; preds = %713, %621
  br label %715

715:                                              ; preds = %714, %605, %557
  %716 = load i8, i8* %21, align 1
  %717 = add i8 %716, 1
  store i8 %717, i8* %21, align 1
  br label %544

718:                                              ; preds = %544
  %719 = getelementptr inbounds double, double* %543, i64 0
  %720 = load double, double* %719, align 16
  %721 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %721)
  ret double %720
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local double @atof(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local double @sin(double) #4

; Function Attrs: nounwind
declare dso_local double @cos(double) #4

; Function Attrs: nounwind
declare dso_local double @tan(double) #4

; Function Attrs: nounwind
declare dso_local double @asin(double) #4

; Function Attrs: nounwind
declare dso_local double @acos(double) #4

; Function Attrs: nounwind
declare dso_local double @atan(double) #4

; Function Attrs: nounwind
declare dso_local double @log(double) #4

; Function Attrs: nounwind
declare dso_local double @log10(double) #4

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #4

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
