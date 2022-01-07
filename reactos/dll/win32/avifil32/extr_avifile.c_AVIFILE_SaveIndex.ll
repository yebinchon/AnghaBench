; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_avifile.c_AVIFILE_SaveIndex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_avifile.c_AVIFILE_SaveIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i64, %struct.TYPE_19__**, %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_17__*, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_13__ = type { i64, i32, i8*, i8* }
%struct.TYPE_17__ = type { i64, i64, i32 }
%struct.TYPE_16__ = type { i64, i64, i32, i64 }
%struct.TYPE_15__ = type { i32, i64, i64 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_21__ = type { i64, i32, i8*, i8* }
%struct.TYPE_18__ = type { i64, i32 }

@ckidAVINEWINDEX = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@AVIERR_FILEWRITE = common dso_local global i32 0, align 4
@AVIFILEINFO_ISINTERLEAVED = common dso_local global i32 0, align 4
@listtypeAVIRECORD = common dso_local global i8* null, align 8
@AVIIF_LIST = common dso_local global i8* null, align 8
@AVISTREAMINFO_FORMATCHANGES = common dso_local global i32 0, align 4
@AVIIF_NOTIME = common dso_local global i8* null, align 8
@cktypePALchange = common dso_local global i32 0, align 4
@AVIERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @AVIFILE_SaveIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVIFILE_SaveIndex(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %15 = load i32, i32* @ckidAVINEWINDEX, align 4
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @mmioCreateChunk(i32 %20, %struct.TYPE_18__* %6, i32 0)
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %25, i32* %2, align 4
  br label %493

26:                                               ; preds = %1
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AVIFILEINFO_ISINTERLEAVED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %330

34:                                               ; preds = %26
  store i64 0, i64* %9, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %37, i64 0
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i64 1, i64* %10, align 8
  br label %53

45:                                               ; preds = %34
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %48, i64 0
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 5
  %52 = call i64 @AVIStreamTimeToSample(i32* %51, i32 1000000)
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %45, %44
  %54 = load i64, i64* %10, align 8
  %55 = icmp ugt i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  store i64 0, i64* %7, align 8
  br label %58

58:                                               ; preds = %88, %53
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %58
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %69, i64 %70
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %66, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %65
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %80, i64 %81
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %9, align 8
  br label %87

87:                                               ; preds = %77, %65
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %7, align 8
  br label %58

91:                                               ; preds = %58
  %92 = load i64, i64* %9, align 8
  %93 = sub i64 0, %92
  store i64 %93, i64* %11, align 8
  br label %94

94:                                               ; preds = %325, %91
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = sub i64 %99, %100
  %102 = icmp ult i64 %95, %101
  br i1 %102, label %103, label %329

103:                                              ; preds = %94
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %11, align 8
  %106 = add i64 %104, %105
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ult i64 %107, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i8*, i8** @listtypeAVIRECORD, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 3
  store i8* %114, i8** %115, align 8
  %116 = load i8*, i8** @AVIIF_LIST, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 2
  store i8* %116, i8** %117, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 5
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  store i32 %124, i32* %125, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 5
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = load i64, i64* %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %132, %135
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  store i64 %136, i64* %137, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = ptrtoint %struct.TYPE_21__* %5 to i32
  %142 = call i32 @mmioWrite(i32 %140, i32 %141, i32 32)
  %143 = sext i32 %142 to i64
  %144 = icmp ne i64 %143, 32
  br i1 %144, label %145, label %147

145:                                              ; preds = %103
  %146 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %146, i32* %2, align 4
  br label %493

147:                                              ; preds = %103
  store i64 0, i64* %7, align 8
  br label %148

148:                                              ; preds = %321, %147
  %149 = load i64, i64* %7, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ult i64 %149, %153
  br i1 %154, label %155, label %324

155:                                              ; preds = %148
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %157, align 8
  %159 = load i64, i64* %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %158, i64 %159
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %160, align 8
  store %struct.TYPE_19__* %161, %struct.TYPE_19__** %4, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = sub i64 0, %165
  %167 = load i64, i64* %11, align 8
  %168 = icmp ugt i64 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %155
  br label %321

170:                                              ; preds = %155
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %9, align 8
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %170
  %178 = load i64, i64* %9, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = sub i64 %178, %182
  %184 = load i64, i64* %12, align 8
  %185 = sub i64 %184, %183
  store i64 %185, i64* %12, align 8
  br label %186

186:                                              ; preds = %177, %170
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %12, align 8
  %191 = icmp ule i64 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %321

193:                                              ; preds = %186
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @AVISTREAMINFO_FORMATCHANGES, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %274

201:                                              ; preds = %193
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %274

207:                                              ; preds = %201
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %209, align 8
  %211 = icmp ne %struct.TYPE_17__* %210, null
  br i1 %211, label %212, label %274

212:                                              ; preds = %207
  store i64 0, i64* %13, align 8
  br label %213

213:                                              ; preds = %270, %212
  %214 = load i64, i64* %13, align 8
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = icmp ult i64 %214, %218
  br i1 %219, label %220, label %273

220:                                              ; preds = %213
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %222, align 8
  %224 = load i64, i64* %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* %12, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %269

230:                                              ; preds = %220
  %231 = load i8*, i8** @AVIIF_NOTIME, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 2
  store i8* %231, i8** %232, align 8
  %233 = load i32, i32* @cktypePALchange, align 4
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = call i8* @MAKEAVICKID(i32 %233, i32 %236)
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 3
  store i8* %237, i8** %238, align 8
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %240, align 8
  %242 = load i64, i64* %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  store i32 %245, i32* %246, align 8
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 2
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %248, align 8
  %250 = load i64, i64* %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = sub nsw i64 %253, %256
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  store i64 %257, i64* %258, align 8
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = ptrtoint %struct.TYPE_21__* %5 to i32
  %263 = call i32 @mmioWrite(i32 %261, i32 %262, i32 32)
  %264 = sext i32 %263 to i64
  %265 = icmp ne i64 %264, 32
  br i1 %265, label %266, label %268

266:                                              ; preds = %230
  %267 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %267, i32* %2, align 4
  br label %493

268:                                              ; preds = %230
  br label %273

269:                                              ; preds = %220
  br label %270

270:                                              ; preds = %269
  %271 = load i64, i64* %13, align 8
  %272 = add i64 %271, 1
  store i64 %272, i64* %13, align 8
  br label %213

273:                                              ; preds = %268, %213
  br label %274

274:                                              ; preds = %273, %207, %201, %193
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %276, align 8
  %278 = load i64, i64* %12, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 3
  %281 = load i8*, i8** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 3
  store i8* %281, i8** %282, align 8
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %284, align 8
  %286 = load i64, i64* %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 2
  %289 = load i8*, i8** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 2
  store i8* %289, i8** %290, align 8
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %292, align 8
  %294 = load i64, i64* %12, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  store i32 %297, i32* %298, align 8
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %300, align 8
  %302 = load i64, i64* %12, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = sub nsw i64 %305, %308
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  store i64 %309, i64* %310, align 8
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = ptrtoint %struct.TYPE_21__* %5 to i32
  %315 = call i32 @mmioWrite(i32 %313, i32 %314, i32 32)
  %316 = sext i32 %315 to i64
  %317 = icmp ne i64 %316, 32
  br i1 %317, label %318, label %320

318:                                              ; preds = %274
  %319 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %319, i32* %2, align 4
  br label %493

320:                                              ; preds = %274
  br label %321

321:                                              ; preds = %320, %192, %169
  %322 = load i64, i64* %7, align 8
  %323 = add i64 %322, 1
  store i64 %323, i64* %7, align 8
  br label %148

324:                                              ; preds = %148
  br label %325

325:                                              ; preds = %324
  %326 = load i64, i64* %10, align 8
  %327 = load i64, i64* %11, align 8
  %328 = add i64 %327, %326
  store i64 %328, i64* %11, align 8
  br label %94

329:                                              ; preds = %94
  br label %482

330:                                              ; preds = %26
  store i64 0, i64* %7, align 8
  br label %331

331:                                              ; preds = %478, %330
  %332 = load i64, i64* %7, align 8
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 4
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = icmp ult i64 %332, %336
  br i1 %337, label %338, label %481

338:                                              ; preds = %331
  %339 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i32 0, i32 3
  %341 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %340, align 8
  %342 = load i64, i64* %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %341, i64 %342
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %343, align 8
  store %struct.TYPE_19__* %344, %struct.TYPE_19__** %4, align 8
  store i64 0, i64* %8, align 8
  br label %345

345:                                              ; preds = %474, %338
  %346 = load i64, i64* %8, align 8
  %347 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = icmp ule i64 %346, %349
  br i1 %350, label %351, label %477

351:                                              ; preds = %345
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %352, i32 0, i32 4
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @AVISTREAMINFO_FORMATCHANGES, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %427

359:                                              ; preds = %351
  %360 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %360, i32 0, i32 4
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 3
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %427

365:                                              ; preds = %359
  store i64 0, i64* %14, align 8
  br label %366

366:                                              ; preds = %423, %365
  %367 = load i64, i64* %14, align 8
  %368 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %368, i32 0, i32 4
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 3
  %371 = load i64, i64* %370, align 8
  %372 = icmp ult i64 %367, %371
  br i1 %372, label %373, label %426

373:                                              ; preds = %366
  %374 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %374, i32 0, i32 2
  %376 = load %struct.TYPE_17__*, %struct.TYPE_17__** %375, align 8
  %377 = load i64, i64* %14, align 8
  %378 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %376, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* %8, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %422

383:                                              ; preds = %373
  %384 = load i8*, i8** @AVIIF_NOTIME, align 8
  %385 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 2
  store i8* %384, i8** %385, align 8
  %386 = load i32, i32* @cktypePALchange, align 4
  %387 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 8
  %390 = call i8* @MAKEAVICKID(i32 %386, i32 %389)
  %391 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 3
  store i8* %390, i8** %391, align 8
  %392 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %392, i32 0, i32 2
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %393, align 8
  %395 = load i64, i64* %14, align 8
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %394, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  store i32 %398, i32* %399, align 8
  %400 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %400, i32 0, i32 2
  %402 = load %struct.TYPE_17__*, %struct.TYPE_17__** %401, align 8
  %403 = load i64, i64* %14, align 8
  %404 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %402, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %408 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %407, i32 0, i32 2
  %409 = load i64, i64* %408, align 8
  %410 = sub nsw i64 %406, %409
  %411 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  store i64 %410, i64* %411, align 8
  %412 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 8
  %415 = ptrtoint %struct.TYPE_21__* %5 to i32
  %416 = call i32 @mmioWrite(i32 %414, i32 %415, i32 32)
  %417 = sext i32 %416 to i64
  %418 = icmp ne i64 %417, 32
  br i1 %418, label %419, label %421

419:                                              ; preds = %383
  %420 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %420, i32* %2, align 4
  br label %493

421:                                              ; preds = %383
  br label %426

422:                                              ; preds = %373
  br label %423

423:                                              ; preds = %422
  %424 = load i64, i64* %14, align 8
  %425 = add i64 %424, 1
  store i64 %425, i64* %14, align 8
  br label %366

426:                                              ; preds = %421, %366
  br label %427

427:                                              ; preds = %426, %359, %351
  %428 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %429 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %428, i32 0, i32 1
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %429, align 8
  %431 = load i64, i64* %8, align 8
  %432 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %432, i32 0, i32 3
  %434 = load i8*, i8** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 3
  store i8* %434, i8** %435, align 8
  %436 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %436, i32 0, i32 1
  %438 = load %struct.TYPE_13__*, %struct.TYPE_13__** %437, align 8
  %439 = load i64, i64* %8, align 8
  %440 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %438, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %440, i32 0, i32 2
  %442 = load i8*, i8** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 2
  store i8* %442, i8** %443, align 8
  %444 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %444, i32 0, i32 1
  %446 = load %struct.TYPE_13__*, %struct.TYPE_13__** %445, align 8
  %447 = load i64, i64* %8, align 8
  %448 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %446, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  store i32 %450, i32* %451, align 8
  %452 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %452, i32 0, i32 1
  %454 = load %struct.TYPE_13__*, %struct.TYPE_13__** %453, align 8
  %455 = load i64, i64* %8, align 8
  %456 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %454, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %460 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %459, i32 0, i32 2
  %461 = load i64, i64* %460, align 8
  %462 = sub nsw i64 %458, %461
  %463 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  store i64 %462, i64* %463, align 8
  %464 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 8
  %467 = ptrtoint %struct.TYPE_21__* %5 to i32
  %468 = call i32 @mmioWrite(i32 %466, i32 %467, i32 32)
  %469 = sext i32 %468 to i64
  %470 = icmp ne i64 %469, 32
  br i1 %470, label %471, label %473

471:                                              ; preds = %427
  %472 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %472, i32* %2, align 4
  br label %493

473:                                              ; preds = %427
  br label %474

474:                                              ; preds = %473
  %475 = load i64, i64* %8, align 8
  %476 = add i64 %475, 1
  store i64 %476, i64* %8, align 8
  br label %345

477:                                              ; preds = %345
  br label %478

478:                                              ; preds = %477
  %479 = load i64, i64* %7, align 8
  %480 = add i64 %479, 1
  store i64 %480, i64* %7, align 8
  br label %331

481:                                              ; preds = %331
  br label %482

482:                                              ; preds = %481, %329
  %483 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 8
  %486 = call i64 @mmioAscend(i32 %485, %struct.TYPE_18__* %6, i32 0)
  %487 = load i64, i64* @S_OK, align 8
  %488 = icmp ne i64 %486, %487
  br i1 %488, label %489, label %491

489:                                              ; preds = %482
  %490 = load i32, i32* @AVIERR_FILEWRITE, align 4
  store i32 %490, i32* %2, align 4
  br label %493

491:                                              ; preds = %482
  %492 = load i32, i32* @AVIERR_OK, align 4
  store i32 %492, i32* %2, align 4
  br label %493

493:                                              ; preds = %491, %489, %471, %419, %318, %266, %145, %24
  %494 = load i32, i32* %2, align 4
  ret i32 %494
}

declare dso_local i64 @mmioCreateChunk(i32, %struct.TYPE_18__*, i32) #1

declare dso_local i64 @AVIStreamTimeToSample(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mmioWrite(i32, i32, i32) #1

declare dso_local i8* @MAKEAVICKID(i32, i32) #1

declare dso_local i64 @mmioAscend(i32, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
