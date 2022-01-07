; ModuleID = '/home/carl/AnghaBench/postgres/contrib/seg/extr_seg.c_restore.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/seg/extr_seg.c_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.restore.buf = private unnamed_addr constant [25 x i8] c"000000000000000000000000\00", align 16
@FLT_DIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*e\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"e%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, float, i32)* @restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore(i8* %0, float %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca [25 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = bitcast [25 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.restore.buf, i32 0, i32 0), i64 25, i1 false)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @FLT_DIG, align 4
  %17 = call i32 @Min(i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load float, float* %6, align 4
  %19 = fcmp olt float %18, 0.000000e+00
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %13, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load float, float* %6, align 4
  %26 = fpext float %25 to double
  %27 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %24, double %26)
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 101)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strlen(i8* %33)
  store i32 %34, i32* %4, align 4
  br label %238

35:                                               ; preds = %3
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i32 @atoi(i8* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i8*, i8** %9, align 8
  store i8 0, i8* %42, align 1
  br label %235

43:                                               ; preds = %35
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @Abs(i32 %44)
  %46 = icmp sle i32 %45, 4
  br i1 %46, label %47, label %234

47:                                               ; preds = %43
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8* %51, i8** %9, align 8
  store i32 10, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %71, %47
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 101
  br i1 %56, label %57, label %76

57:                                               ; preds = %52
  %58 = load i8*, i8** %9, align 8
  %59 = load i8, i8* %58, align 1
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 %61
  store i8 %59, i8* %62, align 1
  %63 = load i8*, i8** %9, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 46
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %11, align 4
  store i32 %68, i32* %12, align 4
  br label %70

70:                                               ; preds = %67, %57
  br label %71

71:                                               ; preds = %70
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %9, align 8
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %52

76:                                               ; preds = %52
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %11, align 4
  store i32 %80, i32* %12, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %200

85:                                               ; preds = %82
  %86 = load i32, i32* %12, align 4
  %87 = sub nsw i32 %86, 10
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* %7, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %159

92:                                               ; preds = %85
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %93, 10
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %7, align 4
  %98 = sub nsw i32 %96, %97
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 10, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 %101
  store i8 0, i8* %102, align 1
  %103 = load i32, i32* %7, align 4
  %104 = icmp sgt i32 %103, 1
  br i1 %104, label %105, label %126

105:                                              ; preds = %92
  store i32 11, i32* %12, align 4
  store i32 23, i32* %11, align 4
  br label %106

106:                                              ; preds = %119, %105
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = load i32, i32* %11, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 %117
  store i8 %115, i8* %118, align 1
  br label %119

119:                                              ; preds = %110
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %11, align 4
  br label %106

122:                                              ; preds = %106
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 %124
  store i8 46, i8* %125, align 1
  br label %126

126:                                              ; preds = %122, %92
  %127 = load i32, i32* %7, align 4
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 11, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 %132
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %134, %135
  %137 = sub nsw i32 %136, 1
  %138 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  br label %146

139:                                              ; preds = %126
  %140 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 11
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %141, %142
  %144 = sub nsw i32 %143, 1
  %145 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %139, %129
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 9
  store i8 45, i8* %150, align 1
  %151 = load i8*, i8** %5, align 8
  %152 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 9
  %153 = call i32 @strcpy(i8* %151, i8* %152)
  br label %158

154:                                              ; preds = %146
  %155 = load i8*, i8** %5, align 8
  %156 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 10
  %157 = call i32 @strcpy(i8* %155, i8* %156)
  br label %158

158:                                              ; preds = %154, %149
  br label %199

159:                                              ; preds = %85
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %12, align 4
  store i32 23, i32* %11, align 4
  br label %163

163:                                              ; preds = %176, %159
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = load i32, i32* %11, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 %174
  store i8 %172, i8* %175, align 1
  br label %176

176:                                              ; preds = %167
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %11, align 4
  br label %163

179:                                              ; preds = %163
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 11, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 %182
  store i8 0, i8* %183, align 1
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 %185
  store i8 46, i8* %186, align 1
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %179
  %190 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 9
  store i8 45, i8* %190, align 1
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 9
  %193 = call i32 @strcpy(i8* %191, i8* %192)
  br label %198

194:                                              ; preds = %179
  %195 = load i8*, i8** %5, align 8
  %196 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 10
  %197 = call i32 @strcpy(i8* %195, i8* %196)
  br label %198

198:                                              ; preds = %194, %189
  br label %199

199:                                              ; preds = %198, %158
  br label %233

200:                                              ; preds = %82
  %201 = load i32, i32* %10, align 4
  %202 = sub nsw i32 %201, 1
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 10, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 %207
  store i8 0, i8* %208, align 1
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 %210
  store i8 46, i8* %211, align 1
  %212 = load i32, i32* %13, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %225

214:                                              ; preds = %200
  %215 = load i32, i32* %12, align 4
  %216 = sub nsw i32 %215, 2
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 %217
  store i8 45, i8* %218, align 1
  %219 = load i8*, i8** %5, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sub nsw i32 %220, 2
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 %222
  %224 = call i32 @strcpy(i8* %219, i8* %223)
  br label %232

225:                                              ; preds = %200
  %226 = load i8*, i8** %5, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sub nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [25 x i8], [25 x i8]* %8, i64 0, i64 %229
  %231 = call i32 @strcpy(i8* %226, i8* %230)
  br label %232

232:                                              ; preds = %225, %214
  br label %233

233:                                              ; preds = %232, %199
  br label %234

234:                                              ; preds = %233, %43
  br label %235

235:                                              ; preds = %234, %41
  %236 = load i8*, i8** %5, align 8
  %237 = call i32 @strlen(i8* %236)
  store i32 %237, i32* %4, align 4
  br label %238

238:                                              ; preds = %235, %32
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Min(i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @Abs(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
