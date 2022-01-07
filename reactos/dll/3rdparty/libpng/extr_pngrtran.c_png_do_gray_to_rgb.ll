; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrtran.c_png_do_gray_to_rgb.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrtran.c_png_do_gray_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"in png_do_gray_to_rgb\00", align 1
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8**)* @png_do_gray_to_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_do_gray_to_rgb(%struct.TYPE_3__* %0, i8** %1) #0 {
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
  %18 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %21, 8
  br i1 %22, label %23, label %260

23:                                               ; preds = %2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %260

30:                                               ; preds = %23
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PNG_COLOR_TYPE_GRAY, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %120

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %72

41:                                               ; preds = %36
  %42 = load i8**, i8*** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  %45 = getelementptr inbounds i8*, i8** %44, i64 -1
  store i8** %45, i8*** %7, align 8
  %46 = load i8**, i8*** %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = mul i64 %47, 2
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8** %49, i8*** %8, align 8
  store i64 0, i64* %5, align 8
  br label %50

50:                                               ; preds = %68, %41
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load i8**, i8*** %7, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i8**, i8*** %8, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 -1
  store i8** %58, i8*** %8, align 8
  store i8* %56, i8** %57, align 8
  %59 = load i8**, i8*** %7, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8**, i8*** %8, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 -1
  store i8** %62, i8*** %8, align 8
  store i8* %60, i8** %61, align 8
  %63 = load i8**, i8*** %7, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 -1
  store i8** %64, i8*** %7, align 8
  %65 = load i8*, i8** %63, align 8
  %66 = load i8**, i8*** %8, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 -1
  store i8** %67, i8*** %8, align 8
  store i8* %65, i8** %66, align 8
  br label %68

68:                                               ; preds = %54
  %69 = load i64, i64* %5, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %5, align 8
  br label %50

71:                                               ; preds = %50
  br label %119

72:                                               ; preds = %36
  %73 = load i8**, i8*** %4, align 8
  %74 = load i64, i64* %6, align 8
  %75 = mul i64 %74, 2
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = getelementptr inbounds i8*, i8** %76, i64 -1
  store i8** %77, i8*** %9, align 8
  %78 = load i8**, i8*** %9, align 8
  %79 = load i64, i64* %6, align 8
  %80 = mul i64 %79, 4
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8** %81, i8*** %10, align 8
  store i64 0, i64* %5, align 8
  br label %82

82:                                               ; preds = %115, %72
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %118

86:                                               ; preds = %82
  %87 = load i8**, i8*** %9, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = load i8**, i8*** %10, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i32 -1
  store i8** %90, i8*** %10, align 8
  store i8* %88, i8** %89, align 8
  %91 = load i8**, i8*** %9, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 -1
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** %10, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i32 -1
  store i8** %95, i8*** %10, align 8
  store i8* %93, i8** %94, align 8
  %96 = load i8**, i8*** %9, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = load i8**, i8*** %10, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i32 -1
  store i8** %99, i8*** %10, align 8
  store i8* %97, i8** %98, align 8
  %100 = load i8**, i8*** %9, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 -1
  %102 = load i8*, i8** %101, align 8
  %103 = load i8**, i8*** %10, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i32 -1
  store i8** %104, i8*** %10, align 8
  store i8* %102, i8** %103, align 8
  %105 = load i8**, i8*** %9, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i32 -1
  store i8** %106, i8*** %9, align 8
  %107 = load i8*, i8** %105, align 8
  %108 = load i8**, i8*** %10, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i32 -1
  store i8** %109, i8*** %10, align 8
  store i8* %107, i8** %108, align 8
  %110 = load i8**, i8*** %9, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i32 -1
  store i8** %111, i8*** %9, align 8
  %112 = load i8*, i8** %110, align 8
  %113 = load i8**, i8*** %10, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i32 -1
  store i8** %114, i8*** %10, align 8
  store i8* %112, i8** %113, align 8
  br label %115

115:                                              ; preds = %86
  %116 = load i64, i64* %5, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %5, align 8
  br label %82

118:                                              ; preds = %82
  br label %119

119:                                              ; preds = %118, %71
  br label %227

120:                                              ; preds = %30
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @PNG_COLOR_TYPE_GRAY_ALPHA, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %226

126:                                              ; preds = %120
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 8
  br i1 %130, label %131, label %168

131:                                              ; preds = %126
  %132 = load i8**, i8*** %4, align 8
  %133 = load i64, i64* %6, align 8
  %134 = mul i64 %133, 2
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = getelementptr inbounds i8*, i8** %135, i64 -1
  store i8** %136, i8*** %11, align 8
  %137 = load i8**, i8*** %11, align 8
  %138 = load i64, i64* %6, align 8
  %139 = mul i64 %138, 2
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  store i8** %140, i8*** %12, align 8
  store i64 0, i64* %5, align 8
  br label %141

141:                                              ; preds = %164, %131
  %142 = load i64, i64* %5, align 8
  %143 = load i64, i64* %6, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %167

145:                                              ; preds = %141
  %146 = load i8**, i8*** %11, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i32 -1
  store i8** %147, i8*** %11, align 8
  %148 = load i8*, i8** %146, align 8
  %149 = load i8**, i8*** %12, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i32 -1
  store i8** %150, i8*** %12, align 8
  store i8* %148, i8** %149, align 8
  %151 = load i8**, i8*** %11, align 8
  %152 = load i8*, i8** %151, align 8
  %153 = load i8**, i8*** %12, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i32 -1
  store i8** %154, i8*** %12, align 8
  store i8* %152, i8** %153, align 8
  %155 = load i8**, i8*** %11, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = load i8**, i8*** %12, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i32 -1
  store i8** %158, i8*** %12, align 8
  store i8* %156, i8** %157, align 8
  %159 = load i8**, i8*** %11, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i32 -1
  store i8** %160, i8*** %11, align 8
  %161 = load i8*, i8** %159, align 8
  %162 = load i8**, i8*** %12, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i32 -1
  store i8** %163, i8*** %12, align 8
  store i8* %161, i8** %162, align 8
  br label %164

164:                                              ; preds = %145
  %165 = load i64, i64* %5, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %5, align 8
  br label %141

167:                                              ; preds = %141
  br label %225

168:                                              ; preds = %126
  %169 = load i8**, i8*** %4, align 8
  %170 = load i64, i64* %6, align 8
  %171 = mul i64 %170, 4
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = getelementptr inbounds i8*, i8** %172, i64 -1
  store i8** %173, i8*** %13, align 8
  %174 = load i8**, i8*** %13, align 8
  %175 = load i64, i64* %6, align 8
  %176 = mul i64 %175, 4
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  store i8** %177, i8*** %14, align 8
  store i64 0, i64* %5, align 8
  br label %178

178:                                              ; preds = %221, %168
  %179 = load i64, i64* %5, align 8
  %180 = load i64, i64* %6, align 8
  %181 = icmp slt i64 %179, %180
  br i1 %181, label %182, label %224

182:                                              ; preds = %178
  %183 = load i8**, i8*** %13, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i32 -1
  store i8** %184, i8*** %13, align 8
  %185 = load i8*, i8** %183, align 8
  %186 = load i8**, i8*** %14, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i32 -1
  store i8** %187, i8*** %14, align 8
  store i8* %185, i8** %186, align 8
  %188 = load i8**, i8*** %13, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i32 -1
  store i8** %189, i8*** %13, align 8
  %190 = load i8*, i8** %188, align 8
  %191 = load i8**, i8*** %14, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i32 -1
  store i8** %192, i8*** %14, align 8
  store i8* %190, i8** %191, align 8
  %193 = load i8**, i8*** %13, align 8
  %194 = load i8*, i8** %193, align 8
  %195 = load i8**, i8*** %14, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i32 -1
  store i8** %196, i8*** %14, align 8
  store i8* %194, i8** %195, align 8
  %197 = load i8**, i8*** %13, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 -1
  %199 = load i8*, i8** %198, align 8
  %200 = load i8**, i8*** %14, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i32 -1
  store i8** %201, i8*** %14, align 8
  store i8* %199, i8** %200, align 8
  %202 = load i8**, i8*** %13, align 8
  %203 = load i8*, i8** %202, align 8
  %204 = load i8**, i8*** %14, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i32 -1
  store i8** %205, i8*** %14, align 8
  store i8* %203, i8** %204, align 8
  %206 = load i8**, i8*** %13, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 -1
  %208 = load i8*, i8** %207, align 8
  %209 = load i8**, i8*** %14, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i32 -1
  store i8** %210, i8*** %14, align 8
  store i8* %208, i8** %209, align 8
  %211 = load i8**, i8*** %13, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i32 -1
  store i8** %212, i8*** %13, align 8
  %213 = load i8*, i8** %211, align 8
  %214 = load i8**, i8*** %14, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i32 -1
  store i8** %215, i8*** %14, align 8
  store i8* %213, i8** %214, align 8
  %216 = load i8**, i8*** %13, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i32 -1
  store i8** %217, i8*** %13, align 8
  %218 = load i8*, i8** %216, align 8
  %219 = load i8**, i8*** %14, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i32 -1
  store i8** %220, i8*** %14, align 8
  store i8* %218, i8** %219, align 8
  br label %221

221:                                              ; preds = %182
  %222 = load i64, i64* %5, align 8
  %223 = add nsw i64 %222, 1
  store i64 %223, i64* %5, align 8
  br label %178

224:                                              ; preds = %178
  br label %225

225:                                              ; preds = %224, %167
  br label %226

226:                                              ; preds = %225, %120
  br label %227

227:                                              ; preds = %226, %119
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, 2
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to i8*
  %234 = ptrtoint i8* %233 to i32
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 8
  %237 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 4
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = mul nsw i32 %244, %247
  %249 = sext i32 %248 to i64
  %250 = inttoptr i64 %249 to i8*
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 4
  store i8* %250, i8** %252, align 8
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 4
  %255 = load i8*, i8** %254, align 8
  %256 = load i64, i64* %6, align 8
  %257 = call i32 @PNG_ROWBYTES(i8* %255, i64 %256)
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 5
  store i32 %257, i32* %259, align 8
  br label %260

260:                                              ; preds = %227, %23, %2
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @PNG_ROWBYTES(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
