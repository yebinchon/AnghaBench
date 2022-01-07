; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64 }

@TIFFWriteDirectoryTagData.module = internal constant [26 x i8] c"TIFFWriteDirectoryTagData\00", align 16
@TIFF_BIGTIFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Maximum TIFF file size exceeded\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"IO error writing tag data\00", align 1
@TIFF_SWAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64*, %struct.TYPE_8__*, i64, i64, i64, i64, i8*)* @TIFFWriteDirectoryTagData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFWriteDirectoryTagData(%struct.TYPE_9__* %0, i64* %1, %struct.TYPE_8__* %2, i64 %3, i64 %4, i64 %5, i64 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %10, align 8
  store i64* %1, i64** %11, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i8* %7, i8** %17, align 8
  store i64 0, i64* %18, align 8
  br label %23

23:                                               ; preds = %46, %8
  %24 = load i64, i64* %18, align 8
  %25 = load i64*, i64** %11, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %30 = load i64, i64* %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = load i64, i64* %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %49

46:                                               ; preds = %28
  %47 = load i64, i64* %18, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %18, align 8
  br label %23

49:                                               ; preds = %45, %23
  %50 = load i64, i64* %18, align 8
  %51 = load i64*, i64** %11, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %50, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %49
  %55 = load i64*, i64** %11, align 8
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %19, align 8
  br label %57

57:                                               ; preds = %71, %54
  %58 = load i64, i64* %19, align 8
  %59 = load i64, i64* %18, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %63 = load i64, i64* %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %63
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %66 = load i64, i64* %19, align 8
  %67 = sub i64 %66, 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = bitcast %struct.TYPE_8__* %64 to i8*
  %70 = bitcast %struct.TYPE_8__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 32, i1 false)
  br label %71

71:                                               ; preds = %61
  %72 = load i64, i64* %19, align 8
  %73 = add i64 %72, -1
  store i64 %73, i64* %19, align 8
  br label %57

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %49
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %78 = load i64, i64* %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i64 %76, i64* %80, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = load i64, i64* %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  store i64 %81, i64* %85, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %88 = load i64, i64* %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i64 %86, i64* %90, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %92 = load i64, i64* %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load i64, i64* %16, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @TIFF_BIGTIFF, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 8, i32 4
  %105 = zext i32 %104 to i64
  %106 = icmp ule i64 %96, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %75
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %109 = load i64, i64* %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i8*, i8** %17, align 8
  %113 = bitcast i8* %112 to i64*
  %114 = load i64, i64* %16, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @_TIFFmemcpy(%struct.TYPE_10__* %111, i64* %113, i32 %115)
  br label %230

117:                                              ; preds = %75
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %20, align 8
  %121 = load i64, i64* %20, align 8
  %122 = load i64, i64* %16, align 8
  %123 = add i64 %121, %122
  store i64 %123, i64* %21, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @TIFF_BIGTIFF, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %117
  %131 = load i64, i64* %21, align 8
  store i64 %131, i64* %21, align 8
  br label %132

132:                                              ; preds = %130, %117
  %133 = load i64, i64* %21, align 8
  %134 = load i64, i64* %20, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i64, i64* %21, align 8
  %138 = load i64, i64* %16, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %136, %132
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @TIFFErrorExt(i32 %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @TIFFWriteDirectoryTagData.module, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %234

145:                                              ; preds = %136
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %147 = load i64, i64* %20, align 8
  %148 = call i32 @SeekOK(%struct.TYPE_9__* %146, i64 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @TIFFErrorExt(i32 %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @TIFFWriteDirectoryTagData.module, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %234

155:                                              ; preds = %145
  %156 = load i64, i64* %16, align 8
  %157 = icmp ult i64 %156, 2147483648
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %161 = load i8*, i8** %17, align 8
  %162 = load i64, i64* %16, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 @WriteOK(%struct.TYPE_9__* %160, i8* %161, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %155
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @TIFFErrorExt(i32 %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @TIFFWriteDirectoryTagData.module, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %234

171:                                              ; preds = %155
  %172 = load i64, i64* %21, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = and i64 %177, 1
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %171
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %182, align 8
  br label %185

185:                                              ; preds = %180, %171
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @TIFF_BIGTIFF, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %208, label %192

192:                                              ; preds = %185
  %193 = load i64, i64* %20, align 8
  store i64 %193, i64* %22, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @TIFF_SWAB, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %192
  %201 = call i32 @TIFFSwabLong(i64* %22)
  br label %202

202:                                              ; preds = %200, %192
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %204 = load i64, i64* %18, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 2
  %207 = call i32 @_TIFFmemcpy(%struct.TYPE_10__* %206, i64* %22, i32 4)
  br label %229

208:                                              ; preds = %185
  %209 = load i64, i64* %20, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %211 = load i64, i64* %18, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  store i64 %209, i64* %214, align 8
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @TIFF_SWAB, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %208
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %223 = load i64, i64* %18, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = call i32 @TIFFSwabLong8(i64* %226)
  br label %228

228:                                              ; preds = %221, %208
  br label %229

229:                                              ; preds = %228, %202
  br label %230

230:                                              ; preds = %229, %107
  %231 = load i64*, i64** %11, align 8
  %232 = load i64, i64* %231, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %231, align 8
  store i32 1, i32* %9, align 4
  br label %234

234:                                              ; preds = %230, %166, %150, %140
  %235 = load i32, i32* %9, align 4
  ret i32 %235
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_TIFFmemcpy(%struct.TYPE_10__*, i64*, i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local i32 @SeekOK(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @WriteOK(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @TIFFSwabLong(i64*) #1

declare dso_local i32 @TIFFSwabLong8(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
