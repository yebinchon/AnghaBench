; ModuleID = '/home/carl/AnghaBench/netdata/health/extr_health_config.c_health_parse_delay.c'
source_filename = "/home/carl/AnghaBench/netdata/health/extr_health_config.c_health_parse_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"Health configuration at line %zu of file '%s': invalid value '%s' for '%s' keyword\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"multiplier\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Health configuration at line %zu of file '%s': unknown keyword '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i8*, i32*, i32*, i32*, float*)* @health_parse_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @health_parse_delay(i64 %0, i8* %1, i8* %2, i32* %3, i32* %4, i32* %5, float* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store float* %6, float** %14, align 8
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %18, align 1
  %22 = load i8*, i8** %10, align 8
  store i8* %22, i8** %19, align 8
  br label %23

23:                                               ; preds = %189, %7
  %24 = load i8*, i8** %19, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %190

27:                                               ; preds = %23
  %28 = load i8*, i8** %19, align 8
  store i8* %28, i8** %20, align 8
  br label %29

29:                                               ; preds = %42, %27
  %30 = load i8*, i8** %19, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i8*, i8** %19, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @isspace(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %34, %29
  %41 = phi i1 [ false, %29 ], [ %39, %34 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i8*, i8** %19, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %19, align 8
  br label %29

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %58, %45
  %47 = load i8*, i8** %19, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i8*, i8** %19, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @isspace(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi i1 [ false, %46 ], [ %55, %51 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i8*, i8** %19, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %19, align 8
  store i8 0, i8* %59, align 1
  br label %46

61:                                               ; preds = %56
  %62 = load i8*, i8** %20, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  br label %190

66:                                               ; preds = %61
  %67 = load i8*, i8** %19, align 8
  store i8* %67, i8** %21, align 8
  br label %68

68:                                               ; preds = %81, %66
  %69 = load i8*, i8** %19, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i8*, i8** %19, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call i64 @isspace(i8 signext %75)
  %77 = icmp ne i64 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %73, %68
  %80 = phi i1 [ false, %68 ], [ %78, %73 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i8*, i8** %19, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %19, align 8
  br label %68

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %97, %84
  %86 = load i8*, i8** %19, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i8*, i8** %19, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call i64 @isspace(i8 signext %92)
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %90, %85
  %96 = phi i1 [ false, %85 ], [ %94, %90 ]
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = load i8*, i8** %19, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %19, align 8
  store i8 0, i8* %98, align 1
  br label %85

100:                                              ; preds = %95
  %101 = load i8*, i8** %20, align 8
  %102 = call i32 @strcasecmp(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %117, label %104

104:                                              ; preds = %100
  %105 = load i8*, i8** %21, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @config_parse_duration(i8* %105, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %104
  %110 = load i64, i64* %8, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load i8*, i8** %21, align 8
  %113 = load i8*, i8** %20, align 8
  %114 = call i32 (i8*, i64, i8*, i8*, ...) @error(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i64 %110, i8* %111, i8* %112, i8* %113)
  br label %116

115:                                              ; preds = %104
  store i8 1, i8* %15, align 1
  br label %116

116:                                              ; preds = %115, %109
  br label %189

117:                                              ; preds = %100
  %118 = load i8*, i8** %20, align 8
  %119 = call i32 @strcasecmp(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %134, label %121

121:                                              ; preds = %117
  %122 = load i8*, i8** %21, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @config_parse_duration(i8* %122, i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %121
  %127 = load i64, i64* %8, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = load i8*, i8** %21, align 8
  %130 = load i8*, i8** %20, align 8
  %131 = call i32 (i8*, i64, i8*, i8*, ...) @error(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i64 %127, i8* %128, i8* %129, i8* %130)
  br label %133

132:                                              ; preds = %121
  store i8 1, i8* %16, align 1
  br label %133

133:                                              ; preds = %132, %126
  br label %188

134:                                              ; preds = %117
  %135 = load i8*, i8** %20, align 8
  %136 = call i32 @strcasecmp(i8* %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %164, label %138

138:                                              ; preds = %134
  %139 = load i8*, i8** %21, align 8
  %140 = call float @strtof(i8* %139, i32* null)
  %141 = load float*, float** %14, align 8
  store float %140, float* %141, align 4
  %142 = load float*, float** %14, align 8
  %143 = load float, float* %142, align 4
  %144 = call i64 @isnan(float %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %156, label %146

146:                                              ; preds = %138
  %147 = load float*, float** %14, align 8
  %148 = load float, float* %147, align 4
  %149 = call i64 @isinf(float %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load float*, float** %14, align 8
  %153 = load float, float* %152, align 4
  %154 = call i64 @islessequal(float %153, i32 0)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151, %146, %138
  %157 = load i64, i64* %8, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = load i8*, i8** %21, align 8
  %160 = load i8*, i8** %20, align 8
  %161 = call i32 (i8*, i64, i8*, i8*, ...) @error(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i64 %157, i8* %158, i8* %159, i8* %160)
  br label %163

162:                                              ; preds = %151
  store i8 1, i8* %18, align 1
  br label %163

163:                                              ; preds = %162, %156
  br label %187

164:                                              ; preds = %134
  %165 = load i8*, i8** %20, align 8
  %166 = call i32 @strcasecmp(i8* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %181, label %168

168:                                              ; preds = %164
  %169 = load i8*, i8** %21, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = call i32 @config_parse_duration(i8* %169, i32* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %168
  %174 = load i64, i64* %8, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = load i8*, i8** %21, align 8
  %177 = load i8*, i8** %20, align 8
  %178 = call i32 (i8*, i64, i8*, i8*, ...) @error(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i64 %174, i8* %175, i8* %176, i8* %177)
  br label %180

179:                                              ; preds = %168
  store i8 1, i8* %17, align 1
  br label %180

180:                                              ; preds = %179, %173
  br label %186

181:                                              ; preds = %164
  %182 = load i64, i64* %8, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = load i8*, i8** %20, align 8
  %185 = call i32 (i8*, i64, i8*, i8*, ...) @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i64 %182, i8* %183, i8* %184)
  br label %186

186:                                              ; preds = %181, %180
  br label %187

187:                                              ; preds = %186, %163
  br label %188

188:                                              ; preds = %187, %133
  br label %189

189:                                              ; preds = %188, %116
  br label %23

190:                                              ; preds = %65, %23
  %191 = load i8, i8* %15, align 1
  %192 = icmp ne i8 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %190
  %194 = load i32*, i32** %11, align 8
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %193, %190
  %196 = load i8, i8* %16, align 1
  %197 = icmp ne i8 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %195
  %199 = load i32*, i32** %12, align 8
  store i32 0, i32* %199, align 4
  br label %200

200:                                              ; preds = %198, %195
  %201 = load i8, i8* %18, align 1
  %202 = icmp ne i8 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  %204 = load float*, float** %14, align 8
  store float 1.000000e+00, float* %204, align 4
  br label %205

205:                                              ; preds = %203, %200
  %206 = load i8, i8* %17, align 1
  %207 = icmp ne i8 %206, 0
  br i1 %207, label %249, label %208

208:                                              ; preds = %205
  %209 = load i32*, i32** %13, align 8
  %210 = load i32, i32* %209, align 4
  %211 = sitofp i32 %210 to float
  %212 = load i32*, i32** %11, align 8
  %213 = load i32, i32* %212, align 4
  %214 = sitofp i32 %213 to float
  %215 = load float*, float** %14, align 8
  %216 = load float, float* %215, align 4
  %217 = fmul float %214, %216
  %218 = fcmp olt float %211, %217
  br i1 %218, label %219, label %228

219:                                              ; preds = %208
  %220 = load i32*, i32** %11, align 8
  %221 = load i32, i32* %220, align 4
  %222 = sitofp i32 %221 to float
  %223 = load float*, float** %14, align 8
  %224 = load float, float* %223, align 4
  %225 = fmul float %222, %224
  %226 = fptosi float %225 to i32
  %227 = load i32*, i32** %13, align 8
  store i32 %226, i32* %227, align 4
  br label %228

228:                                              ; preds = %219, %208
  %229 = load i32*, i32** %13, align 8
  %230 = load i32, i32* %229, align 4
  %231 = sitofp i32 %230 to float
  %232 = load i32*, i32** %12, align 8
  %233 = load i32, i32* %232, align 4
  %234 = sitofp i32 %233 to float
  %235 = load float*, float** %14, align 8
  %236 = load float, float* %235, align 4
  %237 = fmul float %234, %236
  %238 = fcmp olt float %231, %237
  br i1 %238, label %239, label %248

239:                                              ; preds = %228
  %240 = load i32*, i32** %12, align 8
  %241 = load i32, i32* %240, align 4
  %242 = sitofp i32 %241 to float
  %243 = load float*, float** %14, align 8
  %244 = load float, float* %243, align 4
  %245 = fmul float %242, %244
  %246 = fptosi float %245 to i32
  %247 = load i32*, i32** %13, align 8
  store i32 %246, i32* %247, align 4
  br label %248

248:                                              ; preds = %239, %228
  br label %249

249:                                              ; preds = %248, %205
  ret i32 1
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @config_parse_duration(i8*, i32*) #1

declare dso_local i32 @error(i8*, i64, i8*, i8*, ...) #1

declare dso_local float @strtof(i8*, i32*) #1

declare dso_local i64 @isnan(float) #1

declare dso_local i64 @isinf(float) #1

declare dso_local i64 @islessequal(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
