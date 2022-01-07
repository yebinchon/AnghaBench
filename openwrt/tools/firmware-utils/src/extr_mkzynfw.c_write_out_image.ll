; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzynfw.c_write_out_image.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzynfw.c_write_out_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32 }
%struct.fw_block = type { i64, i64, i32, i32 }
%struct.fw_mmap = type { i64 }
%struct.zyn_rombin_hdr = type { i32, i64, i64, i32, i32, i32 }
%struct.csum_state = type { i32 }

@board = common dso_local global %struct.TYPE_2__* null, align 8
@OBJECT_TYPE_BOOTEXT = common dso_local global i32 0, align 4
@ROMBIN_FLAG_OCSUM = common dso_local global i32 0, align 4
@bootext_block = common dso_local global %struct.fw_block* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"bootext file '%s' is too big\00", align 1
@MMAP_ALIGN = common dso_local global i32 0, align 4
@MMAP_DATA_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"bootext end at %08x\00", align 1
@num_blocks = common dso_local global i32 0, align 4
@blocks = common dso_local global %struct.fw_block* null, align 8
@BLOCK_TYPE_BOOTEXT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"ocsum=%04x, csum=%04x, fix=%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_out_image(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.fw_block*, align 8
  %5 = alloca %struct.fw_mmap, align 8
  %6 = alloca %struct.zyn_rombin_hdr, align 8
  %7 = alloca %struct.csum_state, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %14 = call i32 @memset(%struct.zyn_rombin_hdr* %6, i32 0, i32 40)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @board, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 5
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @OBJECT_TYPE_BOOTEXT, align 4
  %20 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @ROMBIN_FLAG_OCSUM, align 4
  %22 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @board, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @write_out_header(i32* %26, %struct.zyn_rombin_hdr* %6)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %2, align 4
  br label %245

32:                                               ; preds = %1
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 40
  store i64 %34, i64* %10, align 8
  %35 = call i32 @csum_init(%struct.csum_state* %7)
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.fw_block*, %struct.fw_block** @bootext_block, align 8
  %38 = call i32 @write_out_block(i32* %36, %struct.fw_block* %37, %struct.csum_state* %7)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %2, align 4
  br label %245

43:                                               ; preds = %32
  %44 = load %struct.fw_block*, %struct.fw_block** @bootext_block, align 8
  %45 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @board, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @board, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = icmp sgt i64 %49, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.fw_block*, %struct.fw_block** @bootext_block, align 8
  %60 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 -1, i32* %2, align 4
  br label %245

63:                                               ; preds = %43
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* @MMAP_ALIGN, align 4
  %66 = call i64 @ALIGN(i64 %64, i32 %65)
  %67 = load i64, i64* %10, align 8
  %68 = sub nsw i64 %66, %67
  store i64 %68, i64* %11, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @write_out_padding(i32* %69, i64 %70, i32 255, %struct.csum_state* %7)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %2, align 4
  br label %245

76:                                               ; preds = %63
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %10, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %10, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @board, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add nsw i64 %82, %83
  %85 = getelementptr inbounds %struct.fw_mmap, %struct.fw_mmap* %5, i32 0, i32 0
  store i64 %84, i64* %85, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @write_out_mmap(i32* %86, %struct.fw_mmap* %5, %struct.csum_state* %7)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %76
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %2, align 4
  br label %245

92:                                               ; preds = %76
  %93 = load i64, i64* @MMAP_DATA_SIZE, align 8
  %94 = load i64, i64* %10, align 8
  %95 = add nsw i64 %94, %93
  store i64 %95, i64* %10, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @board, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @board, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %100, %103
  br i1 %104, label %105, label %128

105:                                              ; preds = %92
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @board, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @board, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = load i64, i64* %10, align 8
  %114 = sub nsw i64 %112, %113
  store i64 %114, i64* %11, align 8
  %115 = load i32*, i32** %3, align 8
  %116 = load i64, i64* %11, align 8
  %117 = call i32 @write_out_padding(i32* %115, i64 %116, i32 255, %struct.csum_state* %7)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %105
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %2, align 4
  br label %245

122:                                              ; preds = %105
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %10, align 8
  %125 = add nsw i64 %124, %123
  store i64 %125, i64* %10, align 8
  %126 = load i64, i64* %10, align 8
  %127 = call i32 (i32, i8*, i64, ...) @DBG(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %126)
  br label %128

128:                                              ; preds = %122, %92
  store i32 0, i32* %8, align 4
  br label %129

129:                                              ; preds = %176, %128
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @num_blocks, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %179

133:                                              ; preds = %129
  %134 = load %struct.fw_block*, %struct.fw_block** @blocks, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %134, i64 %136
  store %struct.fw_block* %137, %struct.fw_block** %4, align 8
  %138 = load %struct.fw_block*, %struct.fw_block** %4, align 8
  %139 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @BLOCK_TYPE_BOOTEXT, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %176

144:                                              ; preds = %133
  %145 = load i64, i64* %10, align 8
  %146 = load %struct.fw_block*, %struct.fw_block** %4, align 8
  %147 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @ALIGN(i64 %145, i32 %148)
  %150 = load i64, i64* %10, align 8
  %151 = sub nsw i64 %149, %150
  store i64 %151, i64* %11, align 8
  %152 = load i32*, i32** %3, align 8
  %153 = load i64, i64* %11, align 8
  %154 = call i32 @write_out_padding(i32* %152, i64 %153, i32 255, %struct.csum_state* %7)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %144
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %2, align 4
  br label %245

159:                                              ; preds = %144
  %160 = load i64, i64* %11, align 8
  %161 = load i64, i64* %10, align 8
  %162 = add nsw i64 %161, %160
  store i64 %162, i64* %10, align 8
  %163 = load i32*, i32** %3, align 8
  %164 = load %struct.fw_block*, %struct.fw_block** %4, align 8
  %165 = call i32 @write_out_block(i32* %163, %struct.fw_block* %164, %struct.csum_state* %7)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %159
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %2, align 4
  br label %245

170:                                              ; preds = %159
  %171 = load %struct.fw_block*, %struct.fw_block** %4, align 8
  %172 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %10, align 8
  %175 = add nsw i64 %174, %173
  store i64 %175, i64* %10, align 8
  br label %176

176:                                              ; preds = %170, %143
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %129

179:                                              ; preds = %129
  %180 = load i64, i64* %10, align 8
  %181 = call i64 @ALIGN(i64 %180, i32 4)
  %182 = load i64, i64* %10, align 8
  %183 = sub nsw i64 %181, %182
  store i64 %183, i64* %11, align 8
  %184 = load i32*, i32** %3, align 8
  %185 = load i64, i64* %11, align 8
  %186 = call i32 @write_out_padding(i32* %184, i64 %185, i32 255, %struct.csum_state* %7)
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %179
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %2, align 4
  br label %245

191:                                              ; preds = %179
  %192 = load i64, i64* %11, align 8
  %193 = load i64, i64* %10, align 8
  %194 = add nsw i64 %193, %192
  store i64 %194, i64* %10, align 8
  %195 = call i64 @csum_get(%struct.csum_state* %7)
  store i64 %195, i64* %12, align 8
  %196 = getelementptr inbounds %struct.fw_mmap, %struct.fw_mmap* %5, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 2
  store i64 %197, i64* %198, align 8
  %199 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 0
  store i32 2, i32* %199, align 8
  %200 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 1
  %201 = call i32 @read_magic(i64* %200)
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %191
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %2, align 4
  br label %245

206:                                              ; preds = %191
  %207 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = call i64 @BE16_TO_HOST(i64 %208)
  %210 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 1
  store i64 %209, i64* %210, align 8
  %211 = load i64, i64* %12, align 8
  %212 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp sle i64 %211, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %206
  %216 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* %12, align 8
  %219 = sub nsw i64 %217, %218
  store i64 %219, i64* %13, align 8
  br label %226

220:                                              ; preds = %206
  %221 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* %12, align 8
  %224 = sub nsw i64 %222, %223
  %225 = sub nsw i64 %224, 1
  store i64 %225, i64* %13, align 8
  br label %226

226:                                              ; preds = %220, %215
  %227 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* %12, align 8
  %230 = load i64, i64* %13, align 8
  %231 = call i32 (i32, i8*, i64, ...) @DBG(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %228, i64 %229, i64 %230)
  %232 = load i64, i64* %13, align 8
  %233 = call i64 @HOST_TO_BE16(i64 %232)
  store i64 %233, i64* %13, align 8
  %234 = load i32*, i32** %3, align 8
  %235 = bitcast i64* %13 to i32*
  %236 = call i32 @write_out_data(i32* %234, i32* %235, i32 2, i32* null)
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %226
  %240 = load i32, i32* %9, align 4
  store i32 %240, i32* %2, align 4
  br label %245

241:                                              ; preds = %226
  %242 = load i32*, i32** %3, align 8
  %243 = call i32 @write_out_header(i32* %242, %struct.zyn_rombin_hdr* %6)
  store i32 %243, i32* %9, align 4
  %244 = load i32, i32* %9, align 4
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %241, %239, %204, %189, %168, %157, %120, %90, %74, %58, %41, %30
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local i32 @memset(%struct.zyn_rombin_hdr*, i32, i32) #1

declare dso_local i32 @write_out_header(i32*, %struct.zyn_rombin_hdr*) #1

declare dso_local i32 @csum_init(%struct.csum_state*) #1

declare dso_local i32 @write_out_block(i32*, %struct.fw_block*, %struct.csum_state*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @write_out_padding(i32*, i64, i32, %struct.csum_state*) #1

declare dso_local i32 @write_out_mmap(i32*, %struct.fw_mmap*, %struct.csum_state*) #1

declare dso_local i32 @DBG(i32, i8*, i64, ...) #1

declare dso_local i64 @csum_get(%struct.csum_state*) #1

declare dso_local i32 @read_magic(i64*) #1

declare dso_local i64 @BE16_TO_HOST(i64) #1

declare dso_local i64 @HOST_TO_BE16(i64) #1

declare dso_local i32 @write_out_data(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
