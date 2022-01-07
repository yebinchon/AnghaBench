; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_demux_mkv_read_block_lacing.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_demux_mkv_read_block_lacing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_info = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i64 }
%struct.stream = type { i32 }

@MAX_NUM_LACES = common dso_local global i32 0, align 4
@EBML_UINT_INVALID = common dso_local global i64 0, align 8
@EBML_INT_INVALID = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@AV_LZO_INPUT_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_info*, i32, %struct.stream*, i64)* @demux_mkv_read_block_lacing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demux_mkv_read_block_lacing(%struct.block_info* %0, i32 %1, %struct.stream* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stream*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_4__*, align 8
  %28 = alloca i32, align 4
  store %struct.block_info* %0, %struct.block_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.stream* %2, %struct.stream** %8, align 8
  store i64 %3, i64* %9, align 8
  %29 = load i32, i32* @MAX_NUM_LACES, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %11, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.stream*, %struct.stream** %8, align 8
  %38 = call i64 @stream_tell(%struct.stream* %37)
  %39 = sub nsw i64 %36, %38
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %40, i32* %41, align 16
  br label %202

42:                                               ; preds = %4
  %43 = load %struct.stream*, %struct.stream** %8, align 8
  %44 = call i32 @stream_read_char(%struct.stream* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.stream*, %struct.stream** %8, align 8
  %49 = call i64 @stream_tell(%struct.stream* %48)
  %50 = load i64, i64* %9, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %42
  br label %283

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  switch i32 %56, label %200 [
    i32 1, label %57
    i32 2, label %113
    i32 3, label %134
  ]

57:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %58

58:                                               ; preds = %97, %57
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %100

63:                                               ; preds = %58
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %32, i64 %65
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %87, %63
  %68 = load %struct.stream*, %struct.stream** %8, align 8
  %69 = call i32 @stream_read_char(%struct.stream* %68)
  store i32 %69, i32* %15, align 4
  %70 = load %struct.stream*, %struct.stream** %8, align 8
  %71 = getelementptr inbounds %struct.stream, %struct.stream* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = load %struct.stream*, %struct.stream** %8, align 8
  %76 = call i64 @stream_tell(%struct.stream* %75)
  %77 = load i64, i64* %9, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74, %67
  br label %283

80:                                               ; preds = %74
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %32, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %81
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %15, align 4
  %89 = icmp eq i32 %88, 255
  br i1 %89, label %67, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %32, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %58

100:                                              ; preds = %58
  %101 = load i64, i64* %9, align 8
  %102 = load %struct.stream*, %struct.stream** %8, align 8
  %103 = call i64 @stream_tell(%struct.stream* %102)
  %104 = sub nsw i64 %101, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %13, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %32, i64 %111
  store i32 %108, i32* %112, align 4
  br label %201

113:                                              ; preds = %53
  %114 = load i64, i64* %9, align 8
  %115 = load %struct.stream*, %struct.stream** %8, align 8
  %116 = call i64 @stream_tell(%struct.stream* %115)
  %117 = sub nsw i64 %114, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %119

119:                                              ; preds = %130, %113
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %10, align 4
  %126 = sdiv i32 %124, %125
  %127 = load i32, i32* %18, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %32, i64 %128
  store i32 %126, i32* %129, align 4
  br label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %18, align 4
  br label %119

133:                                              ; preds = %119
  br label %201

134:                                              ; preds = %53
  %135 = load %struct.stream*, %struct.stream** %8, align 8
  %136 = call i64 @ebml_read_length(%struct.stream* %135)
  store i64 %136, i64* %19, align 8
  %137 = load i64, i64* %19, align 8
  %138 = load i64, i64* @EBML_UINT_INVALID, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %145, label %140

140:                                              ; preds = %134
  %141 = load %struct.stream*, %struct.stream** %8, align 8
  %142 = call i64 @stream_tell(%struct.stream* %141)
  %143 = load i64, i64* %9, align 8
  %144 = icmp sge i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %140, %134
  br label %283

146:                                              ; preds = %140
  %147 = load i64, i64* %19, align 8
  %148 = trunc i64 %147 to i32
  %149 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %148, i32* %149, align 16
  store i32 %148, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %150

150:                                              ; preds = %184, %146
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* %10, align 4
  %153 = sub nsw i32 %152, 1
  %154 = icmp slt i32 %151, %153
  br i1 %154, label %155, label %187

155:                                              ; preds = %150
  %156 = load %struct.stream*, %struct.stream** %8, align 8
  %157 = call i32 @ebml_read_signed_length(%struct.stream* %156)
  store i32 %157, i32* %22, align 4
  %158 = load i32, i32* %22, align 4
  %159 = load i32, i32* @EBML_INT_INVALID, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %166, label %161

161:                                              ; preds = %155
  %162 = load %struct.stream*, %struct.stream** %8, align 8
  %163 = call i64 @stream_tell(%struct.stream* %162)
  %164 = load i64, i64* %9, align 8
  %165 = icmp sge i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %161, %155
  br label %283

167:                                              ; preds = %161
  %168 = load i32, i32* %21, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %32, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %22, align 4
  %174 = add nsw i32 %172, %173
  %175 = load i32, i32* %21, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %32, i64 %176
  store i32 %174, i32* %177, align 4
  %178 = load i32, i32* %21, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %32, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %20, align 4
  br label %184

184:                                              ; preds = %167
  %185 = load i32, i32* %21, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %21, align 4
  br label %150

187:                                              ; preds = %150
  %188 = load i64, i64* %9, align 8
  %189 = load %struct.stream*, %struct.stream** %8, align 8
  %190 = call i64 @stream_tell(%struct.stream* %189)
  %191 = sub nsw i64 %188, %190
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %23, align 4
  %193 = load i32, i32* %23, align 4
  %194 = load i32, i32* %20, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load i32, i32* %10, align 4
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %32, i64 %198
  store i32 %195, i32* %199, align 4
  br label %201

200:                                              ; preds = %53
  br label %283

201:                                              ; preds = %187, %133, %100
  br label %202

202:                                              ; preds = %201, %35
  store i32 0, i32* %24, align 4
  br label %203

203:                                              ; preds = %273, %202
  %204 = load i32, i32* %24, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %276

207:                                              ; preds = %203
  %208 = load i32, i32* %24, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %32, i64 %209
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %25, align 4
  %212 = load %struct.stream*, %struct.stream** %8, align 8
  %213 = call i64 @stream_tell(%struct.stream* %212)
  %214 = load i32, i32* %25, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %213, %215
  %217 = load i64, i64* %9, align 8
  %218 = icmp sgt i64 %216, %217
  br i1 %218, label %222, label %219

219:                                              ; preds = %207
  %220 = load i32, i32* %25, align 4
  %221 = icmp sgt i32 %220, 1073741824
  br i1 %221, label %222, label %223

222:                                              ; preds = %219, %207
  br label %283

223:                                              ; preds = %219
  %224 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %225 = load i32, i32* @AV_LZO_INPUT_PADDING, align 4
  %226 = call i32 @MPMAX(i32 %224, i32 %225)
  store i32 %226, i32* %26, align 4
  %227 = load i32, i32* %25, align 4
  %228 = load i32, i32* %26, align 4
  %229 = add nsw i32 %227, %228
  %230 = call %struct.TYPE_4__* @av_buffer_alloc(i32 %229)
  store %struct.TYPE_4__* %230, %struct.TYPE_4__** %27, align 8
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %232 = icmp ne %struct.TYPE_4__* %231, null
  br i1 %232, label %234, label %233

233:                                              ; preds = %223
  br label %283

234:                                              ; preds = %223
  %235 = load i32, i32* %25, align 4
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  %238 = load %struct.stream*, %struct.stream** %8, align 8
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @stream_read(%struct.stream* %238, i64 %241, i32 %244)
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %245, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %234
  %251 = call i32 @av_buffer_unref(%struct.TYPE_4__** %27)
  br label %283

252:                                              ; preds = %234
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %255, %259
  %261 = load i32, i32* %26, align 4
  %262 = call i32 @memset(i64 %260, i32 0, i32 %261)
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %264 = load %struct.block_info*, %struct.block_info** %6, align 8
  %265 = getelementptr inbounds %struct.block_info, %struct.block_info* %264, i32 0, i32 1
  %266 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %265, align 8
  %267 = load %struct.block_info*, %struct.block_info** %6, align 8
  %268 = getelementptr inbounds %struct.block_info, %struct.block_info* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %266, i64 %271
  store %struct.TYPE_4__* %263, %struct.TYPE_4__** %272, align 8
  br label %273

273:                                              ; preds = %252
  %274 = load i32, i32* %24, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %24, align 4
  br label %203

276:                                              ; preds = %203
  %277 = load %struct.stream*, %struct.stream** %8, align 8
  %278 = call i64 @stream_tell(%struct.stream* %277)
  %279 = load i64, i64* %9, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  br label %283

282:                                              ; preds = %276
  store i32 0, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %284

283:                                              ; preds = %281, %250, %233, %222, %200, %166, %145, %79, %52
  store i32 1, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %284

284:                                              ; preds = %283, %282
  %285 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %285)
  %286 = load i32, i32* %5, align 4
  ret i32 %286
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @stream_tell(%struct.stream*) #2

declare dso_local i32 @stream_read_char(%struct.stream*) #2

declare dso_local i64 @ebml_read_length(%struct.stream*) #2

declare dso_local i32 @ebml_read_signed_length(%struct.stream*) #2

declare dso_local i32 @MPMAX(i32, i32) #2

declare dso_local %struct.TYPE_4__* @av_buffer_alloc(i32) #2

declare dso_local i32 @stream_read(%struct.stream*, i64, i32) #2

declare dso_local i32 @av_buffer_unref(%struct.TYPE_4__**) #2

declare dso_local i32 @memset(i64, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
