; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngpread.c_png_push_read_IDAT.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngpread.c_png_push_read_IDAT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, i32, i64, i64, i64, i32, i32, i32, i32 }

@PNG_HAVE_CHUNK_HEADER = common dso_local global i32 0, align 4
@png_IDAT = common dso_local global i32 0, align 4
@PNG_READ_CHUNK_MODE = common dso_local global i32 0, align 4
@PNG_FLAG_ZLIB_FINISHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Not enough compressed data\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"save_size overflowed in pngpread\00", align 1
@PNG_AFTER_IDAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_push_read_IDAT(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PNG_HAVE_CHUNK_HEADER, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %67, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = call i32 @png_push_save_buffer(%struct.TYPE_12__* %18)
  br label %254

20:                                               ; preds = %12
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %23 = call i32 @png_push_fill_buffer(%struct.TYPE_12__* %21, i32* %22, i32 4)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %26 = call i64 @png_get_uint_31(%struct.TYPE_12__* %24, i32* %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = call i32 @png_reset_crc(%struct.TYPE_12__* %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @png_crc_read(%struct.TYPE_12__* %31, i32 %34, i32 4)
  %36 = load i32, i32* @PNG_HAVE_CHUNK_HEADER, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @png_IDAT, align 4
  %45 = call i64 @png_memcmp(i32 %43, i32 %44, i32 4)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %20
  %48 = load i32, i32* @PNG_READ_CHUNK_MODE, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PNG_FLAG_ZLIB_FINISHED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %59 = call i32 @png_error(%struct.TYPE_12__* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %47
  br label %254

61:                                               ; preds = %20
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %61, %1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %147

72:                                               ; preds = %67
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %147

77:                                               ; preds = %72
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %77
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %4, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %96 = call i32 @png_error(%struct.TYPE_12__* %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %85
  br label %102

98:                                               ; preds = %77
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %4, align 8
  br label %102

102:                                              ; preds = %98, %97
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @png_calculate_crc(%struct.TYPE_12__* %103, i32 %106, i64 %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @PNG_FLAG_ZLIB_FINISHED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %102
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %4, align 8
  %121 = call i32 @png_process_IDAT_data(%struct.TYPE_12__* %116, i32 %119, i64 %120)
  br label %122

122:                                              ; preds = %115, %102
  %123 = load i64, i64* %4, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load i64, i64* %4, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = sub nsw i64 %132, %128
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %130, align 4
  %135 = load i64, i64* %4, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %138, %135
  store i64 %139, i64* %137, align 8
  %140 = load i64, i64* %4, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %140
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 4
  br label %147

147:                                              ; preds = %122, %72, %67
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %227

152:                                              ; preds = %147
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %227

157:                                              ; preds = %152
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = icmp slt i64 %160, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %157
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %5, align 8
  %169 = load i64, i64* %5, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %169, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %165
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %176 = call i32 @png_error(%struct.TYPE_12__* %175, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %165
  br label %182

178:                                              ; preds = %157
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 6
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %5, align 8
  br label %182

182:                                              ; preds = %178, %177
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 8
  %187 = load i64, i64* %5, align 8
  %188 = call i32 @png_calculate_crc(%struct.TYPE_12__* %183, i32 %186, i64 %187)
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @PNG_FLAG_ZLIB_FINISHED, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %202, label %195

195:                                              ; preds = %182
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = load i64, i64* %5, align 8
  %201 = call i32 @png_process_IDAT_data(%struct.TYPE_12__* %196, i32 %199, i64 %200)
  br label %202

202:                                              ; preds = %195, %182
  %203 = load i64, i64* %5, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = sub nsw i64 %206, %203
  store i64 %207, i64* %205, align 8
  %208 = load i64, i64* %5, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = sub nsw i64 %212, %208
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %210, align 4
  %215 = load i64, i64* %5, align 8
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = sub nsw i64 %218, %215
  store i64 %219, i64* %217, align 8
  %220 = load i64, i64* %5, align 8
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %224, %220
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %222, align 8
  br label %227

227:                                              ; preds = %202, %152, %147
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %254, label %232

232:                                              ; preds = %227
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp slt i32 %235, 4
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %239 = call i32 @png_push_save_buffer(%struct.TYPE_12__* %238)
  br label %254

240:                                              ; preds = %232
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %242 = call i32 @png_crc_finish(%struct.TYPE_12__* %241, i32 0)
  %243 = load i32, i32* @PNG_HAVE_CHUNK_HEADER, align 4
  %244 = xor i32 %243, -1
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = and i32 %247, %244
  store i32 %248, i32* %246, align 8
  %249 = load i32, i32* @PNG_AFTER_IDAT, align 4
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 8
  br label %254

254:                                              ; preds = %17, %60, %237, %240, %227
  ret void
}

declare dso_local i32 @png_push_save_buffer(%struct.TYPE_12__*) #1

declare dso_local i32 @png_push_fill_buffer(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @png_get_uint_31(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @png_reset_crc(%struct.TYPE_12__*) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @png_memcmp(i32, i32, i32) #1

declare dso_local i32 @png_error(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @png_calculate_crc(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i32 @png_process_IDAT_data(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i32 @png_crc_finish(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
