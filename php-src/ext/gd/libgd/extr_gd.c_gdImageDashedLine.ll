; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageDashedLine.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageDashedLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageDashedLine(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %24, align 4
  store i32 1, i32* %25, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %28, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %34, %35
  %37 = call i32 @abs(i32 %36) #3
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %38, %39
  %41 = call i32 @abs(i32 %40) #3
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %154

45:                                               ; preds = %6
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @atan2(i32 %46, i32 %47)
  %49 = call double @sin(i32 %48)
  store double %49, double* %29, align 8
  %50 = load double, double* %29, align 8
  %51 = fcmp une double %50, 0.000000e+00
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* %28, align 4
  %54 = sitofp i32 %53 to double
  %55 = load double, double* %29, align 8
  %56 = fdiv double %54, %55
  %57 = fptosi double %56 to i32
  store i32 %57, i32* %26, align 4
  br label %59

58:                                               ; preds = %45
  store i32 1, i32* %26, align 4
  br label %59

59:                                               ; preds = %58, %52
  store i32 1, i32* %27, align 4
  %60 = load i32, i32* %14, align 4
  %61 = mul nsw i32 2, %60
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %14, align 4
  %65 = mul nsw i32 2, %64
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sub nsw i32 %66, %67
  %69 = mul nsw i32 2, %68
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %19, align 4
  store i32 -1, i32* %23, align 4
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %20, align 4
  br label %81

77:                                               ; preds = %59
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %19, align 4
  store i32 1, i32* %23, align 4
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %20, align 4
  br label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %26, align 4
  %87 = load i32, i32* %27, align 4
  %88 = call i32 @dashedSet(%struct.TYPE_4__* %82, i32 %83, i32 %84, i32 %85, i32* %25, i32* %24, i32 %86, i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load i32, i32* %23, align 4
  %93 = mul nsw i32 %91, %92
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %124

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %115, %95
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %20, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %96
  %101 = load i32, i32* %18, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %17, align 4
  br label %115

109:                                              ; preds = %100
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %17, align 4
  br label %115

115:                                              ; preds = %109, %105
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %26, align 4
  %121 = load i32, i32* %27, align 4
  %122 = call i32 @dashedSet(%struct.TYPE_4__* %116, i32 %117, i32 %118, i32 %119, i32* %25, i32* %24, i32 %120, i32 %121)
  br label %96

123:                                              ; preds = %96
  br label %153

124:                                              ; preds = %81
  br label %125

125:                                              ; preds = %144, %124
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %20, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %125
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %17, align 4
  br label %144

138:                                              ; preds = %129
  %139 = load i32, i32* %19, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %19, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %17, align 4
  br label %144

144:                                              ; preds = %138, %134
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %26, align 4
  %150 = load i32, i32* %27, align 4
  %151 = call i32 @dashedSet(%struct.TYPE_4__* %145, i32 %146, i32 %147, i32 %148, i32* %25, i32* %24, i32 %149, i32 %150)
  br label %125

152:                                              ; preds = %125
  br label %153

153:                                              ; preds = %152, %123
  br label %263

154:                                              ; preds = %6
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @atan2(i32 %155, i32 %156)
  %158 = call double @sin(i32 %157)
  store double %158, double* %30, align 8
  %159 = load double, double* %30, align 8
  %160 = fcmp une double %159, 0.000000e+00
  br i1 %160, label %161, label %167

161:                                              ; preds = %154
  %162 = load i32, i32* %28, align 4
  %163 = sitofp i32 %162 to double
  %164 = load double, double* %30, align 8
  %165 = fdiv double %163, %164
  %166 = fptosi double %165 to i32
  store i32 %166, i32* %26, align 4
  br label %168

167:                                              ; preds = %154
  store i32 1, i32* %26, align 4
  br label %168

168:                                              ; preds = %167, %161
  store i32 0, i32* %27, align 4
  %169 = load i32, i32* %13, align 4
  %170 = mul nsw i32 2, %169
  %171 = load i32, i32* %14, align 4
  %172 = sub nsw i32 %170, %171
  store i32 %172, i32* %17, align 4
  %173 = load i32, i32* %13, align 4
  %174 = mul nsw i32 2, %173
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %14, align 4
  %177 = sub nsw i32 %175, %176
  %178 = mul nsw i32 2, %177
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %168
  %183 = load i32, i32* %11, align 4
  store i32 %183, i32* %19, align 4
  %184 = load i32, i32* %10, align 4
  store i32 %184, i32* %18, align 4
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  br label %190

186:                                              ; preds = %168
  %187 = load i32, i32* %9, align 4
  store i32 %187, i32* %19, align 4
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %11, align 4
  store i32 %189, i32* %21, align 4
  store i32 1, i32* %22, align 4
  br label %190

190:                                              ; preds = %186, %182
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %26, align 4
  %196 = load i32, i32* %27, align 4
  %197 = call i32 @dashedSet(%struct.TYPE_4__* %191, i32 %192, i32 %193, i32 %194, i32* %25, i32* %24, i32 %195, i32 %196)
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %8, align 4
  %200 = sub nsw i32 %198, %199
  %201 = load i32, i32* %22, align 4
  %202 = mul nsw i32 %200, %201
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %233

204:                                              ; preds = %190
  br label %205

205:                                              ; preds = %224, %204
  %206 = load i32, i32* %19, align 4
  %207 = load i32, i32* %21, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %232

209:                                              ; preds = %205
  %210 = load i32, i32* %19, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %19, align 4
  %212 = load i32, i32* %17, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* %17, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %17, align 4
  br label %224

218:                                              ; preds = %209
  %219 = load i32, i32* %18, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %18, align 4
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %17, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %17, align 4
  br label %224

224:                                              ; preds = %218, %214
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %226 = load i32, i32* %18, align 4
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %12, align 4
  %229 = load i32, i32* %26, align 4
  %230 = load i32, i32* %27, align 4
  %231 = call i32 @dashedSet(%struct.TYPE_4__* %225, i32 %226, i32 %227, i32 %228, i32* %25, i32* %24, i32 %229, i32 %230)
  br label %205

232:                                              ; preds = %205
  br label %262

233:                                              ; preds = %190
  br label %234

234:                                              ; preds = %253, %233
  %235 = load i32, i32* %19, align 4
  %236 = load i32, i32* %21, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %261

238:                                              ; preds = %234
  %239 = load i32, i32* %19, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %19, align 4
  %241 = load i32, i32* %17, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = load i32, i32* %15, align 4
  %245 = load i32, i32* %17, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* %17, align 4
  br label %253

247:                                              ; preds = %238
  %248 = load i32, i32* %18, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* %18, align 4
  %250 = load i32, i32* %16, align 4
  %251 = load i32, i32* %17, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %17, align 4
  br label %253

253:                                              ; preds = %247, %243
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %255 = load i32, i32* %18, align 4
  %256 = load i32, i32* %19, align 4
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* %26, align 4
  %259 = load i32, i32* %27, align 4
  %260 = call i32 @dashedSet(%struct.TYPE_4__* %254, i32 %255, i32 %256, i32 %257, i32* %25, i32* %24, i32 %258, i32 %259)
  br label %234

261:                                              ; preds = %234
  br label %262

262:                                              ; preds = %261, %232
  br label %263

263:                                              ; preds = %262, %153
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local double @sin(i32) #2

declare dso_local i32 @atan2(i32, i32) #2

declare dso_local i32 @dashedSet(%struct.TYPE_4__*, i32, i32, i32, i32*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
