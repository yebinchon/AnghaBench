; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryArrayWithLimit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryArrayWithLimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i64 }

@TIFFReadDirEntryErrOk = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrSizesan = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrIo = common dso_local global i32 0, align 4
@TIFF_BIGTIFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ReadDirEntryArray\00", align 1
@TIFFReadDirEntryErrAlloc = common dso_local global i32 0, align 4
@TIFF_SWAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i32, i8**, i64)* @TIFFReadDirEntryArrayWithLimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFReadDirEntryArrayWithLimit(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2, i32 %3, i8** %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i64 %5, i64* %13, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @TIFFDataWidth(i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i64, i64* %13, align 8
  br label %37

33:                                               ; preds = %6
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi i64 [ %32, %31 ], [ %36, %33 ]
  store i64 %38, i64* %17, align 8
  %39 = load i64, i64* %17, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %37
  %45 = load i8**, i8*** %12, align 8
  store i8* null, i8** %45, align 8
  %46 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %46, i32* %7, align 4
  br label %236

47:                                               ; preds = %41
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %14, align 4
  %50 = sdiv i32 2147483647, %49
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %17, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @TIFFReadDirEntryErrSizesan, align 4
  store i32 %55, i32* %7, align 4
  br label %236

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4
  %58 = sdiv i32 2147483647, %57
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %17, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @TIFFReadDirEntryErrSizesan, align 4
  store i32 %63, i32* %7, align 4
  br label %236

64:                                               ; preds = %56
  %65 = load i64, i64* %17, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %14, align 4
  %71 = mul nsw i32 %69, %70
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp sgt i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = call i64 @isMapped(%struct.TYPE_11__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %64
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = icmp sgt i32 %81, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @TIFFReadDirEntryErrIo, align 4
  store i32 %88, i32* %7, align 4
  br label %236

89:                                               ; preds = %80, %64
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %91 = call i64 @isMapped(%struct.TYPE_11__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %114, label %93

93:                                               ; preds = %89
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @TIFF_BIGTIFF, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* %15, align 4
  %102 = icmp sgt i32 %101, 8
  br i1 %102, label %113, label %103

103:                                              ; preds = %100, %93
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @TIFF_BIGTIFF, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %15, align 4
  %112 = icmp sgt i32 %111, 4
  br i1 %112, label %113, label %114

113:                                              ; preds = %110, %100
  store i8* null, i8** %16, align 8
  br label %125

114:                                              ; preds = %110, %103, %89
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i8* @_TIFFCheckMalloc(%struct.TYPE_11__* %115, i32 %117, i32 %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %119, i8** %16, align 8
  %120 = load i8*, i8** %16, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i32, i32* @TIFFReadDirEntryErrAlloc, align 4
  store i32 %123, i32* %7, align 4
  br label %236

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124, %113
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @TIFF_BIGTIFF, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %183, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %15, align 4
  %134 = icmp sle i32 %133, 4
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i8*, i8** %16, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @_TIFFmemcpy(i8* %136, %struct.TYPE_12__* %138, i32 %139)
  br label %182

141:                                              ; preds = %132
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %19, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @TIFF_SWAB, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %141
  %153 = call i32 @TIFFSwabLong(i32* %19)
  br label %154

154:                                              ; preds = %152, %141
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %156 = call i64 @isMapped(%struct.TYPE_11__* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %160 = load i32, i32* %19, align 4
  %161 = sext i32 %160 to i64
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = load i8*, i8** %16, align 8
  %165 = call i32 @TIFFReadDirEntryData(%struct.TYPE_11__* %159, i64 %161, i64 %163, i8* %164)
  store i32 %165, i32* %18, align 4
  br label %173

166:                                              ; preds = %154
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %168 = load i32, i32* %19, align 4
  %169 = sext i32 %168 to i64
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = call i32 @TIFFReadDirEntryDataAndRealloc(%struct.TYPE_11__* %167, i64 %169, i64 %171, i8** %16)
  store i32 %172, i32* %18, align 4
  br label %173

173:                                              ; preds = %166, %158
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load i8*, i8** %16, align 8
  %179 = call i32 @_TIFFfree(i8* %178)
  %180 = load i32, i32* %18, align 4
  store i32 %180, i32* %7, align 4
  br label %236

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181, %135
  br label %232

183:                                              ; preds = %125
  %184 = load i32, i32* %15, align 4
  %185 = icmp sle i32 %184, 8
  br i1 %185, label %186, label %192

186:                                              ; preds = %183
  %187 = load i8*, i8** %16, align 8
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @_TIFFmemcpy(i8* %187, %struct.TYPE_12__* %189, i32 %190)
  br label %231

192:                                              ; preds = %183
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %21, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @TIFF_SWAB, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %192
  %204 = call i32 @TIFFSwabLong8(i64* %21)
  br label %205

205:                                              ; preds = %203, %192
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %207 = call i64 @isMapped(%struct.TYPE_11__* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %205
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %211 = load i64, i64* %21, align 8
  %212 = load i32, i32* %15, align 4
  %213 = sext i32 %212 to i64
  %214 = load i8*, i8** %16, align 8
  %215 = call i32 @TIFFReadDirEntryData(%struct.TYPE_11__* %210, i64 %211, i64 %213, i8* %214)
  store i32 %215, i32* %20, align 4
  br label %222

216:                                              ; preds = %205
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %218 = load i64, i64* %21, align 8
  %219 = load i32, i32* %15, align 4
  %220 = sext i32 %219 to i64
  %221 = call i32 @TIFFReadDirEntryDataAndRealloc(%struct.TYPE_11__* %217, i64 %218, i64 %220, i8** %16)
  store i32 %221, i32* %20, align 4
  br label %222

222:                                              ; preds = %216, %209
  %223 = load i32, i32* %20, align 4
  %224 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %222
  %227 = load i8*, i8** %16, align 8
  %228 = call i32 @_TIFFfree(i8* %227)
  %229 = load i32, i32* %20, align 4
  store i32 %229, i32* %7, align 4
  br label %236

230:                                              ; preds = %222
  br label %231

231:                                              ; preds = %230, %186
  br label %232

232:                                              ; preds = %231, %182
  %233 = load i8*, i8** %16, align 8
  %234 = load i8**, i8*** %12, align 8
  store i8* %233, i8** %234, align 8
  %235 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %235, i32* %7, align 4
  br label %236

236:                                              ; preds = %232, %226, %177, %122, %87, %62, %54, %44
  %237 = load i32, i32* %7, align 4
  ret i32 %237
}

declare dso_local i32 @TIFFDataWidth(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isMapped(%struct.TYPE_11__*) #1

declare dso_local i8* @_TIFFCheckMalloc(%struct.TYPE_11__*, i32, i32, i8*) #1

declare dso_local i32 @_TIFFmemcpy(i8*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @TIFFSwabLong(i32*) #1

declare dso_local i32 @TIFFReadDirEntryData(%struct.TYPE_11__*, i64, i64, i8*) #1

declare dso_local i32 @TIFFReadDirEntryDataAndRealloc(%struct.TYPE_11__*, i64, i64, i8**) #1

declare dso_local i32 @_TIFFfree(i8*) #1

declare dso_local i32 @TIFFSwabLong8(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
