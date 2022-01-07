; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_dir_find.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_dir_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i32, i32, i64, %struct.TYPE_20__, i64 }
%struct.TYPE_20__ = type { i32* }

@LFS1_TYPE_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@LFS1_ERR_NOTDIR = common dso_local global i32 0, align 4
@LFS1_TYPE_REG = common dso_local global i32 0, align 4
@LFS1_ERR_NOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_19__*, %struct.TYPE_18__*, i8**)* @lfs1_dir_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs1_dir_find(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1, %struct.TYPE_18__* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i8** %3, i8*** %9, align 8
  %18 = load i8**, i8*** %9, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i32, i32* @LFS1_TYPE_DIR, align 4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  store i32 28, i32* %26, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %37, i32* %43, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %48, i32* %54, align 4
  br label %55

55:                                               ; preds = %4, %257
  br label %56

56:                                               ; preds = %108, %77, %55
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @strspn(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %59 = load i8*, i8** %10, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %10, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = call i64 @strcspn(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp eq i64 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i8*, i8** %10, align 8
  %68 = call i64 @memcmp(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %66, %56
  %71 = load i64, i64* %11, align 8
  %72 = icmp eq i64 %71, 2
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i8*, i8** %10, align 8
  %75 = call i64 @memcmp(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73, %66
  %78 = load i64, i64* %11, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %78
  store i8* %80, i8** %10, align 8
  br label %56

81:                                               ; preds = %73, %70
  %82 = load i8*, i8** %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %12, align 8
  store i32 1, i32* %14, align 4
  br label %85

85:                                               ; preds = %81, %116
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @strspn(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %88 = load i8*, i8** %12, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %12, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = call i64 @strcspn(i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %92, i64* %13, align 8
  %93 = load i64, i64* %13, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %120

96:                                               ; preds = %85
  %97 = load i64, i64* %13, align 8
  %98 = icmp eq i64 %97, 2
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load i8*, i8** %12, align 8
  %101 = call i64 @memcmp(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load i32, i32* %14, align 4
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i8*, i8** %12, align 8
  %110 = load i64, i64* %13, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %10, align 8
  br label %56

112:                                              ; preds = %103
  br label %116

113:                                              ; preds = %99, %96
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %113, %112
  %117 = load i64, i64* %13, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8* %119, i8** %12, align 8
  br label %85

120:                                              ; preds = %95
  %121 = load i8*, i8** %10, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 0, i32* %5, align 4
  br label %261

127:                                              ; preds = %120
  %128 = load i8*, i8** %10, align 8
  %129 = load i8**, i8*** %9, align 8
  store i8* %128, i8** %129, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @LFS1_TYPE_DIR, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = load i32, i32* @LFS1_ERR_NOTDIR, align 4
  store i32 %137, i32* %5, align 4
  br label %261

138:                                              ; preds = %127
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @lfs1_dir_fetch(%struct.TYPE_17__* %139, %struct.TYPE_19__* %140, i32* %145)
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %138
  %150 = load i32, i32* %15, align 4
  store i32 %150, i32* %5, align 4
  br label %261

151:                                              ; preds = %138
  br label %152

152:                                              ; preds = %151, %184, %218
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %156 = call i32 @lfs1_dir_next(%struct.TYPE_17__* %153, %struct.TYPE_19__* %154, %struct.TYPE_18__* %155)
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load i32, i32* %15, align 4
  store i32 %160, i32* %5, align 4
  br label %261

161:                                              ; preds = %152
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = and i32 127, %165
  %167 = load i32, i32* @LFS1_TYPE_REG, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %161
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = and i32 127, %173
  %175 = load i32, i32* @LFS1_TYPE_DIR, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %184, label %177

177:                                              ; preds = %169, %161
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %11, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %177, %169
  br label %152

185:                                              ; preds = %177
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, 4
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %195, %200
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %201, %205
  %207 = load i8*, i8** %10, align 8
  %208 = load i64, i64* %11, align 8
  %209 = call i32 @lfs1_bd_cmp(%struct.TYPE_17__* %186, i32 %191, i64 %206, i8* %207, i64 %208)
  store i32 %209, i32* %16, align 4
  %210 = load i32, i32* %16, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %185
  %213 = load i32, i32* %16, align 4
  store i32 %213, i32* %5, align 4
  br label %261

214:                                              ; preds = %185
  %215 = load i32, i32* %16, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  br label %219

218:                                              ; preds = %214
  br label %152

219:                                              ; preds = %217
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %257, label %224

224:                                              ; preds = %219
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = and i32 %228, 128
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %257

231:                                              ; preds = %224
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 3
  %236 = call i32 @lfs1_moved(%struct.TYPE_17__* %232, %struct.TYPE_20__* %235)
  store i32 %236, i32* %17, align 4
  %237 = load i32, i32* %17, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %231
  %240 = load i32, i32* %17, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %239, %231
  %243 = load i32, i32* %17, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = load i32, i32* %17, align 4
  br label %249

247:                                              ; preds = %242
  %248 = load i32, i32* @LFS1_ERR_NOENT, align 4
  br label %249

249:                                              ; preds = %247, %245
  %250 = phi i32 [ %246, %245 ], [ %248, %247 ]
  store i32 %250, i32* %5, align 4
  br label %261

251:                                              ; preds = %239
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %255, -129
  store i32 %256, i32* %254, align 8
  br label %257

257:                                              ; preds = %251, %224, %219
  %258 = load i64, i64* %11, align 8
  %259 = load i8*, i8** %10, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 %258
  store i8* %260, i8** %10, align 8
  br label %55

261:                                              ; preds = %249, %212, %159, %149, %136, %126
  %262 = load i32, i32* %5, align 4
  ret i32 %262
}

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @lfs1_dir_fetch(%struct.TYPE_17__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @lfs1_dir_next(%struct.TYPE_17__*, %struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @lfs1_bd_cmp(%struct.TYPE_17__*, i32, i64, i8*, i64) #1

declare dso_local i32 @lfs1_moved(%struct.TYPE_17__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
