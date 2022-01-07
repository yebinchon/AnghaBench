; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_ChopUpSingleUncompressedStrip.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_ChopUpSingleUncompressedStrip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32*, i64, i64, i32*, i32, i32, i32, i32, i32 }

@O_RDONLY = common dso_local global i64 0, align 8
@PLANARCONFIG_CONTIG = common dso_local global i64 0, align 8
@PHOTOMETRIC_YCBCR = common dso_local global i64 0, align 8
@STRIP_SIZE_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"for chopped \22StripByteCounts\22 array\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"for chopped \22StripOffsets\22 array\00", align 1
@TIFFTAG_ROWSPERSTRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @ChopUpSingleUncompressedStrip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ChopUpSingleUncompressedStrip(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %3, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @O_RDONLY, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %216

31:                                               ; preds = %24, %1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PLANARCONFIG_CONTIG, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PHOTOMETRIC_YCBCR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %31
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = call i32 @isUpSampled(%struct.TYPE_10__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %6, align 4
  br label %60

59:                                               ; preds = %49, %31
  store i32 1, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %53
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @TIFFVTileSize64(%struct.TYPE_10__* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @STRIP_SIZE_DEFAULT, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %11, align 4
  br label %85

70:                                               ; preds = %60
  %71 = load i32, i32* %7, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i32, i32* @STRIP_SIZE_DEFAULT, align 4
  %75 = load i32, i32* %7, align 4
  %76 = sdiv i32 %74, %75
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %6, align 4
  %79 = mul nsw i32 %77, %78
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %80, %81
  store i32 %82, i32* %8, align 4
  br label %84

83:                                               ; preds = %70
  br label %216

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %67
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = icmp sge i32 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %216

92:                                               ; preds = %85
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @TIFFhowmany_32(i32 %95, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %216

101:                                              ; preds = %92
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @O_RDONLY, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %126

107:                                              ; preds = %101
  %108 = load i32, i32* %10, align 4
  %109 = icmp sgt i32 %108, 1000000
  br i1 %109, label %110, label %126

110:                                              ; preds = %107
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %113 = call i32 @TIFFGetFileSize(%struct.TYPE_10__* %112)
  %114 = icmp sge i32 %111, %113
  br i1 %114, label %125, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %118 = call i32 @TIFFGetFileSize(%struct.TYPE_10__* %117)
  %119 = load i32, i32* %5, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sdiv i32 %120, %122
  %124 = icmp sgt i32 %116, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %115, %110
  br label %216

126:                                              ; preds = %115, %107, %101
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i64 @_TIFFCheckMalloc(%struct.TYPE_10__* %127, i32 %128, i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %130 = inttoptr i64 %129 to i32*
  store i32* %130, i32** %12, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i64 @_TIFFCheckMalloc(%struct.TYPE_10__* %131, i32 %132, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %134 = inttoptr i64 %133 to i32*
  store i32* %134, i32** %13, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %126
  %138 = load i32*, i32** %13, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %153

140:                                              ; preds = %137, %126
  %141 = load i32*, i32** %12, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32*, i32** %12, align 8
  %145 = call i32 @_TIFFfree(i32* %144)
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i32*, i32** %13, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32*, i32** %13, align 8
  %151 = call i32 @_TIFFfree(i32* %150)
  br label %152

152:                                              ; preds = %149, %146
  br label %216

153:                                              ; preds = %137
  store i32 0, i32* %9, align 4
  br label %154

154:                                              ; preds = %187, %153
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %190

158:                                              ; preds = %154
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i32, i32* %4, align 4
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %162, %158
  %165 = load i32, i32* %8, align 4
  %166 = load i32*, i32** %12, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %165, i32* %169, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %164
  %173 = load i32, i32* %5, align 4
  br label %175

174:                                              ; preds = %164
  br label %175

175:                                              ; preds = %174, %172
  %176 = phi i32 [ %173, %172 ], [ 0, %174 ]
  %177 = load i32*, i32** %13, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %176, i32* %180, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %5, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %4, align 4
  %186 = sub nsw i32 %185, %184
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %175
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %154

190:                                              ; preds = %154
  %191 = load i32, i32* %10, align 4
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 7
  store i32 %191, i32* %193, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 6
  store i32 %191, i32* %195, align 4
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %197 = load i32, i32* @TIFFTAG_ROWSPERSTRIP, align 4
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @TIFFSetField(%struct.TYPE_10__* %196, i32 %197, i32 %198)
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @_TIFFfree(i32* %202)
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @_TIFFfree(i32* %206)
  %208 = load i32*, i32** %12, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  store i32* %208, i32** %210, align 8
  %211 = load i32*, i32** %13, align 8
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 1
  store i32* %211, i32** %213, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 8
  store i32 1, i32* %215, align 4
  br label %216

216:                                              ; preds = %190, %152, %125, %100, %91, %83, %30
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @isUpSampled(%struct.TYPE_10__*) #1

declare dso_local i32 @TIFFVTileSize64(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @TIFFhowmany_32(i32, i32) #1

declare dso_local i32 @TIFFGetFileSize(%struct.TYPE_10__*) #1

declare dso_local i64 @_TIFFCheckMalloc(%struct.TYPE_10__*, i32, i32, i8*) #1

declare dso_local i32 @_TIFFfree(i32*) #1

declare dso_local i32 @TIFFSetField(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
