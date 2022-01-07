; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_traverse.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_traverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32* }
%struct.lfs2_mattr = type { i32, i8* }
%struct.lfs2_diskoff = type { i64, i32 }
%struct.lfs2_attr = type { i32, i8*, i32 }

@LFS2_FROM_NOOP = common dso_local global i64 0, align 8
@LFS2_FROM_MOVE = common dso_local global i64 0, align 8
@LFS2_BLOCK_NULL = common dso_local global i32 0, align 4
@LFS2_TYPE_STRUCT = common dso_local global i32 0, align 4
@LFS2_FROM_USERATTRS = common dso_local global i64 0, align 8
@LFS2_TYPE_USERATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i64, i32, %struct.lfs2_mattr*, i32, i32, i32, i32, i32, i32, i32, i32 (i8*, i32, i8*)*, i8*)* @lfs2_dir_traverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs2_dir_traverse(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i64 %2, i32 %3, %struct.lfs2_mattr* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 (i8*, i32, i8*)* %12, i8* %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.lfs2_mattr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32 (i8*, i32, i8*)*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca %struct.lfs2_diskoff, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.lfs2_attr*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %17, align 8
  store i64 %2, i64* %18, align 8
  store i32 %3, i32* %19, align 4
  store %struct.lfs2_mattr* %4, %struct.lfs2_mattr** %20, align 8
  store i32 %5, i32* %21, align 4
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i32 (i8*, i32, i8*)* %12, i32 (i8*, i32, i8*)** %28, align 8
  store i8* %13, i8** %29, align 8
  br label %43

43:                                               ; preds = %14, %138, %160, %171, %279
  %44 = load i64, i64* %18, align 8
  %45 = load i32, i32* %19, align 4
  %46 = call i64 @lfs2_tag_dsize(i32 %45)
  %47 = add nsw i64 %44, %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %88

52:                                               ; preds = %43
  %53 = load i32, i32* %19, align 4
  %54 = call i64 @lfs2_tag_dsize(i32 %53)
  %55 = load i64, i64* %18, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %18, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %18, align 8
  %66 = call i32 @lfs2_bd_read(%struct.TYPE_7__* %57, i32* null, i32* %59, i32 4, i32 %64, i64 %65, i32* %30, i32 4)
  store i32 %66, i32* %33, align 4
  %67 = load i32, i32* %33, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %52
  %70 = load i32, i32* %33, align 4
  store i32 %70, i32* %15, align 4
  br label %280

71:                                               ; preds = %52
  %72 = load i32, i32* %30, align 4
  %73 = call i32 @lfs2_frombe32(i32 %72)
  %74 = load i32, i32* %19, align 4
  %75 = xor i32 %73, %74
  %76 = or i32 %75, -2147483648
  store i32 %76, i32* %30, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.lfs2_diskoff, %struct.lfs2_diskoff* %32, i32 0, i32 1
  store i32 %81, i32* %82, align 8
  %83 = load i64, i64* %18, align 8
  %84 = add i64 %83, 4
  %85 = getelementptr inbounds %struct.lfs2_diskoff, %struct.lfs2_diskoff* %32, i32 0, i32 0
  store i64 %84, i64* %85, align 8
  %86 = bitcast %struct.lfs2_diskoff* %32 to i8*
  store i8* %86, i8** %31, align 8
  %87 = load i32, i32* %30, align 4
  store i32 %87, i32* %19, align 4
  br label %125

88:                                               ; preds = %43
  %89 = load i32, i32* %21, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load %struct.lfs2_mattr*, %struct.lfs2_mattr** %20, align 8
  %93 = getelementptr inbounds %struct.lfs2_mattr, %struct.lfs2_mattr* %92, i64 0
  %94 = getelementptr inbounds %struct.lfs2_mattr, %struct.lfs2_mattr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %30, align 4
  %96 = load %struct.lfs2_mattr*, %struct.lfs2_mattr** %20, align 8
  %97 = getelementptr inbounds %struct.lfs2_mattr, %struct.lfs2_mattr* %96, i64 0
  %98 = getelementptr inbounds %struct.lfs2_mattr, %struct.lfs2_mattr* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %31, align 8
  %100 = load %struct.lfs2_mattr*, %struct.lfs2_mattr** %20, align 8
  %101 = getelementptr inbounds %struct.lfs2_mattr, %struct.lfs2_mattr* %100, i64 1
  store %struct.lfs2_mattr* %101, %struct.lfs2_mattr** %20, align 8
  %102 = load i32, i32* %21, align 4
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %21, align 4
  br label %124

104:                                              ; preds = %88
  %105 = load i32, i32* %22, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @lfs2_gstate_hasmovehere(%struct.TYPE_9__* %109, i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %107
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @LFS2_MKTAG(i32 2047, i32 1023, i32 0)
  %121 = and i32 %119, %120
  store i32 %121, i32* %30, align 4
  store i8* null, i8** %31, align 8
  store i32 1, i32* %22, align 4
  br label %123

122:                                              ; preds = %107, %104
  store i32 0, i32* %15, align 4
  br label %280

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %123, %91
  br label %125

125:                                              ; preds = %124, %71
  %126 = call i32 @LFS2_MKTAG(i32 2047, i32 0, i32 0)
  store i32 %126, i32* %34, align 4
  %127 = load i32, i32* %34, align 4
  %128 = load i32, i32* %23, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* %30, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* %34, align 4
  %133 = load i32, i32* %23, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* %24, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %131, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  br label %43

139:                                              ; preds = %125
  %140 = load i32, i32* %23, align 4
  %141 = call i32 @lfs2_tag_id(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %173

143:                                              ; preds = %139
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %146 = load i64, i64* %18, align 8
  %147 = load i32, i32* %19, align 4
  %148 = load %struct.lfs2_mattr*, %struct.lfs2_mattr** %20, align 8
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* %22, align 4
  %151 = bitcast i32* %30 to i8*
  %152 = call i32 @lfs2_dir_traverse(%struct.TYPE_7__* %144, %struct.TYPE_8__* %145, i64 %146, i32 %147, %struct.lfs2_mattr* %148, i32 %149, i32 %150, i32 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i32, i8*)* @lfs2_dir_traverse_filter, i8* %151)
  store i32 %152, i32* %35, align 4
  %153 = load i32, i32* %35, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %143
  %156 = load i32, i32* %35, align 4
  store i32 %156, i32* %15, align 4
  br label %280

157:                                              ; preds = %143
  %158 = load i32, i32* %35, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %43

161:                                              ; preds = %157
  %162 = load i32, i32* %30, align 4
  %163 = call i32 @lfs2_tag_id(i32 %162)
  %164 = load i32, i32* %25, align 4
  %165 = icmp sge i32 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load i32, i32* %30, align 4
  %168 = call i32 @lfs2_tag_id(i32 %167)
  %169 = load i32, i32* %26, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %172, label %171

171:                                              ; preds = %166, %161
  br label %43

172:                                              ; preds = %166
  br label %173

173:                                              ; preds = %172, %139
  %174 = load i32, i32* %30, align 4
  %175 = call i64 @lfs2_tag_type3(i32 %174)
  %176 = load i64, i64* @LFS2_FROM_NOOP, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %279

179:                                              ; preds = %173
  %180 = load i32, i32* %30, align 4
  %181 = call i64 @lfs2_tag_type3(i32 %180)
  %182 = load i64, i64* @LFS2_FROM_MOVE, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %212

184:                                              ; preds = %179
  %185 = load i32, i32* %30, align 4
  %186 = call i32 @lfs2_tag_size(i32 %185)
  store i32 %186, i32* %36, align 4
  %187 = load i32, i32* %30, align 4
  %188 = call i32 @lfs2_tag_id(i32 %187)
  store i32 %188, i32* %37, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %190 = load i8*, i8** %31, align 8
  %191 = bitcast i8* %190 to %struct.TYPE_8__*
  %192 = load i32, i32* @LFS2_BLOCK_NULL, align 4
  %193 = call i32 @LFS2_MKTAG(i32 1536, i32 1023, i32 0)
  %194 = load i32, i32* @LFS2_TYPE_STRUCT, align 4
  %195 = call i32 @LFS2_MKTAG(i32 %194, i32 0, i32 0)
  %196 = load i32, i32* %36, align 4
  %197 = load i32, i32* %36, align 4
  %198 = add nsw i32 %197, 1
  %199 = load i32, i32* %37, align 4
  %200 = load i32, i32* %36, align 4
  %201 = sub nsw i32 %199, %200
  %202 = load i32, i32* %27, align 4
  %203 = add nsw i32 %201, %202
  %204 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %28, align 8
  %205 = load i8*, i8** %29, align 8
  %206 = call i32 @lfs2_dir_traverse(%struct.TYPE_7__* %189, %struct.TYPE_8__* %191, i64 0, i32 %192, %struct.lfs2_mattr* null, i32 0, i32 1, i32 %193, i32 %195, i32 %196, i32 %198, i32 %203, i32 (i8*, i32, i8*)* %204, i8* %205)
  store i32 %206, i32* %38, align 4
  %207 = load i32, i32* %38, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %184
  %210 = load i32, i32* %38, align 4
  store i32 %210, i32* %15, align 4
  br label %280

211:                                              ; preds = %184
  br label %278

212:                                              ; preds = %179
  %213 = load i32, i32* %30, align 4
  %214 = call i64 @lfs2_tag_type3(i32 %213)
  %215 = load i64, i64* @LFS2_FROM_USERATTRS, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %263

217:                                              ; preds = %212
  store i32 0, i32* %39, align 4
  br label %218

218:                                              ; preds = %259, %217
  %219 = load i32, i32* %39, align 4
  %220 = load i32, i32* %30, align 4
  %221 = call i32 @lfs2_tag_size(i32 %220)
  %222 = icmp ult i32 %219, %221
  br i1 %222, label %223, label %262

223:                                              ; preds = %218
  %224 = load i8*, i8** %31, align 8
  %225 = bitcast i8* %224 to %struct.lfs2_attr*
  store %struct.lfs2_attr* %225, %struct.lfs2_attr** %40, align 8
  %226 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %28, align 8
  %227 = load i8*, i8** %29, align 8
  %228 = load i32, i32* @LFS2_TYPE_USERATTR, align 4
  %229 = load %struct.lfs2_attr*, %struct.lfs2_attr** %40, align 8
  %230 = load i32, i32* %39, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.lfs2_attr, %struct.lfs2_attr* %229, i64 %231
  %233 = getelementptr inbounds %struct.lfs2_attr, %struct.lfs2_attr* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %228, %234
  %236 = load i32, i32* %30, align 4
  %237 = call i32 @lfs2_tag_id(i32 %236)
  %238 = load i32, i32* %27, align 4
  %239 = add nsw i32 %237, %238
  %240 = load %struct.lfs2_attr*, %struct.lfs2_attr** %40, align 8
  %241 = load i32, i32* %39, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct.lfs2_attr, %struct.lfs2_attr* %240, i64 %242
  %244 = getelementptr inbounds %struct.lfs2_attr, %struct.lfs2_attr* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @LFS2_MKTAG(i32 %235, i32 %239, i32 %245)
  %247 = load %struct.lfs2_attr*, %struct.lfs2_attr** %40, align 8
  %248 = load i32, i32* %39, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.lfs2_attr, %struct.lfs2_attr* %247, i64 %249
  %251 = getelementptr inbounds %struct.lfs2_attr, %struct.lfs2_attr* %250, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 %226(i8* %227, i32 %246, i8* %252)
  store i32 %253, i32* %41, align 4
  %254 = load i32, i32* %41, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %223
  %257 = load i32, i32* %41, align 4
  store i32 %257, i32* %15, align 4
  br label %280

258:                                              ; preds = %223
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %39, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %39, align 4
  br label %218

262:                                              ; preds = %218
  br label %277

263:                                              ; preds = %212
  %264 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %28, align 8
  %265 = load i8*, i8** %29, align 8
  %266 = load i32, i32* %30, align 4
  %267 = load i32, i32* %27, align 4
  %268 = call i32 @LFS2_MKTAG(i32 0, i32 %267, i32 0)
  %269 = add nsw i32 %266, %268
  %270 = load i8*, i8** %31, align 8
  %271 = call i32 %264(i8* %265, i32 %269, i8* %270)
  store i32 %271, i32* %42, align 4
  %272 = load i32, i32* %42, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %263
  %275 = load i32, i32* %42, align 4
  store i32 %275, i32* %15, align 4
  br label %280

276:                                              ; preds = %263
  br label %277

277:                                              ; preds = %276, %262
  br label %278

278:                                              ; preds = %277, %211
  br label %279

279:                                              ; preds = %278, %178
  br label %43

280:                                              ; preds = %274, %256, %209, %155, %122, %69
  %281 = load i32, i32* %15, align 4
  ret i32 %281
}

declare dso_local i64 @lfs2_tag_dsize(i32) #1

declare dso_local i32 @lfs2_bd_read(%struct.TYPE_7__*, i32*, i32*, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @lfs2_frombe32(i32) #1

declare dso_local i64 @lfs2_gstate_hasmovehere(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @LFS2_MKTAG(i32, i32, i32) #1

declare dso_local i32 @lfs2_tag_id(i32) #1

declare dso_local i32 @lfs2_dir_traverse_filter(i8*, i32, i8*) #1

declare dso_local i64 @lfs2_tag_type3(i32) #1

declare dso_local i32 @lfs2_tag_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
