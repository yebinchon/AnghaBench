; ModuleID = '/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c_hyphenate.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c_hyphenate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, [2 x i8*]*, [2 x i32]*)* @hyphenate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hyphenate(i8* %0, i8* %1, [2 x i8*]* %2, [2 x i32]* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [2 x i8*]*, align 8
  %9 = alloca [2 x i32]*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store [2 x i8*]* %2, [2 x i8*]** %8, align 8
  store [2 x i32]* %3, [2 x i32]** %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load [2 x i8*]*, [2 x i8*]** %8, align 8
  %24 = icmp eq [2 x i8*]* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load [2 x i32]*, [2 x i32]** %9, align 8
  %27 = icmp eq [2 x i32]* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %25, %4
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  %36 = load i8, i8* %34, align 1
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  store i8 %36, i8* %37, align 1
  %39 = load i32, i32* %10, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %29

41:                                               ; preds = %29
  %42 = load i8*, i8** %6, align 8
  store i8 0, i8* %42, align 1
  %43 = load i32, i32* %10, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %262

45:                                               ; preds = %25
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = sub nsw i32 %48, 48
  store i32 %49, i32* %17, align 4
  %50 = load [2 x i32]*, [2 x i32]** %9, align 8
  %51 = load i32, i32* %17, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %50, i64 %52
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %53, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %19, align 4
  store i32 %55, i32* %18, align 4
  %56 = load [2 x i32]*, [2 x i32]** %9, align 8
  %57 = load i32, i32* %17, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %56, i64 %58
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %59, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %18, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %19, align 4
  %65 = add i32 %64, -1
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %19, align 4
  %68 = sub i32 %66, %67
  %69 = udiv i32 %68, 2
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %20, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %262

73:                                               ; preds = %45
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %20, align 4
  %76 = add i32 %74, %75
  store i32 %76, i32* %17, align 4
  %77 = load i8*, i8** %7, align 8
  store i8* %77, i8** %14, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  %78 = load [2 x i8*]*, [2 x i8*]** %8, align 8
  %79 = load i32, i32* %17, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [2 x i8*], [2 x i8*]* %78, i64 %80
  %82 = getelementptr inbounds [2 x i8*], [2 x i8*]* %81, i64 0, i64 0
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %11, align 8
  %84 = load [2 x i8*]*, [2 x i8*]** %8, align 8
  %85 = load i32, i32* %17, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [2 x i8*], [2 x i8*]* %84, i64 %86
  %88 = getelementptr inbounds [2 x i8*], [2 x i8*]* %87, i64 0, i64 1
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %12, align 8
  br label %90

90:                                               ; preds = %207, %73
  %91 = load i32, i32* %21, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %90
  %94 = load i8*, i8** %14, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8*, i8** %11, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sge i32 %96, %99
  br i1 %100, label %101, label %170

101:                                              ; preds = %93, %90
  %102 = load i32, i32* %22, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %101
  %105 = load i8*, i8** %14, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8*, i8** %12, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp sle i32 %107, %110
  br i1 %111, label %112, label %170

112:                                              ; preds = %104, %101
  %113 = load i8*, i8** %14, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = load i8*, i8** %11, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp sgt i32 %115, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  store i32 1, i32* %21, align 4
  br label %121

121:                                              ; preds = %120, %112
  %122 = load i8*, i8** %14, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = load i8*, i8** %12, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  store i32 1, i32* %22, align 4
  br label %130

130:                                              ; preds = %129, %121
  %131 = load i32, i32* %21, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i32, i32* %22, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %210

137:                                              ; preds = %133, %130
  %138 = load i8*, i8** %14, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %14, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %11, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %12, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %137
  %149 = load i8*, i8** %12, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i8*, i8** %14, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %153, %148, %137
  br label %210

159:                                              ; preds = %153
  %160 = load i8*, i8** %11, align 8
  %161 = load i8, i8* %160, align 1
  %162 = call i32 @isdigit(i8 zeroext %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = load i8*, i8** %11, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %11, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %12, align 8
  br label %169

169:                                              ; preds = %164, %159
  br label %206

170:                                              ; preds = %104, %93
  %171 = load i8*, i8** %14, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = load i8*, i8** %11, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %170
  %179 = load i32, i32* %21, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %17, align 4
  store i32 %182, i32* %18, align 4
  br label %185

183:                                              ; preds = %178, %170
  %184 = load i32, i32* %17, align 4
  store i32 %184, i32* %19, align 4
  br label %185

185:                                              ; preds = %183, %181
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %19, align 4
  %188 = sub i32 %186, %187
  %189 = udiv i32 %188, 2
  store i32 %189, i32* %20, align 4
  %190 = load i32, i32* %19, align 4
  %191 = load i32, i32* %20, align 4
  %192 = add i32 %190, %191
  store i32 %192, i32* %17, align 4
  %193 = load i8*, i8** %7, align 8
  store i8* %193, i8** %14, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  %194 = load [2 x i8*]*, [2 x i8*]** %8, align 8
  %195 = load i32, i32* %17, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds [2 x i8*], [2 x i8*]* %194, i64 %196
  %198 = getelementptr inbounds [2 x i8*], [2 x i8*]* %197, i64 0, i64 0
  %199 = load i8*, i8** %198, align 8
  store i8* %199, i8** %11, align 8
  %200 = load [2 x i8*]*, [2 x i8*]** %8, align 8
  %201 = load i32, i32* %17, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds [2 x i8*], [2 x i8*]* %200, i64 %202
  %204 = getelementptr inbounds [2 x i8*], [2 x i8*]* %203, i64 0, i64 1
  %205 = load i8*, i8** %204, align 8
  store i8* %205, i8** %12, align 8
  br label %206

206:                                              ; preds = %185, %169
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %20, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %90, label %210

210:                                              ; preds = %207, %158, %136
  %211 = load i32, i32* %20, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %260

213:                                              ; preds = %210
  %214 = load i8*, i8** %6, align 8
  store i8* %214, i8** %15, align 8
  %215 = load i8*, i8** %7, align 8
  store i8* %215, i8** %16, align 8
  %216 = load [2 x i8*]*, [2 x i8*]** %8, align 8
  %217 = load i32, i32* %17, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [2 x i8*], [2 x i8*]* %216, i64 %218
  %220 = getelementptr inbounds [2 x i8*], [2 x i8*]* %219, i64 0, i64 0
  %221 = load i8*, i8** %220, align 8
  store i8* %221, i8** %13, align 8
  br label %222

222:                                              ; preds = %249, %213
  %223 = load i8*, i8** %13, align 8
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load i8*, i8** %16, align 8
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp ne i32 %230, 0
  br label %232

232:                                              ; preds = %227, %222
  %233 = phi i1 [ false, %222 ], [ %231, %227 ]
  br i1 %233, label %234, label %252

234:                                              ; preds = %232
  %235 = load i8*, i8** %13, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %13, align 8
  %237 = load i8, i8* %235, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp ne i32 %238, 45
  br i1 %239, label %240, label %246

240:                                              ; preds = %234
  %241 = load i8*, i8** %16, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %16, align 8
  %243 = load i8, i8* %241, align 1
  %244 = load i8*, i8** %15, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %15, align 8
  store i8 %243, i8* %244, align 1
  br label %249

246:                                              ; preds = %234
  %247 = load i8*, i8** %15, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %15, align 8
  store i8 45, i8* %247, align 1
  br label %249

249:                                              ; preds = %246, %240
  %250 = load i32, i32* %10, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %10, align 4
  br label %222

252:                                              ; preds = %232
  %253 = load i8*, i8** %15, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %15, align 8
  store i8 45, i8* %253, align 1
  %255 = load i8*, i8** %16, align 8
  %256 = load i8, i8* %255, align 1
  %257 = load i8*, i8** %15, align 8
  store i8 %256, i8* %257, align 1
  %258 = load i32, i32* %10, align 4
  %259 = add i32 %258, 1
  store i32 %259, i32* %5, align 4
  br label %262

260:                                              ; preds = %210
  %261 = load i32, i32* %10, align 4
  store i32 %261, i32* %5, align 4
  br label %262

262:                                              ; preds = %260, %252, %72, %41
  %263 = load i32, i32* %5, align 4
  ret i32 %263
}

declare dso_local i32 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
