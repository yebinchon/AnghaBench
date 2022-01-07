; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_block_decoder.c_block_decode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_block_decoder.c_block_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, %struct.TYPE_12__, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)* }

@LZMA_DATA_ERROR = common dso_local global i32 0, align 4
@LZMA_STREAM_END = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4
@LZMA_CHECK_NONE = common dso_local global i32 0, align 4
@LZMA_PROG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)* @block_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_decode(%struct.TYPE_11__* %0, i32* %1, i32* noalias %2, i64* noalias %3, i64 %4, i32* noalias %5, i64* noalias %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i64* %6, i64** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %241 [
    i32 129, label %29
    i32 128, label %139
    i32 130, label %189
  ]

29:                                               ; preds = %9
  %30 = load i64*, i64** %14, align 8
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %20, align 8
  %32 = load i64*, i64** %17, align 8
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %21, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)*, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)** %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i64*, i64** %14, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = load i64*, i64** %17, align 8
  %48 = load i64, i64* %18, align 8
  %49 = load i32, i32* %19, align 4
  %50 = call i32 %37(i32 %41, i32* %42, i32* %43, i64* %44, i64 %45, i32* %46, i64* %47, i64 %48, i32 %49)
  store i32 %50, i32* %22, align 4
  %51 = load i64*, i64** %14, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %20, align 8
  %54 = sub i64 %52, %53
  store i64 %54, i64* %23, align 8
  %55 = load i64*, i64** %17, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %21, align 8
  %58 = sub i64 %56, %57
  store i64 %58, i64* %24, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i64, i64* %23, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @update_size(i32* %60, i64 %61, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %29
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 3
  %70 = load i64, i64* %24, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 6
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @update_size(i32* %69, i64 %70, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67, %29
  %79 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %79, i32* %10, align 4
  br label %243

80:                                               ; preds = %67
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 6
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = load i64, i64* %21, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i64, i64* %24, align 8
  %92 = call i32 @lzma_check_update(%struct.TYPE_12__* %82, i32 %87, i32* %90, i64 %91)
  %93 = load i32, i32* %22, align 4
  %94 = load i32, i32* @LZMA_STREAM_END, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %80
  %97 = load i32, i32* %22, align 4
  store i32 %97, i32* %10, align 4
  br label %243

98:                                               ; preds = %80
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 6
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @is_size_valid(i32 %101, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %98
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 6
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @is_size_valid(i32 %112, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %109, %98
  %121 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %121, i32* %10, align 4
  br label %243

122:                                              ; preds = %109
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 6
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  store i32 %125, i32* %129, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 6
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  store i32 128, i32* %138, align 8
  br label %139

139:                                              ; preds = %9, %122
  br label %140

140:                                              ; preds = %167, %139
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 3
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %168

146:                                              ; preds = %140
  %147 = load i64*, i64** %14, align 8
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %15, align 8
  %150 = icmp uge i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i32, i32* @LZMA_OK, align 4
  store i32 %152, i32* %10, align 4
  br label %243

153:                                              ; preds = %146
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  %158 = load i32*, i32** %13, align 8
  %159 = load i64*, i64** %14, align 8
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %159, align 8
  %162 = getelementptr inbounds i32, i32* %158, i64 %160
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %153
  %166 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %166, i32* %10, align 4
  br label %243

167:                                              ; preds = %153
  br label %140

168:                                              ; preds = %140
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 6
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @LZMA_CHECK_NONE, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load i32, i32* @LZMA_STREAM_END, align 4
  store i32 %177, i32* %10, align 4
  br label %243

178:                                              ; preds = %168
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 5
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 6
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @lzma_check_finish(%struct.TYPE_12__* %180, i32 %185)
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  store i32 130, i32* %188, align 8
  br label %189

189:                                              ; preds = %9, %178
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 6
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @lzma_check_size(i32 %194)
  store i64 %195, i64* %25, align 8
  %196 = load i32*, i32** %13, align 8
  %197 = load i64*, i64** %14, align 8
  %198 = load i64, i64* %15, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 6
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 4
  %206 = load i64, i64* %25, align 8
  %207 = call i32 @lzma_bufcpy(i32* %196, i64* %197, i64 %198, i32 %203, i64* %205, i64 %206)
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %25, align 8
  %212 = icmp ult i64 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %189
  %214 = load i32, i32* @LZMA_OK, align 4
  store i32 %214, i32* %10, align 4
  br label %243

215:                                              ; preds = %189
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 6
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @lzma_check_is_supported(i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %239

223:                                              ; preds = %215
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 6
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i64, i64* %25, align 8
  %235 = call i32 @memcmp(i32 %228, i32 %233, i64 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %223
  %238 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %238, i32* %10, align 4
  br label %243

239:                                              ; preds = %223, %215
  %240 = load i32, i32* @LZMA_STREAM_END, align 4
  store i32 %240, i32* %10, align 4
  br label %243

241:                                              ; preds = %9
  %242 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %242, i32* %10, align 4
  br label %243

243:                                              ; preds = %241, %239, %237, %213, %176, %165, %151, %120, %96, %78
  %244 = load i32, i32* %10, align 4
  ret i32 %244
}

declare dso_local i32 @update_size(i32*, i64, i32) #1

declare dso_local i32 @lzma_check_update(%struct.TYPE_12__*, i32, i32*, i64) #1

declare dso_local i32 @is_size_valid(i32, i32) #1

declare dso_local i32 @lzma_check_finish(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @lzma_check_size(i32) #1

declare dso_local i32 @lzma_bufcpy(i32*, i64*, i64, i32, i64*, i64) #1

declare dso_local i32 @lzma_check_is_supported(i32) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
