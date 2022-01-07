; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_handle_bKGD.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_handle_bKGD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_17__ = type { i64, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [19 x i8] c"in png_handle_bKGD\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IHDR\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@PNG_HAVE_PLTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"out of place\00", align 1
@PNG_INFO_bKGD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"duplicate\00", align 1
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"invalid index\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid gray level\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"invalid color\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_bKGD(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i64], align 16
  %9 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = call i32 @png_chunk_error(%struct.TYPE_15__* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %64

20:                                               ; preds = %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33, %20
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @png_crc_finish(%struct.TYPE_15__* %41, i32 %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = call i32 @png_chunk_benign_error(%struct.TYPE_15__* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %241

46:                                               ; preds = %33, %27
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = icmp ne %struct.TYPE_16__* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PNG_INFO_bKGD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @png_crc_finish(%struct.TYPE_15__* %57, i32 %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = call i32 @png_chunk_benign_error(%struct.TYPE_15__* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %241

62:                                               ; preds = %49, %46
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63, %17
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 1, i32* %7, align 4
  br label %81

71:                                               ; preds = %64
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 6, i32* %7, align 4
  br label %80

79:                                               ; preds = %71
  store i32 2, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %78
  br label %81

81:                                               ; preds = %80, %70
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i64 @png_crc_finish(%struct.TYPE_15__* %86, i32 %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = call i32 @png_chunk_benign_error(%struct.TYPE_15__* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %241

91:                                               ; preds = %81
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @png_crc_read(%struct.TYPE_15__* %92, i64* %93, i32 %94)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = call i64 @png_crc_finish(%struct.TYPE_15__* %96, i32 0)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %241

100:                                              ; preds = %91
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %164

106:                                              ; preds = %100
  %107 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %108 = load i64, i64* %107, align 16
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  store i64 %108, i64* %109, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %111 = icmp ne %struct.TYPE_16__* %110, null
  br i1 %111, label %112, label %158

112:                                              ; preds = %106
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %158

117:                                              ; preds = %112
  %118 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %119 = load i64, i64* %118, align 16
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp uge i64 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %126 = call i32 @png_chunk_benign_error(%struct.TYPE_15__* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %241

127:                                              ; preds = %117
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %132 = load i64, i64* %131, align 16
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i8*
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 4
  store i8* %136, i8** %137, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %142 = load i64, i64* %141, align 16
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i8*
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 3
  store i8* %146, i8** %147, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %152 = load i64, i64* %151, align 16
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i8*
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  store i8* %156, i8** %157, align 8
  br label %162

158:                                              ; preds = %112, %106
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  store i8* null, i8** %159, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 3
  store i8* null, i8** %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 4
  store i8* null, i8** %161, align 8
  br label %162

162:                                              ; preds = %158, %127
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i8* null, i8** %163, align 8
  br label %237

164:                                              ; preds = %100
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %169 = and i32 %167, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %201

171:                                              ; preds = %164
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp sle i32 %174, 8
  br i1 %175, label %176, label %193

176:                                              ; preds = %171
  %177 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %178 = load i64, i64* %177, align 16
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = shl i32 1, %185
  %187 = zext i32 %186 to i64
  %188 = icmp uge i64 %182, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %180, %176
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %191 = call i32 @png_chunk_benign_error(%struct.TYPE_15__* %190, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %241

192:                                              ; preds = %180
  br label %193

193:                                              ; preds = %192, %171
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  store i64 0, i64* %194, align 8
  %195 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %196 = call i8* @png_get_uint_16(i64* %195)
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i8* %196, i8** %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  store i8* %196, i8** %198, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 3
  store i8* %196, i8** %199, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 4
  store i8* %196, i8** %200, align 8
  br label %236

201:                                              ; preds = %164
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp sle i32 %204, 8
  br i1 %205, label %206, label %222

206:                                              ; preds = %201
  %207 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %208 = load i64, i64* %207, align 16
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 2
  %212 = load i64, i64* %211, align 16
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 4
  %216 = load i64, i64* %215, align 16
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %214, %210, %206
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %220 = call i32 @png_chunk_benign_error(%struct.TYPE_15__* %219, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %241

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221, %201
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  store i64 0, i64* %223, align 8
  %224 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %225 = call i8* @png_get_uint_16(i64* %224)
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 4
  store i8* %225, i8** %226, align 8
  %227 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %228 = getelementptr inbounds i64, i64* %227, i64 2
  %229 = call i8* @png_get_uint_16(i64* %228)
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 3
  store i8* %229, i8** %230, align 8
  %231 = getelementptr inbounds [6 x i64], [6 x i64]* %8, i64 0, i64 0
  %232 = getelementptr inbounds i64, i64* %231, i64 4
  %233 = call i8* @png_get_uint_16(i64* %232)
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  store i8* %233, i8** %234, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i8* null, i8** %235, align 8
  br label %236

236:                                              ; preds = %222, %193
  br label %237

237:                                              ; preds = %236, %162
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %240 = call i32 @png_set_bKGD(%struct.TYPE_15__* %238, %struct.TYPE_16__* %239, %struct.TYPE_17__* %9)
  br label %241

241:                                              ; preds = %237, %218, %189, %124, %99, %85, %56, %40
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_chunk_error(%struct.TYPE_15__*, i8*) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @png_chunk_benign_error(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_15__*, i64*, i32) #1

declare dso_local i8* @png_get_uint_16(i64*) #1

declare dso_local i32 @png_set_bKGD(%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
