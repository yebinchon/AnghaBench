; ModuleID = '/home/carl/AnghaBench/lz4/tests/extr_datagencli.c_main.c'
source_filename = "/home/carl/AnghaBench/lz4/tests/extr_datagencli.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPRESSIBILITY_DEFAULT = common dso_local global double 0.000000e+00, align 8
@SIZE_DEFAULT = common dso_local global i32 0, align 4
@SEED_DEFAULT = common dso_local global i32 0, align 4
@displayLevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Data Generator %s \0A\00", align 1
@LZ4_VERSION_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Seed = %u \0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Compressibility : %i%%\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load double, double* @COMPRESSIBILITY_DEFAULT, align 8
  %14 = fdiv double %13, 1.000000e+02
  store double %14, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %15 = load i32, i32* @SIZE_DEFAULT, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @SEED_DEFAULT, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %11, align 8
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %222, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %225

24:                                               ; preds = %20
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %222

33:                                               ; preds = %24
  %34 = load i8*, i8** %12, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 45
  br i1 %37, label %38, label %221

38:                                               ; preds = %33
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %12, align 8
  br label %41

41:                                               ; preds = %219, %38
  %42 = load i8*, i8** %12, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %220

46:                                               ; preds = %41
  %47 = load i8*, i8** %12, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  switch i32 %49, label %216 [
    i32 104, label %50
    i32 103, label %53
    i32 115, label %118
    i32 80, label %145
    i32 76, label %179
    i32 118, label %213
  ]

50:                                               ; preds = %46
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @usage(i8* %51)
  store i32 %52, i32* %3, align 4
  br label %245

53:                                               ; preds = %46
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %12, align 8
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %68, %53
  %57 = load i8*, i8** %12, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sge i32 %59, 48
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i8*, i8** %12, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sle i32 %64, 57
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i1 [ false, %56 ], [ %65, %61 ]
  br i1 %67, label %68, label %79

68:                                               ; preds = %66
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %69, 10
  store i32 %70, i32* %9, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = sub nsw i32 %73, 48
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %12, align 8
  br label %56

79:                                               ; preds = %66
  %80 = load i8*, i8** %12, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 75
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = shl i32 %85, 10
  store i32 %86, i32* %9, align 4
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %12, align 8
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i8*, i8** %12, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 77
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  %96 = shl i32 %95, 20
  store i32 %96, i32* %9, align 4
  %97 = load i8*, i8** %12, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %12, align 8
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i8*, i8** %12, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 71
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* %9, align 4
  %106 = shl i32 %105, 30
  store i32 %106, i32* %9, align 4
  %107 = load i8*, i8** %12, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %12, align 8
  br label %109

109:                                              ; preds = %104, %99
  %110 = load i8*, i8** %12, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 66
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i8*, i8** %12, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %12, align 8
  br label %117

117:                                              ; preds = %114, %109
  br label %219

118:                                              ; preds = %46
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %133, %118
  %122 = load i8*, i8** %12, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sge i32 %124, 48
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i8*, i8** %12, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp sle i32 %129, 57
  br label %131

131:                                              ; preds = %126, %121
  %132 = phi i1 [ false, %121 ], [ %130, %126 ]
  br i1 %132, label %133, label %144

133:                                              ; preds = %131
  %134 = load i32, i32* %10, align 4
  %135 = mul nsw i32 %134, 10
  store i32 %135, i32* %10, align 4
  %136 = load i8*, i8** %12, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = sub nsw i32 %138, 48
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %10, align 4
  %142 = load i8*, i8** %12, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %12, align 8
  br label %121

144:                                              ; preds = %131
  br label %219

145:                                              ; preds = %46
  %146 = load i8*, i8** %12, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %12, align 8
  store double 0.000000e+00, double* %7, align 8
  br label %148

148:                                              ; preds = %160, %145
  %149 = load i8*, i8** %12, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp sge i32 %151, 48
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i8*, i8** %12, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp sle i32 %156, 57
  br label %158

158:                                              ; preds = %153, %148
  %159 = phi i1 [ false, %148 ], [ %157, %153 ]
  br i1 %159, label %160, label %172

160:                                              ; preds = %158
  %161 = load double, double* %7, align 8
  %162 = fmul double %161, 1.000000e+01
  store double %162, double* %7, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = sub nsw i32 %165, 48
  %167 = sitofp i32 %166 to double
  %168 = load double, double* %7, align 8
  %169 = fadd double %168, %167
  store double %169, double* %7, align 8
  %170 = load i8*, i8** %12, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %12, align 8
  br label %148

172:                                              ; preds = %158
  %173 = load double, double* %7, align 8
  %174 = fcmp ogt double %173, 1.000000e+02
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store double 1.000000e+02, double* %7, align 8
  br label %176

176:                                              ; preds = %175, %172
  %177 = load double, double* %7, align 8
  %178 = fdiv double %177, 1.000000e+02
  store double %178, double* %7, align 8
  br label %219

179:                                              ; preds = %46
  %180 = load i8*, i8** %12, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %12, align 8
  store double 0.000000e+00, double* %8, align 8
  br label %182

182:                                              ; preds = %194, %179
  %183 = load i8*, i8** %12, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp sge i32 %185, 48
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load i8*, i8** %12, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp sle i32 %190, 57
  br label %192

192:                                              ; preds = %187, %182
  %193 = phi i1 [ false, %182 ], [ %191, %187 ]
  br i1 %193, label %194, label %206

194:                                              ; preds = %192
  %195 = load double, double* %8, align 8
  %196 = fmul double %195, 1.000000e+01
  store double %196, double* %8, align 8
  %197 = load i8*, i8** %12, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = sub nsw i32 %199, 48
  %201 = sitofp i32 %200 to double
  %202 = load double, double* %8, align 8
  %203 = fadd double %202, %201
  store double %203, double* %8, align 8
  %204 = load i8*, i8** %12, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %12, align 8
  br label %182

206:                                              ; preds = %192
  %207 = load double, double* %8, align 8
  %208 = fcmp ogt double %207, 1.000000e+02
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  store double 1.000000e+02, double* %8, align 8
  br label %210

210:                                              ; preds = %209, %206
  %211 = load double, double* %8, align 8
  %212 = fdiv double %211, 1.000000e+02
  store double %212, double* %8, align 8
  br label %219

213:                                              ; preds = %46
  store i32 4, i32* @displayLevel, align 4
  %214 = load i8*, i8** %12, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %12, align 8
  br label %219

216:                                              ; preds = %46
  %217 = load i8*, i8** %11, align 8
  %218 = call i32 @usage(i8* %217)
  store i32 %218, i32* %3, align 4
  br label %245

219:                                              ; preds = %213, %210, %176, %144, %117
  br label %41

220:                                              ; preds = %41
  br label %221

221:                                              ; preds = %220, %33
  br label %222

222:                                              ; preds = %221, %32
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %20

225:                                              ; preds = %20
  %226 = load i32, i32* @LZ4_VERSION_STRING, align 4
  %227 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* %10, align 4
  %229 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %228)
  %230 = load double, double* %7, align 8
  %231 = load double, double* @COMPRESSIBILITY_DEFAULT, align 8
  %232 = fcmp une double %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %225
  %234 = load double, double* %7, align 8
  %235 = fmul double %234, 1.000000e+02
  %236 = fptosi double %235 to i32
  %237 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %236)
  br label %238

238:                                              ; preds = %233, %225
  %239 = load i32, i32* %9, align 4
  %240 = load double, double* %7, align 8
  %241 = load double, double* %8, align 8
  %242 = load i32, i32* %10, align 4
  %243 = call i32 @RDG_genOut(i32 %239, double %240, double %241, i32 %242)
  %244 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %238, %216, %50
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i32 @RDG_genOut(i32, double, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
