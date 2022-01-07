; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_str_to_number.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_str_to_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@str_to_number.infinityW = internal constant [8 x i8] c"Infinity", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@NAN = common dso_local global double 0.000000e+00, align 8
@INFINITY = common dso_local global double 0.000000e+00, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, double*)* @str_to_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_to_number(i32* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store double* %1, double** %5, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @jsstr_flatten(i32* %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %19, i32* %3, align 4
  br label %252

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %26, %20
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @iswspace(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  br label %21

29:                                               ; preds = %21
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 45
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i64, i64* @TRUE, align 8
  store i64 %35, i64* %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  br label %47

38:                                               ; preds = %29
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 43
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str_to_number.infinityW, i64 0, i64 0))
  %50 = call i32 @wcsncmp(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str_to_number.infinityW, i64 0, i64 0), i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %92, label %52

52:                                               ; preds = %47
  %53 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str_to_number.infinityW, i64 0, i64 0))
  %54 = load i8*, i8** %6, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %6, align 8
  br label %57

57:                                               ; preds = %69, %52
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @iswspace(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ false, %57 ], [ %66, %62 ]
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  br label %57

72:                                               ; preds = %67
  %73 = load i8*, i8** %6, align 8
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load double, double* @NAN, align 8
  %78 = load double*, double** %5, align 8
  store double %77, double* %78, align 8
  br label %90

79:                                               ; preds = %72
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load double, double* @INFINITY, align 8
  %84 = fneg double %83
  br label %87

85:                                               ; preds = %79
  %86 = load double, double* @INFINITY, align 8
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi double [ %84, %82 ], [ %86, %85 ]
  %89 = load double*, double** %5, align 8
  store double %88, double* %89, align 8
  br label %90

90:                                               ; preds = %87, %76
  %91 = load i32, i32* @S_OK, align 4
  store i32 %91, i32* %3, align 4
  br label %252

92:                                               ; preds = %47
  %93 = load i8*, i8** %6, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 48
  br i1 %96, label %97, label %123

97:                                               ; preds = %92
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 120
  br i1 %102, label %103, label %123

103:                                              ; preds = %97
  store i32 0, i32* %9, align 4
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  store i8* %105, i8** %6, align 8
  br label %106

106:                                              ; preds = %111, %103
  %107 = load i8*, i8** %6, align 8
  %108 = load i8, i8* %107, align 1
  %109 = call i32 @hex_to_int(i8 signext %108)
  store i32 %109, i32* %9, align 4
  %110 = icmp ne i32 %109, -1
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i32, i32* %8, align 4
  %113 = mul nsw i32 %112, 16
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %113, %114
  store i32 %115, i32* %8, align 4
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %6, align 8
  br label %106

118:                                              ; preds = %106
  %119 = load i32, i32* %8, align 4
  %120 = sitofp i32 %119 to double
  %121 = load double*, double** %5, align 8
  store double %120, double* %121, align 8
  %122 = load i32, i32* @S_OK, align 4
  store i32 %122, i32* %3, align 4
  br label %252

123:                                              ; preds = %97, %92
  br label %124

124:                                              ; preds = %129, %123
  %125 = load i8*, i8** %6, align 8
  %126 = load i8, i8* %125, align 1
  %127 = call i64 @iswdigit(i8 signext %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %124
  %130 = load i32, i32* %8, align 4
  %131 = mul nsw i32 %130, 10
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %6, align 8
  %134 = load i8, i8* %132, align 1
  %135 = sext i8 %134 to i32
  %136 = sub nsw i32 %135, 48
  %137 = add nsw i32 %131, %136
  store i32 %137, i32* %8, align 4
  br label %124

138:                                              ; preds = %124
  %139 = load i8*, i8** %6, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 101
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i8*, i8** %6, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 69
  br i1 %147, label %148, label %195

148:                                              ; preds = %143, %138
  %149 = load i64, i64* @FALSE, align 8
  store i64 %149, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %150 = load i8*, i8** %6, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %6, align 8
  %152 = load i8*, i8** %6, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 45
  br i1 %155, label %156, label %160

156:                                              ; preds = %148
  %157 = load i8*, i8** %6, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %6, align 8
  %159 = load i64, i64* @TRUE, align 8
  store i64 %159, i64* %10, align 8
  br label %169

160:                                              ; preds = %148
  %161 = load i8*, i8** %6, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 43
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i8*, i8** %6, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %6, align 8
  br label %168

168:                                              ; preds = %165, %160
  br label %169

169:                                              ; preds = %168, %156
  br label %170

170:                                              ; preds = %175, %169
  %171 = load i8*, i8** %6, align 8
  %172 = load i8, i8* %171, align 1
  %173 = call i64 @iswdigit(i8 signext %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %170
  %176 = load i32, i32* %11, align 4
  %177 = mul nsw i32 %176, 10
  %178 = load i8*, i8** %6, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %6, align 8
  %180 = load i8, i8* %178, align 1
  %181 = sext i8 %180 to i32
  %182 = sub nsw i32 %181, 48
  %183 = add nsw i32 %177, %182
  store i32 %183, i32* %11, align 4
  br label %170

184:                                              ; preds = %170
  %185 = load i64, i64* %10, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* %11, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %11, align 4
  br label %190

190:                                              ; preds = %187, %184
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @pow(i32 10, i32 %191)
  %193 = load i32, i32* %8, align 4
  %194 = mul nsw i32 %193, %192
  store i32 %194, i32* %8, align 4
  br label %224

195:                                              ; preds = %143
  %196 = load i8*, i8** %6, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 46
  br i1 %199, label %200, label %223

200:                                              ; preds = %195
  store i32 0, i32* %12, align 4
  %201 = load i8*, i8** %6, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %6, align 8
  br label %203

203:                                              ; preds = %208, %200
  %204 = load i8*, i8** %6, align 8
  %205 = load i8, i8* %204, align 1
  %206 = call i64 @iswdigit(i8 signext %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %203
  %209 = load i32, i32* %12, align 4
  %210 = load i8*, i8** %6, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %6, align 8
  %212 = load i8, i8* %210, align 1
  %213 = sext i8 %212 to i32
  %214 = sub nsw i32 %213, 48
  %215 = mul nsw i32 %209, %214
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %8, align 4
  %218 = load i32, i32* %12, align 4
  %219 = sitofp i32 %218 to double
  %220 = fmul double %219, 1.000000e-01
  %221 = fptosi double %220 to i32
  store i32 %221, i32* %12, align 4
  br label %203

222:                                              ; preds = %203
  br label %223

223:                                              ; preds = %222, %195
  br label %224

224:                                              ; preds = %223, %190
  br label %225

225:                                              ; preds = %230, %224
  %226 = load i8*, i8** %6, align 8
  %227 = load i8, i8* %226, align 1
  %228 = call i64 @iswspace(i8 signext %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load i8*, i8** %6, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %6, align 8
  br label %225

233:                                              ; preds = %225
  %234 = load i8*, i8** %6, align 8
  %235 = load i8, i8* %234, align 1
  %236 = icmp ne i8 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = load double, double* @NAN, align 8
  %239 = load double*, double** %5, align 8
  store double %238, double* %239, align 8
  %240 = load i32, i32* @S_OK, align 4
  store i32 %240, i32* %3, align 4
  br label %252

241:                                              ; preds = %233
  %242 = load i64, i64* %7, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i32, i32* %8, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %8, align 4
  br label %247

247:                                              ; preds = %244, %241
  %248 = load i32, i32* %8, align 4
  %249 = sitofp i32 %248 to double
  %250 = load double*, double** %5, align 8
  store double %249, double* %250, align 8
  %251 = load i32, i32* @S_OK, align 4
  store i32 %251, i32* %3, align 4
  br label %252

252:                                              ; preds = %247, %237, %118, %90, %18
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

declare dso_local i8* @jsstr_flatten(i32*) #1

declare dso_local i64 @iswspace(i8 signext) #1

declare dso_local i32 @wcsncmp(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @hex_to_int(i8 signext) #1

declare dso_local i64 @iswdigit(i8 signext) #1

declare dso_local i32 @pow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
