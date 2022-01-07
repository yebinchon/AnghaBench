; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_gray_to_rgb.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_gray_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"in png_do_gray_to_rgb\0A\00", align 1
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_gray_to_rgb(%struct.TYPE_3__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %21, 8
  br i1 %22, label %23, label %272

23:                                               ; preds = %2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %272, label %30

30:                                               ; preds = %23
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PNG_COLOR_TYPE_GRAY, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %128

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %76

41:                                               ; preds = %36
  %42 = load i8**, i8*** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  %47 = getelementptr inbounds i8*, i8** %46, i64 -1
  store i8** %47, i8*** %7, align 8
  %48 = load i8**, i8*** %7, align 8
  %49 = load i64, i64* %6, align 8
  %50 = trunc i64 %49 to i32
  %51 = mul nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %48, i64 %52
  store i8** %53, i8*** %8, align 8
  store i64 0, i64* %5, align 8
  br label %54

54:                                               ; preds = %72, %41
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load i8**, i8*** %7, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8**, i8*** %8, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 -1
  store i8** %62, i8*** %8, align 8
  store i8* %60, i8** %61, align 8
  %63 = load i8**, i8*** %7, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i8**, i8*** %8, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 -1
  store i8** %66, i8*** %8, align 8
  store i8* %64, i8** %65, align 8
  %67 = load i8**, i8*** %7, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i32 -1
  store i8** %68, i8*** %7, align 8
  %69 = load i8*, i8** %67, align 8
  %70 = load i8**, i8*** %8, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 -1
  store i8** %71, i8*** %8, align 8
  store i8* %69, i8** %70, align 8
  br label %72

72:                                               ; preds = %58
  %73 = load i64, i64* %5, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %5, align 8
  br label %54

75:                                               ; preds = %54
  br label %127

76:                                               ; preds = %36
  %77 = load i8**, i8*** %4, align 8
  %78 = load i64, i64* %6, align 8
  %79 = trunc i64 %78 to i32
  %80 = mul nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %77, i64 %81
  %83 = getelementptr inbounds i8*, i8** %82, i64 -1
  store i8** %83, i8*** %9, align 8
  %84 = load i8**, i8*** %9, align 8
  %85 = load i64, i64* %6, align 8
  %86 = trunc i64 %85 to i32
  %87 = mul nsw i32 %86, 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %84, i64 %88
  store i8** %89, i8*** %10, align 8
  store i64 0, i64* %5, align 8
  br label %90

90:                                               ; preds = %123, %76
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %126

94:                                               ; preds = %90
  %95 = load i8**, i8*** %9, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = load i8**, i8*** %10, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 -1
  store i8** %98, i8*** %10, align 8
  store i8* %96, i8** %97, align 8
  %99 = load i8**, i8*** %9, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 -1
  %101 = load i8*, i8** %100, align 8
  %102 = load i8**, i8*** %10, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i32 -1
  store i8** %103, i8*** %10, align 8
  store i8* %101, i8** %102, align 8
  %104 = load i8**, i8*** %9, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = load i8**, i8*** %10, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i32 -1
  store i8** %107, i8*** %10, align 8
  store i8* %105, i8** %106, align 8
  %108 = load i8**, i8*** %9, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 -1
  %110 = load i8*, i8** %109, align 8
  %111 = load i8**, i8*** %10, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i32 -1
  store i8** %112, i8*** %10, align 8
  store i8* %110, i8** %111, align 8
  %113 = load i8**, i8*** %9, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i32 -1
  store i8** %114, i8*** %9, align 8
  %115 = load i8*, i8** %113, align 8
  %116 = load i8**, i8*** %10, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i32 -1
  store i8** %117, i8*** %10, align 8
  store i8* %115, i8** %116, align 8
  %118 = load i8**, i8*** %9, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i32 -1
  store i8** %119, i8*** %9, align 8
  %120 = load i8*, i8** %118, align 8
  %121 = load i8**, i8*** %10, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i32 -1
  store i8** %122, i8*** %10, align 8
  store i8* %120, i8** %121, align 8
  br label %123

123:                                              ; preds = %94
  %124 = load i64, i64* %5, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %5, align 8
  br label %90

126:                                              ; preds = %90
  br label %127

127:                                              ; preds = %126, %75
  br label %243

128:                                              ; preds = %30
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @PNG_COLOR_TYPE_GRAY_ALPHA, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %242

134:                                              ; preds = %128
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 8
  br i1 %138, label %139, label %180

139:                                              ; preds = %134
  %140 = load i8**, i8*** %4, align 8
  %141 = load i64, i64* %6, align 8
  %142 = trunc i64 %141 to i32
  %143 = mul nsw i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %140, i64 %144
  %146 = getelementptr inbounds i8*, i8** %145, i64 -1
  store i8** %146, i8*** %11, align 8
  %147 = load i8**, i8*** %11, align 8
  %148 = load i64, i64* %6, align 8
  %149 = trunc i64 %148 to i32
  %150 = mul nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %147, i64 %151
  store i8** %152, i8*** %12, align 8
  store i64 0, i64* %5, align 8
  br label %153

153:                                              ; preds = %176, %139
  %154 = load i64, i64* %5, align 8
  %155 = load i64, i64* %6, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %157, label %179

157:                                              ; preds = %153
  %158 = load i8**, i8*** %11, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i32 -1
  store i8** %159, i8*** %11, align 8
  %160 = load i8*, i8** %158, align 8
  %161 = load i8**, i8*** %12, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i32 -1
  store i8** %162, i8*** %12, align 8
  store i8* %160, i8** %161, align 8
  %163 = load i8**, i8*** %11, align 8
  %164 = load i8*, i8** %163, align 8
  %165 = load i8**, i8*** %12, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i32 -1
  store i8** %166, i8*** %12, align 8
  store i8* %164, i8** %165, align 8
  %167 = load i8**, i8*** %11, align 8
  %168 = load i8*, i8** %167, align 8
  %169 = load i8**, i8*** %12, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i32 -1
  store i8** %170, i8*** %12, align 8
  store i8* %168, i8** %169, align 8
  %171 = load i8**, i8*** %11, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i32 -1
  store i8** %172, i8*** %11, align 8
  %173 = load i8*, i8** %171, align 8
  %174 = load i8**, i8*** %12, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i32 -1
  store i8** %175, i8*** %12, align 8
  store i8* %173, i8** %174, align 8
  br label %176

176:                                              ; preds = %157
  %177 = load i64, i64* %5, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %5, align 8
  br label %153

179:                                              ; preds = %153
  br label %241

180:                                              ; preds = %134
  %181 = load i8**, i8*** %4, align 8
  %182 = load i64, i64* %6, align 8
  %183 = trunc i64 %182 to i32
  %184 = mul nsw i32 %183, 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %181, i64 %185
  %187 = getelementptr inbounds i8*, i8** %186, i64 -1
  store i8** %187, i8*** %13, align 8
  %188 = load i8**, i8*** %13, align 8
  %189 = load i64, i64* %6, align 8
  %190 = trunc i64 %189 to i32
  %191 = mul nsw i32 %190, 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %188, i64 %192
  store i8** %193, i8*** %14, align 8
  store i64 0, i64* %5, align 8
  br label %194

194:                                              ; preds = %237, %180
  %195 = load i64, i64* %5, align 8
  %196 = load i64, i64* %6, align 8
  %197 = icmp slt i64 %195, %196
  br i1 %197, label %198, label %240

198:                                              ; preds = %194
  %199 = load i8**, i8*** %13, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i32 -1
  store i8** %200, i8*** %13, align 8
  %201 = load i8*, i8** %199, align 8
  %202 = load i8**, i8*** %14, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i32 -1
  store i8** %203, i8*** %14, align 8
  store i8* %201, i8** %202, align 8
  %204 = load i8**, i8*** %13, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i32 -1
  store i8** %205, i8*** %13, align 8
  %206 = load i8*, i8** %204, align 8
  %207 = load i8**, i8*** %14, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i32 -1
  store i8** %208, i8*** %14, align 8
  store i8* %206, i8** %207, align 8
  %209 = load i8**, i8*** %13, align 8
  %210 = load i8*, i8** %209, align 8
  %211 = load i8**, i8*** %14, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i32 -1
  store i8** %212, i8*** %14, align 8
  store i8* %210, i8** %211, align 8
  %213 = load i8**, i8*** %13, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 -1
  %215 = load i8*, i8** %214, align 8
  %216 = load i8**, i8*** %14, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i32 -1
  store i8** %217, i8*** %14, align 8
  store i8* %215, i8** %216, align 8
  %218 = load i8**, i8*** %13, align 8
  %219 = load i8*, i8** %218, align 8
  %220 = load i8**, i8*** %14, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i32 -1
  store i8** %221, i8*** %14, align 8
  store i8* %219, i8** %220, align 8
  %222 = load i8**, i8*** %13, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 -1
  %224 = load i8*, i8** %223, align 8
  %225 = load i8**, i8*** %14, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i32 -1
  store i8** %226, i8*** %14, align 8
  store i8* %224, i8** %225, align 8
  %227 = load i8**, i8*** %13, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i32 -1
  store i8** %228, i8*** %13, align 8
  %229 = load i8*, i8** %227, align 8
  %230 = load i8**, i8*** %14, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i32 -1
  store i8** %231, i8*** %14, align 8
  store i8* %229, i8** %230, align 8
  %232 = load i8**, i8*** %13, align 8
  %233 = getelementptr inbounds i8*, i8** %232, i32 -1
  store i8** %233, i8*** %13, align 8
  %234 = load i8*, i8** %232, align 8
  %235 = load i8**, i8*** %14, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i32 -1
  store i8** %236, i8*** %14, align 8
  store i8* %234, i8** %235, align 8
  br label %237

237:                                              ; preds = %198
  %238 = load i64, i64* %5, align 8
  %239 = add nsw i64 %238, 1
  store i64 %239, i64* %5, align 8
  br label %194

240:                                              ; preds = %194
  br label %241

241:                                              ; preds = %240, %179
  br label %242

242:                                              ; preds = %241, %128
  br label %243

243:                                              ; preds = %242, %127
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %247, 2
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %245, align 8
  %250 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 4
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = mul nsw i32 %257, %260
  %262 = sext i32 %261 to i64
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 4
  store i64 %262, i64* %264, align 8
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 4
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* %6, align 8
  %269 = call i32 @PNG_ROWBYTES(i64 %267, i64 %268)
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 5
  store i32 %269, i32* %271, align 8
  br label %272

272:                                              ; preds = %243, %23, %2
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @PNG_ROWBYTES(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
