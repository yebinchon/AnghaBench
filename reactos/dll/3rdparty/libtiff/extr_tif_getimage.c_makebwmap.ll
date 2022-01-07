; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_makebwmap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_makebwmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32**, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"No space for B&W mapping table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @makebwmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @makebwmap(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sdiv i32 8, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 256, %22
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = add i64 2048, %25
  %27 = trunc i64 %26 to i32
  %28 = call i64 @_TIFFmalloc(i32 %27)
  %29 = inttoptr i64 %28 to i32**
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32** %29, i32*** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32**, i32*** %33, align 8
  %35 = icmp eq i32** %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %21
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = call i32 @TIFFFileName(%struct.TYPE_5__* %44)
  %46 = call i32 @TIFFErrorExt(i32 %41, i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %261

47:                                               ; preds = %21
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 256
  %52 = bitcast i32** %51 to i32*
  store i32* %52, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %257, %47
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 256
  br i1 %55, label %56, label %260

56:                                               ; preds = %53
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  store i32* %57, i32** %63, align 8
  %64 = load i32, i32* %5, align 4
  switch i32 %64, label %256 [
    i32 1, label %65
    i32 2, label %168
    i32 4, label %219
    i32 8, label %244
    i32 16, label %244
  ]

65:                                               ; preds = %56
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = ashr i32 %67, 7
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %72, i32 %73, i32 %74)
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = ashr i32 %79, 6
  %81 = and i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %85, i32 %86, i32 %87)
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = ashr i32 %92, 5
  %94 = and i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %98, i32 %99, i32 %100)
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %8, align 8
  store i32 %101, i32* %102, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* %7, align 4
  %106 = ashr i32 %105, 4
  %107 = and i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %111, i32 %112, i32 %113)
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %8, align 8
  store i32 %114, i32* %115, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = ashr i32 %118, 3
  %120 = and i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %117, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %124, i32 %125, i32 %126)
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %8, align 8
  store i32 %127, i32* %128, align 4
  %130 = load i32*, i32** %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = ashr i32 %131, 2
  %133 = and i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %137, i32 %138, i32 %139)
  %141 = load i32*, i32** %8, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %8, align 8
  store i32 %140, i32* %141, align 4
  %143 = load i32*, i32** %4, align 8
  %144 = load i32, i32* %7, align 4
  %145 = ashr i32 %144, 1
  %146 = and i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %150, i32 %151, i32 %152)
  %154 = load i32*, i32** %8, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %8, align 8
  store i32 %153, i32* %154, align 4
  %156 = load i32*, i32** %4, align 8
  %157 = load i32, i32* %7, align 4
  %158 = and i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %162, i32 %163, i32 %164)
  %166 = load i32*, i32** %8, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %8, align 8
  store i32 %165, i32* %166, align 4
  br label %256

168:                                              ; preds = %56
  %169 = load i32*, i32** %4, align 8
  %170 = load i32, i32* %7, align 4
  %171 = ashr i32 %170, 6
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %175, i32 %176, i32 %177)
  %179 = load i32*, i32** %8, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %8, align 8
  store i32 %178, i32* %179, align 4
  %181 = load i32*, i32** %4, align 8
  %182 = load i32, i32* %7, align 4
  %183 = ashr i32 %182, 4
  %184 = and i32 %183, 3
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %181, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %188, i32 %189, i32 %190)
  %192 = load i32*, i32** %8, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %8, align 8
  store i32 %191, i32* %192, align 4
  %194 = load i32*, i32** %4, align 8
  %195 = load i32, i32* %7, align 4
  %196 = ashr i32 %195, 2
  %197 = and i32 %196, 3
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %194, i64 %198
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %201, i32 %202, i32 %203)
  %205 = load i32*, i32** %8, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %8, align 8
  store i32 %204, i32* %205, align 4
  %207 = load i32*, i32** %4, align 8
  %208 = load i32, i32* %7, align 4
  %209 = and i32 %208, 3
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %9, align 4
  %216 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %213, i32 %214, i32 %215)
  %217 = load i32*, i32** %8, align 8
  %218 = getelementptr inbounds i32, i32* %217, i32 1
  store i32* %218, i32** %8, align 8
  store i32 %216, i32* %217, align 4
  br label %256

219:                                              ; preds = %56
  %220 = load i32*, i32** %4, align 8
  %221 = load i32, i32* %7, align 4
  %222 = ashr i32 %221, 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %9, align 4
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %9, align 4
  %229 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %226, i32 %227, i32 %228)
  %230 = load i32*, i32** %8, align 8
  %231 = getelementptr inbounds i32, i32* %230, i32 1
  store i32* %231, i32** %8, align 8
  store i32 %229, i32* %230, align 4
  %232 = load i32*, i32** %4, align 8
  %233 = load i32, i32* %7, align 4
  %234 = and i32 %233, 15
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %9, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* %9, align 4
  %241 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %238, i32 %239, i32 %240)
  %242 = load i32*, i32** %8, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %8, align 8
  store i32 %241, i32* %242, align 4
  br label %256

244:                                              ; preds = %56, %56
  %245 = load i32*, i32** %4, align 8
  %246 = load i32, i32* %7, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* %9, align 4
  %253 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %250, i32 %251, i32 %252)
  %254 = load i32*, i32** %8, align 8
  %255 = getelementptr inbounds i32, i32* %254, i32 1
  store i32* %255, i32** %8, align 8
  store i32 %253, i32* %254, align 4
  br label %256

256:                                              ; preds = %56, %244, %219, %168, %65
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %7, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %7, align 4
  br label %53

260:                                              ; preds = %53
  store i32 1, i32* %2, align 4
  br label %261

261:                                              ; preds = %260, %36
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

declare dso_local i64 @_TIFFmalloc(i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i32, i8*) #1

declare dso_local i32 @TIFFFileName(%struct.TYPE_5__*) #1

declare dso_local i32 @PACK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
