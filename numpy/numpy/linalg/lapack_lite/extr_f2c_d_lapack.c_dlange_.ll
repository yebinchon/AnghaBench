; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlange_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlange_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlange_.i__ = internal global i32 0, align 4
@dlange_.j = internal global i32 0, align 4
@dlange_.sum = internal global i32 0, align 4
@dlange_.scale = internal global i32 0, align 4
@dlange_.value = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@c__1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlange_(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 1, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = sext i32 %25 to i64
  %28 = sub i64 0, %27
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 -1
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @min(i32 %33, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %6
  store i32 0, i32* @dlange_.value, align 4
  br label %245

39:                                               ; preds = %6
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @lsame_(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %81

43:                                               ; preds = %39
  store i32 0, i32* @dlange_.value, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %15, align 4
  store i32 1, i32* @dlange_.j, align 4
  br label %46

46:                                               ; preds = %77, %43
  %47 = load i32, i32* @dlange_.j, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %46
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  store i32 1, i32* @dlange_.i__, align 4
  br label %53

53:                                               ; preds = %73, %50
  %54 = load i32, i32* @dlange_.i__, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load i32, i32* @dlange_.value, align 4
  store i32 %58, i32* %19, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* @dlange_.i__, align 4
  %61 = load i32, i32* @dlange_.j, align 4
  %62 = load i32, i32* %13, align 4
  %63 = mul nsw i32 %61, %62
  %64 = add nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %59, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %18, align 4
  %69 = call i32 @abs(i32 %68) #3
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %20, align 4
  %72 = call i32 @max(i32 %70, i32 %71)
  store i32 %72, i32* @dlange_.value, align 4
  br label %73

73:                                               ; preds = %57
  %74 = load i32, i32* @dlange_.i__, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @dlange_.i__, align 4
  br label %53

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* @dlange_.j, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @dlange_.j, align 4
  br label %46

80:                                               ; preds = %46
  br label %244

81:                                               ; preds = %39
  %82 = load i8*, i8** %7, align 8
  %83 = call i8* @lsame_(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %84 = icmp ne i8* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %7, align 8
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %88, 49
  br i1 %89, label %90, label %129

90:                                               ; preds = %85, %81
  store i32 0, i32* @dlange_.value, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %15, align 4
  store i32 1, i32* @dlange_.j, align 4
  br label %93

93:                                               ; preds = %125, %90
  %94 = load i32, i32* @dlange_.j, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %128

97:                                               ; preds = %93
  store i32 0, i32* @dlange_.sum, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %16, align 4
  store i32 1, i32* @dlange_.i__, align 4
  br label %100

100:                                              ; preds = %118, %97
  %101 = load i32, i32* @dlange_.i__, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* @dlange_.i__, align 4
  %107 = load i32, i32* @dlange_.j, align 4
  %108 = load i32, i32* %13, align 4
  %109 = mul nsw i32 %107, %108
  %110 = add nsw i32 %106, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %105, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = call i32 @abs(i32 %114) #3
  %116 = load i32, i32* @dlange_.sum, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* @dlange_.sum, align 4
  br label %118

118:                                              ; preds = %104
  %119 = load i32, i32* @dlange_.i__, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* @dlange_.i__, align 4
  br label %100

121:                                              ; preds = %100
  %122 = load i32, i32* @dlange_.value, align 4
  %123 = load i32, i32* @dlange_.sum, align 4
  %124 = call i32 @max(i32 %122, i32 %123)
  store i32 %124, i32* @dlange_.value, align 4
  br label %125

125:                                              ; preds = %121
  %126 = load i32, i32* @dlange_.j, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @dlange_.j, align 4
  br label %93

128:                                              ; preds = %93
  br label %243

129:                                              ; preds = %85
  %130 = load i8*, i8** %7, align 8
  %131 = call i8* @lsame_(i8* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %208

133:                                              ; preds = %129
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %15, align 4
  store i32 1, i32* @dlange_.i__, align 4
  br label %136

136:                                              ; preds = %145, %133
  %137 = load i32, i32* @dlange_.i__, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i32*, i32** %12, align 8
  %142 = load i32, i32* @dlange_.i__, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 0, i32* %144, align 4
  br label %145

145:                                              ; preds = %140
  %146 = load i32, i32* @dlange_.i__, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* @dlange_.i__, align 4
  br label %136

148:                                              ; preds = %136
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %15, align 4
  store i32 1, i32* @dlange_.j, align 4
  br label %151

151:                                              ; preds = %184, %148
  %152 = load i32, i32* @dlange_.j, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp sle i32 %152, %153
  br i1 %154, label %155, label %187

155:                                              ; preds = %151
  %156 = load i32*, i32** %8, align 8
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %16, align 4
  store i32 1, i32* @dlange_.i__, align 4
  br label %158

158:                                              ; preds = %180, %155
  %159 = load i32, i32* @dlange_.i__, align 4
  %160 = load i32, i32* %16, align 4
  %161 = icmp sle i32 %159, %160
  br i1 %161, label %162, label %183

162:                                              ; preds = %158
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* @dlange_.i__, align 4
  %165 = load i32, i32* @dlange_.j, align 4
  %166 = load i32, i32* %13, align 4
  %167 = mul nsw i32 %165, %166
  %168 = add nsw i32 %164, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %163, i64 %169
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* %18, align 4
  %173 = call i32 @abs(i32 %172) #3
  %174 = load i32*, i32** %12, align 8
  %175 = load i32, i32* @dlange_.i__, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %173
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %162
  %181 = load i32, i32* @dlange_.i__, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* @dlange_.i__, align 4
  br label %158

183:                                              ; preds = %158
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* @dlange_.j, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* @dlange_.j, align 4
  br label %151

187:                                              ; preds = %151
  store i32 0, i32* @dlange_.value, align 4
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %15, align 4
  store i32 1, i32* @dlange_.i__, align 4
  br label %190

190:                                              ; preds = %204, %187
  %191 = load i32, i32* @dlange_.i__, align 4
  %192 = load i32, i32* %15, align 4
  %193 = icmp sle i32 %191, %192
  br i1 %193, label %194, label %207

194:                                              ; preds = %190
  %195 = load i32, i32* @dlange_.value, align 4
  store i32 %195, i32* %18, align 4
  %196 = load i32*, i32** %12, align 8
  %197 = load i32, i32* @dlange_.i__, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %19, align 4
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* %19, align 4
  %203 = call i32 @max(i32 %201, i32 %202)
  store i32 %203, i32* @dlange_.value, align 4
  br label %204

204:                                              ; preds = %194
  %205 = load i32, i32* @dlange_.i__, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* @dlange_.i__, align 4
  br label %190

207:                                              ; preds = %190
  br label %242

208:                                              ; preds = %129
  %209 = load i8*, i8** %7, align 8
  %210 = call i8* @lsame_(i8* %209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %211 = icmp ne i8* %210, null
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load i8*, i8** %7, align 8
  %214 = call i8* @lsame_(i8* %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %241

216:                                              ; preds = %212, %208
  store i32 0, i32* @dlange_.scale, align 4
  store i32 1, i32* @dlange_.sum, align 4
  %217 = load i32*, i32** %9, align 8
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %15, align 4
  store i32 1, i32* @dlange_.j, align 4
  br label %219

219:                                              ; preds = %233, %216
  %220 = load i32, i32* @dlange_.j, align 4
  %221 = load i32, i32* %15, align 4
  %222 = icmp sle i32 %220, %221
  br i1 %222, label %223, label %236

223:                                              ; preds = %219
  %224 = load i32*, i32** %8, align 8
  %225 = load i32*, i32** %10, align 8
  %226 = load i32, i32* @dlange_.j, align 4
  %227 = load i32, i32* %13, align 4
  %228 = mul nsw i32 %226, %227
  %229 = add nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %225, i64 %230
  %232 = call i32 @dlassq_(i32* %224, i32* %231, i32* @c__1, i32* @dlange_.scale, i32* @dlange_.sum)
  br label %233

233:                                              ; preds = %223
  %234 = load i32, i32* @dlange_.j, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* @dlange_.j, align 4
  br label %219

236:                                              ; preds = %219
  %237 = load i32, i32* @dlange_.scale, align 4
  %238 = load i32, i32* @dlange_.sum, align 4
  %239 = call i32 @sqrt(i32 %238)
  %240 = mul nsw i32 %237, %239
  store i32 %240, i32* @dlange_.value, align 4
  br label %241

241:                                              ; preds = %236, %212
  br label %242

242:                                              ; preds = %241, %207
  br label %243

243:                                              ; preds = %242, %128
  br label %244

244:                                              ; preds = %243, %80
  br label %245

245:                                              ; preds = %244, %38
  %246 = load i32, i32* @dlange_.value, align 4
  store i32 %246, i32* %17, align 4
  %247 = load i32, i32* %17, align 4
  ret i32 %247
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i8* @lsame_(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @dlassq_(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
