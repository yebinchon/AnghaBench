; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_read.c_TIFFSeek.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_read.c_TIFFSeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, i32, i64, i64, i32 (%struct.TYPE_11__*, i64)*, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64*, i64 }

@.str = private unnamed_addr constant [31 x i8] c"%lu: Row out of range, max %lu\00", align 1
@PLANARCONFIG_SEPARATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"%lu: Sample out of range, max %lu\00", align 1
@TIFF_TMSIZE_T_MAX = common dso_local global i32 0, align 4
@COMPRESSION_JBIG = common dso_local global i64 0, align 8
@COMPRESSION_LERC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64, i64)* @TIFFSeek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFSeek(%struct.TYPE_11__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @TIFFErrorExt(i32 %22, i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %29)
  store i32 0, i32* %4, align 4
  br label %221

31:                                               ; preds = %3
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PLANARCONFIG_SEPARATE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %31
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @TIFFErrorExt(i32 %46, i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %53)
  store i32 0, i32* %4, align 4
  br label %221

55:                                               ; preds = %37
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = mul i64 %56, %59
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = udiv i64 %61, %64
  %66 = add i64 %60, %65
  store i64 %66, i64* %9, align 8
  br label %73

67:                                               ; preds = %31
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = udiv i64 %68, %71
  store i64 %72, i64* %9, align 8
  br label %73

73:                                               ; preds = %67, %55
  store i32 1, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %102, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @TIFF_TMSIZE_T_MAX, align 4
  %81 = sdiv i32 %80, 16
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %76
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %86, 16
  %88 = load i32, i32* @TIFF_TMSIZE_T_MAX, align 4
  %89 = sub nsw i32 %88, 5000
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 %94, 16
  %96 = add nsw i32 %95, 5000
  store i32 %96, i32* %11, align 4
  br label %101

97:                                               ; preds = %83, %76
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %97, %91
  br label %102

102:                                              ; preds = %101, %73
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %102
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %113 = load i64, i64* %9, align 8
  %114 = call i32 @TIFFFillStrip(%struct.TYPE_11__* %112, i64 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %221

117:                                              ; preds = %111
  br label %126

118:                                              ; preds = %108
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @TIFFFillStripPartial(%struct.TYPE_11__* %119, i64 %120, i32 %121, i32 1)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %221

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %117
  br label %170

127:                                              ; preds = %102
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %169, label %130

130:                                              ; preds = %127
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %133, %136
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %137, %140
  %142 = load i32, i32* %11, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %168

144:                                              ; preds = %130
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %147, %151
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 5
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* %9, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = icmp slt i64 %152, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %144
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = load i64, i64* %9, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @TIFFFillStripPartial(%struct.TYPE_11__* %161, i64 %162, i32 %163, i32 0)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %221

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %144, %130
  br label %169

169:                                              ; preds = %168, %127
  br label %170

170:                                              ; preds = %169, %126
  %171 = load i64, i64* %6, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = icmp ult i64 %171, %174
  br i1 %175, label %176, label %197

176:                                              ; preds = %170
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %183 = load i64, i64* %9, align 8
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @TIFFFillStripPartial(%struct.TYPE_11__* %182, i64 %183, i32 %184, i32 1)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %181
  store i32 0, i32* %4, align 4
  br label %221

188:                                              ; preds = %181
  br label %196

189:                                              ; preds = %176
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %191 = load i64, i64* %9, align 8
  %192 = call i32 @TIFFStartStrip(%struct.TYPE_11__* %190, i64 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  store i32 0, i32* %4, align 4
  br label %221

195:                                              ; preds = %189
  br label %196

196:                                              ; preds = %195, %188
  br label %197

197:                                              ; preds = %196, %170
  %198 = load i64, i64* %6, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 6
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %198, %201
  br i1 %202, label %203, label %220

203:                                              ; preds = %197
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 7
  %206 = load i32 (%struct.TYPE_11__*, i64)*, i32 (%struct.TYPE_11__*, i64)** %205, align 8
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %208 = load i64, i64* %6, align 8
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = sub i64 %208, %211
  %213 = call i32 %206(%struct.TYPE_11__* %207, i64 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %203
  store i32 0, i32* %4, align 4
  br label %221

216:                                              ; preds = %203
  %217 = load i64, i64* %6, align 8
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 6
  store i64 %217, i64* %219, align 8
  br label %220

220:                                              ; preds = %216, %197
  store i32 1, i32* %4, align 4
  br label %221

221:                                              ; preds = %220, %215, %194, %187, %166, %124, %116, %43, %19
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @TIFFErrorExt(i32, i32, i8*, i64, i64) #1

declare dso_local i32 @TIFFFillStrip(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @TIFFFillStripPartial(%struct.TYPE_11__*, i64, i32, i32) #1

declare dso_local i32 @TIFFStartStrip(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
