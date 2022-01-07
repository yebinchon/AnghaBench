; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_Uncompress_Topic.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_Uncompress_Topic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32**, i32*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"|TOPIC\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"topic0\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @HLPFILE_Uncompress_Topic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HLPFILE_Uncompress_Topic(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = call i32 @HLPFILE_FindSubFile(%struct.TYPE_4__* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32** %4, i32** %6)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = call i32 @WINE_WARN(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %260

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 9
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %165

31:                                               ; preds = %17
  %32 = load i32, i32* %10, align 4
  %33 = sub i32 %32, 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = udiv i32 %33, %36
  %38 = add i32 %37, 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %79, %31
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %41
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul i32 %49, %52
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %48, i64 %54
  store i32* %55, i32** %5, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 68
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ugt i32* %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 -68
  store i32* %62, i32** %5, align 8
  br label %63

63:                                               ; preds = %60, %47
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 12
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = call i32 @min(i32* %66, i32* %72)
  %74 = call i64 @HLPFILE_UncompressedLZ77_Size(i32* %65, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %63
  %80 = load i32, i32* %8, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %41

82:                                               ; preds = %41
  %83 = call i32 (...) @GetProcessHeap()
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = zext i32 %86 to i64
  %88 = mul i64 %87, 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = add i64 %88, %90
  %92 = trunc i64 %91 to i32
  %93 = call i8* @HeapAlloc(i32 %83, i32 0, i32 %92)
  %94 = bitcast i8* %93 to i32**
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i32** %94, i32*** %96, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i32**, i32*** %98, align 8
  %100 = icmp ne i32** %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %82
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %2, align 4
  br label %260

103:                                              ; preds = %82
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = load i32**, i32*** %105, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %106, i64 %110
  %112 = bitcast i32** %111 to i32*
  store i32* %112, i32** %7, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  store i32* %116, i32** %118, align 8
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %161, %103
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ult i32 %120, %123
  br i1 %124, label %125, label %164

125:                                              ; preds = %119
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = mul i32 %127, %130
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %126, i64 %132
  store i32* %133, i32** %5, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 68
  %136 = load i32*, i32** %6, align 8
  %137 = icmp ugt i32* %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %125
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 -68
  store i32* %140, i32** %5, align 8
  br label %141

141:                                              ; preds = %138, %125
  %142 = load i32*, i32** %7, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  store i32* %142, i32** %148, align 8
  %149 = load i32*, i32** %5, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 12
  %151 = load i32*, i32** %6, align 8
  %152 = load i32*, i32** %5, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = call i32 @min(i32* %151, i32* %157)
  %159 = load i32*, i32** %7, align 8
  %160 = call i32* @HLPFILE_UncompressLZ77(i32* %150, i32 %158, i32* %159)
  store i32* %160, i32** %7, align 8
  br label %161

161:                                              ; preds = %141
  %162 = load i32, i32* %8, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %119

164:                                              ; preds = %119
  br label %258

165:                                              ; preds = %17
  %166 = load i32, i32* %10, align 4
  %167 = sub i32 %166, 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = udiv i32 %167, %170
  %172 = add i32 %171, 1
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = call i32 (...) @GetProcessHeap()
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = zext i32 %178 to i64
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = add i64 8, %183
  %185 = mul i64 %179, %184
  %186 = trunc i64 %185 to i32
  %187 = call i8* @HeapAlloc(i32 %175, i32 0, i32 %186)
  %188 = bitcast i8* %187 to i32**
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 3
  store i32** %188, i32*** %190, align 8
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 3
  %193 = load i32**, i32*** %192, align 8
  %194 = icmp ne i32** %193, null
  br i1 %194, label %197, label %195

195:                                              ; preds = %165
  %196 = load i32, i32* @FALSE, align 4
  store i32 %196, i32* %2, align 4
  br label %260

197:                                              ; preds = %165
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 3
  %200 = load i32**, i32*** %199, align 8
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i32*, i32** %200, i64 %204
  %206 = bitcast i32** %205 to i32*
  store i32* %206, i32** %7, align 8
  %207 = load i32*, i32** %7, align 8
  %208 = load i32, i32* %10, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 4
  store i32* %210, i32** %212, align 8
  store i32 0, i32* %8, align 4
  br label %213

213:                                              ; preds = %254, %197
  %214 = load i32, i32* %8, align 4
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ult i32 %214, %217
  br i1 %218, label %219, label %257

219:                                              ; preds = %213
  %220 = load i32*, i32** %7, align 8
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = mul i32 %221, %224
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %220, i64 %226
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 3
  %230 = load i32**, i32*** %229, align 8
  %231 = load i32, i32* %8, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i32*, i32** %230, i64 %232
  store i32* %227, i32** %233, align 8
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 3
  %236 = load i32**, i32*** %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i32*, i32** %236, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = load i32*, i32** %4, align 8
  %242 = load i32, i32* %8, align 4
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = mul i32 %242, %245
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %241, i64 %247
  %249 = getelementptr inbounds i32, i32* %248, i64 12
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @memcpy(i32* %240, i32* %249, i32 %252)
  br label %254

254:                                              ; preds = %219
  %255 = load i32, i32* %8, align 4
  %256 = add i32 %255, 1
  store i32 %256, i32* %8, align 4
  br label %213

257:                                              ; preds = %213
  br label %258

258:                                              ; preds = %257, %164
  %259 = load i32, i32* @TRUE, align 4
  store i32 %259, i32* %2, align 4
  br label %260

260:                                              ; preds = %258, %195, %101, %14
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

declare dso_local i32 @HLPFILE_FindSubFile(%struct.TYPE_4__*, i8*, i32**, i32**) #1

declare dso_local i32 @WINE_WARN(i8*) #1

declare dso_local i64 @HLPFILE_UncompressedLZ77_Size(i32*, i32) #1

declare dso_local i32 @min(i32*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32* @HLPFILE_UncompressLZ77(i32*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
