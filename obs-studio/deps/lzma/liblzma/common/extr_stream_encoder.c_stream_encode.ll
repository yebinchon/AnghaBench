; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_stream_encoder.c_stream_encode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/common/extr_stream_encoder.c_stream_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_14__, i32, %struct.TYPE_13__, %struct.TYPE_10__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 (i32, i32*, i32*, i32*, i32, i32*, i64*, i64, i64)* }
%struct.TYPE_10__ = type { i32, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)* }
%struct.TYPE_11__ = type { i32, i32, i32 }

@LZMA_OK = common dso_local global i32 0, align 4
@LZMA_STREAM_END = common dso_local global i32 0, align 4
@LZMA_PROG_ERROR = common dso_local global i32 0, align 4
@stream_encode.convert = internal constant [4 x i64] [i64 135, i64 134, i64 136, i64 136], align 16
@LZMA_STREAM_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)* @stream_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_encode(%struct.TYPE_12__* %0, i32* %1, i32* noalias %2, i64* noalias %3, i64 %4, i32* noalias %5, i64* noalias %6, i64 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i64* %6, i64** %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  br label %24

24:                                               ; preds = %226, %9
  %25 = load i64*, i64** %17, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %18, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %227

29:                                               ; preds = %24
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %223 [
    i32 128, label %33
    i32 132, label %33
    i32 129, label %33
    i32 131, label %69
    i32 133, label %129
    i32 130, label %178
  ]

33:                                               ; preds = %29, %29, %29
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = load i64*, i64** %17, align 8
  %44 = load i64, i64* %18, align 8
  %45 = call i32 @lzma_bufcpy(i32 %36, i32* %38, i32 %41, i32* %42, i64* %43, i64 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %33
  %54 = load i32, i32* @LZMA_OK, align 4
  store i32 %54, i32* %10, align 4
  br label %229

55:                                               ; preds = %33
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 129
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @LZMA_STREAM_END, align 4
  store i32 %61, i32* %10, align 4
  br label %229

62:                                               ; preds = %55
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 8
  store i32 0, i32* %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %226

69:                                               ; preds = %29
  %70 = load i64*, i64** %14, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %15, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %69
  %75 = load i64, i64* %19, align 8
  %76 = icmp ne i64 %75, 136
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i64, i64* %19, align 8
  %79 = icmp eq i64 %78, 135
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @LZMA_OK, align 4
  br label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @LZMA_STREAM_END, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  store i32 %85, i32* %10, align 4
  br label %229

86:                                               ; preds = %74
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 6
  %89 = load i32*, i32** %12, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @lzma_index_encoder_init(%struct.TYPE_13__* %88, i32* %89, i32 %92)
  %94 = call i32 @return_if_error(i32 %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i32 130, i32* %96, align 8
  br label %226

97:                                               ; preds = %69
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @block_encoder_init(%struct.TYPE_12__* %103, i32* %104)
  %106 = call i32 @return_if_error(i32 %105)
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @lzma_block_header_encode(%struct.TYPE_14__* %111, i32 %114)
  %116 = load i32, i32* @LZMA_OK, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %119, i32* %10, align 4
  br label %229

120:                                              ; preds = %107
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  store i32 132, i32* %128, align 8
  br label %226

129:                                              ; preds = %29
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)*, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)** %132, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32*, i32** %12, align 8
  %139 = load i32*, i32** %13, align 8
  %140 = load i64*, i64** %14, align 8
  %141 = load i64, i64* %15, align 8
  %142 = load i32*, i32** %16, align 8
  %143 = load i64*, i64** %17, align 8
  %144 = load i64, i64* %18, align 8
  %145 = load i64, i64* %19, align 8
  %146 = getelementptr inbounds [4 x i64], [4 x i64]* @stream_encode.convert, i64 0, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i32 %133(i32 %137, i32* %138, i32* %139, i64* %140, i64 %141, i32* %142, i64* %143, i64 %144, i64 %147)
  store i32 %148, i32* %20, align 4
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* @LZMA_STREAM_END, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %155, label %152

152:                                              ; preds = %129
  %153 = load i64, i64* %19, align 8
  %154 = icmp eq i64 %153, 134
  br i1 %154, label %155, label %157

155:                                              ; preds = %152, %129
  %156 = load i32, i32* %20, align 4
  store i32 %156, i32* %10, align 4
  br label %229

157:                                              ; preds = %152
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 4
  %160 = call i32 @lzma_block_unpadded_size(%struct.TYPE_14__* %159)
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* %21, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @lzma_index_append(i32 %167, i32* %168, i32 %169, i32 %173)
  %175 = call i32 @return_if_error(i32 %174)
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  store i32 131, i32* %177, align 8
  br label %226

178:                                              ; preds = %29
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i32 (i32, i32*, i32*, i32*, i32, i32*, i64*, i64, i64)*, i32 (i32, i32*, i32*, i32*, i32, i32*, i64*, i64, i64)** %181, align 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32*, i32** %12, align 8
  %188 = load i32*, i32** %16, align 8
  %189 = load i64*, i64** %17, align 8
  %190 = load i64, i64* %18, align 8
  %191 = call i32 %182(i32 %186, i32* %187, i32* null, i32* null, i32 0, i32* %188, i64* %189, i64 %190, i64 135)
  store i32 %191, i32* %22, align 4
  %192 = load i32, i32* %22, align 4
  %193 = load i32, i32* @LZMA_STREAM_END, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %178
  %196 = load i32, i32* %22, align 4
  store i32 %196, i32* %10, align 4
  br label %229

197:                                              ; preds = %178
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  store i32 %202, i32* %198, align 4
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @lzma_index_size(i32 %206)
  store i32 %207, i32* %203, align 4
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  store i32 0, i32* %208, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @lzma_stream_footer_encode(%struct.TYPE_11__* %23, i32 %211)
  %213 = load i32, i32* @LZMA_OK, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %197
  %216 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %216, i32* %10, align 4
  br label %229

217:                                              ; preds = %197
  %218 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 8
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  store i32 129, i32* %222, align 8
  br label %226

223:                                              ; preds = %29
  %224 = call i32 @assert(i32 0)
  %225 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %225, i32* %10, align 4
  br label %229

226:                                              ; preds = %217, %157, %120, %86, %62
  br label %24

227:                                              ; preds = %24
  %228 = load i32, i32* @LZMA_OK, align 4
  store i32 %228, i32* %10, align 4
  br label %229

229:                                              ; preds = %227, %223, %215, %195, %155, %118, %84, %60, %53
  %230 = load i32, i32* %10, align 4
  ret i32 %230
}

declare dso_local i32 @lzma_bufcpy(i32, i32*, i32, i32*, i64*, i64) #1

declare dso_local i32 @return_if_error(i32) #1

declare dso_local i32 @lzma_index_encoder_init(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @block_encoder_init(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @lzma_block_header_encode(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @lzma_block_unpadded_size(%struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lzma_index_append(i32, i32*, i32, i32) #1

declare dso_local i32 @lzma_index_size(i32) #1

declare dso_local i32 @lzma_stream_footer_encode(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
