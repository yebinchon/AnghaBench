; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mime_header_decoder_collector.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mime_header_decoder_collector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mime_header_decoder_data = type { i32, i64, %struct.TYPE_15__*, %struct.TYPE_16__, %struct.TYPE_15__*, i32*, i32* }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_15__ = type { i32 (i32, %struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)* }

@mbfl_encoding_base64 = common dso_local global i32 0, align 4
@mbfl_encoding_qprint = common dso_local global i32 0, align 4
@mbfl_encoding_wchar = common dso_local global i32 0, align 4
@mbfl_encoding_8bit = common dso_local global i32 0, align 4
@mbfl_encoding_ascii = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mime_header_decoder_collector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mime_header_decoder_collector(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mime_header_decoder_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mime_header_decoder_data*
  store %struct.mime_header_decoder_data* %8, %struct.mime_header_decoder_data** %6, align 8
  %9 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %10 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %424 [
    i32 1, label %12
    i32 2, label %70
    i32 3, label %146
    i32 4, label %199
    i32 5, label %249
    i32 6, label %267
    i32 7, label %322
    i32 8, label %362
    i32 9, label %362
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 63
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %18 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %17, i32 0, i32 3
  %19 = call i32 @mbfl_memory_device_output(i32 %16, %struct.TYPE_16__* %18)
  %20 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %21 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %25 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %27 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %26, i32 0, i32 0
  store i32 2, i32* %27, align 8
  br label %69

28:                                               ; preds = %12
  %29 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %30 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %29, i32 0, i32 2
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %33 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %32, i32 0, i32 3
  %34 = call i32 @mbfl_convert_filter_devcat(%struct.TYPE_15__* %31, %struct.TYPE_16__* %33)
  %35 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %36 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %35, i32 0, i32 3
  %37 = call i32 @mbfl_memory_device_reset(%struct.TYPE_16__* %36)
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 61
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %43 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %42, i32 0, i32 3
  %44 = call i32 @mbfl_memory_device_output(i32 %41, %struct.TYPE_16__* %43)
  br label %68

45:                                               ; preds = %28
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, 13
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %51, label %54

51:                                               ; preds = %48, %45
  %52 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %53 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %52, i32 0, i32 0
  store i32 9, i32* %53, align 8
  br label %67

54:                                               ; preds = %48
  %55 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %56 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %55, i32 0, i32 2
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32 (i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_15__*)** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %62 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %61, i32 0, i32 2
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = call i32 %59(i32 %60, %struct.TYPE_15__* %63)
  %65 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %66 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %54, %51
  br label %68

68:                                               ; preds = %67, %40
  br label %69

69:                                               ; preds = %68, %15
  br label %456

70:                                               ; preds = %2
  %71 = load i32, i32* %3, align 4
  %72 = icmp eq i32 %71, 63
  br i1 %72, label %73, label %103

73:                                               ; preds = %70
  %74 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %75 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %74, i32 0, i32 3
  %76 = call i32 @mbfl_memory_device_output(i32 0, %struct.TYPE_16__* %75)
  %77 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %78 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %82 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = bitcast i32* %84 to i8*
  %86 = call i32* @mbfl_name2encoding(i8* %85)
  store i32* %86, i32** %5, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %73
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %92 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %91, i32 0, i32 6
  store i32* %90, i32** %92, align 8
  %93 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %94 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %93, i32 0, i32 0
  store i32 3, i32* %94, align 8
  br label %95

95:                                               ; preds = %89, %73
  %96 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %97 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %96, i32 0, i32 3
  %98 = call i32 @mbfl_memory_device_unput(%struct.TYPE_16__* %97)
  %99 = load i32, i32* %3, align 4
  %100 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %101 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %100, i32 0, i32 3
  %102 = call i32 @mbfl_memory_device_output(i32 %99, %struct.TYPE_16__* %101)
  br label %145

103:                                              ; preds = %70
  %104 = load i32, i32* %3, align 4
  %105 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %106 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %105, i32 0, i32 3
  %107 = call i32 @mbfl_memory_device_output(i32 %104, %struct.TYPE_16__* %106)
  %108 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %109 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ugt i64 %111, 100
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %115 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  br label %129

116:                                              ; preds = %103
  %117 = load i32, i32* %3, align 4
  %118 = icmp eq i32 %117, 13
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %3, align 4
  %121 = icmp eq i32 %120, 10
  br i1 %121, label %122, label %128

122:                                              ; preds = %119, %116
  %123 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %124 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %123, i32 0, i32 3
  %125 = call i32 @mbfl_memory_device_unput(%struct.TYPE_16__* %124)
  %126 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %127 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %126, i32 0, i32 0
  store i32 9, i32* %127, align 8
  br label %128

128:                                              ; preds = %122, %119
  br label %129

129:                                              ; preds = %128, %113
  %130 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %131 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 2
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %136 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %135, i32 0, i32 2
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %139 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %138, i32 0, i32 3
  %140 = call i32 @mbfl_convert_filter_devcat(%struct.TYPE_15__* %137, %struct.TYPE_16__* %139)
  %141 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %142 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %141, i32 0, i32 3
  %143 = call i32 @mbfl_memory_device_reset(%struct.TYPE_16__* %142)
  br label %144

144:                                              ; preds = %134, %129
  br label %145

145:                                              ; preds = %144, %95
  br label %456

146:                                              ; preds = %2
  %147 = load i32, i32* %3, align 4
  %148 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %149 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %148, i32 0, i32 3
  %150 = call i32 @mbfl_memory_device_output(i32 %147, %struct.TYPE_16__* %149)
  %151 = load i32, i32* %3, align 4
  %152 = icmp eq i32 %151, 66
  br i1 %152, label %156, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %3, align 4
  %155 = icmp eq i32 %154, 98
  br i1 %155, label %156, label %161

156:                                              ; preds = %153, %146
  %157 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %158 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %157, i32 0, i32 5
  store i32* @mbfl_encoding_base64, i32** %158, align 8
  %159 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %160 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %159, i32 0, i32 0
  store i32 4, i32* %160, align 8
  br label %198

161:                                              ; preds = %153
  %162 = load i32, i32* %3, align 4
  %163 = icmp eq i32 %162, 81
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %3, align 4
  %166 = icmp eq i32 %165, 113
  br i1 %166, label %167, label %172

167:                                              ; preds = %164, %161
  %168 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %169 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %168, i32 0, i32 5
  store i32* @mbfl_encoding_qprint, i32** %169, align 8
  %170 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %171 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %170, i32 0, i32 0
  store i32 4, i32* %171, align 8
  br label %197

172:                                              ; preds = %164
  %173 = load i32, i32* %3, align 4
  %174 = icmp eq i32 %173, 13
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %3, align 4
  %177 = icmp eq i32 %176, 10
  br i1 %177, label %178, label %184

178:                                              ; preds = %175, %172
  %179 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %180 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %179, i32 0, i32 3
  %181 = call i32 @mbfl_memory_device_unput(%struct.TYPE_16__* %180)
  %182 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %183 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %182, i32 0, i32 0
  store i32 9, i32* %183, align 8
  br label %187

184:                                              ; preds = %175
  %185 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %186 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %185, i32 0, i32 0
  store i32 0, i32* %186, align 8
  br label %187

187:                                              ; preds = %184, %178
  %188 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %189 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %188, i32 0, i32 2
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %189, align 8
  %191 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %192 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %191, i32 0, i32 3
  %193 = call i32 @mbfl_convert_filter_devcat(%struct.TYPE_15__* %190, %struct.TYPE_16__* %192)
  %194 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %195 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %194, i32 0, i32 3
  %196 = call i32 @mbfl_memory_device_reset(%struct.TYPE_16__* %195)
  br label %197

197:                                              ; preds = %187, %167
  br label %198

198:                                              ; preds = %197, %156
  br label %456

199:                                              ; preds = %2
  %200 = load i32, i32* %3, align 4
  %201 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %202 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %201, i32 0, i32 3
  %203 = call i32 @mbfl_memory_device_output(i32 %200, %struct.TYPE_16__* %202)
  %204 = load i32, i32* %3, align 4
  %205 = icmp eq i32 %204, 63
  br i1 %205, label %206, label %223

206:                                              ; preds = %199
  %207 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %208 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %207, i32 0, i32 2
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %208, align 8
  %210 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %211 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %210, i32 0, i32 6
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @mbfl_convert_filter_reset(%struct.TYPE_15__* %209, i32* %212, i32* @mbfl_encoding_wchar)
  %214 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %215 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %214, i32 0, i32 4
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %215, align 8
  %217 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %218 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %217, i32 0, i32 5
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @mbfl_convert_filter_reset(%struct.TYPE_15__* %216, i32* %219, i32* @mbfl_encoding_8bit)
  %221 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %222 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %221, i32 0, i32 0
  store i32 5, i32* %222, align 8
  br label %245

223:                                              ; preds = %199
  %224 = load i32, i32* %3, align 4
  %225 = icmp eq i32 %224, 13
  br i1 %225, label %229, label %226

226:                                              ; preds = %223
  %227 = load i32, i32* %3, align 4
  %228 = icmp eq i32 %227, 10
  br i1 %228, label %229, label %235

229:                                              ; preds = %226, %223
  %230 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %231 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %230, i32 0, i32 3
  %232 = call i32 @mbfl_memory_device_unput(%struct.TYPE_16__* %231)
  %233 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %234 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %233, i32 0, i32 0
  store i32 9, i32* %234, align 8
  br label %238

235:                                              ; preds = %226
  %236 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %237 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %236, i32 0, i32 0
  store i32 0, i32* %237, align 8
  br label %238

238:                                              ; preds = %235, %229
  %239 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %240 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %239, i32 0, i32 2
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %240, align 8
  %242 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %243 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %242, i32 0, i32 3
  %244 = call i32 @mbfl_convert_filter_devcat(%struct.TYPE_15__* %241, %struct.TYPE_16__* %243)
  br label %245

245:                                              ; preds = %238, %206
  %246 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %247 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %246, i32 0, i32 3
  %248 = call i32 @mbfl_memory_device_reset(%struct.TYPE_16__* %247)
  br label %456

249:                                              ; preds = %2
  %250 = load i32, i32* %3, align 4
  %251 = icmp eq i32 %250, 63
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %254 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %253, i32 0, i32 0
  store i32 6, i32* %254, align 8
  br label %266

255:                                              ; preds = %249
  %256 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %257 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %256, i32 0, i32 4
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load i32 (i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_15__*)** %259, align 8
  %261 = load i32, i32* %3, align 4
  %262 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %263 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %262, i32 0, i32 4
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %263, align 8
  %265 = call i32 %260(i32 %261, %struct.TYPE_15__* %264)
  br label %266

266:                                              ; preds = %255, %252
  br label %456

267:                                              ; preds = %2
  %268 = load i32, i32* %3, align 4
  %269 = icmp eq i32 %268, 61
  br i1 %269, label %270, label %295

270:                                              ; preds = %267
  %271 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %272 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %271, i32 0, i32 4
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 1
  %275 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %274, align 8
  %276 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %277 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %276, i32 0, i32 4
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %277, align 8
  %279 = call i32 %275(%struct.TYPE_15__* %278)
  %280 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %281 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %280, i32 0, i32 2
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 1
  %284 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %283, align 8
  %285 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %286 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %285, i32 0, i32 2
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %286, align 8
  %288 = call i32 %284(%struct.TYPE_15__* %287)
  %289 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %290 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %289, i32 0, i32 2
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %290, align 8
  %292 = call i32 @mbfl_convert_filter_reset(%struct.TYPE_15__* %291, i32* @mbfl_encoding_ascii, i32* @mbfl_encoding_wchar)
  %293 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %294 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %293, i32 0, i32 0
  store i32 7, i32* %294, align 8
  br label %321

295:                                              ; preds = %267
  %296 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %297 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %296, i32 0, i32 4
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 0
  %300 = load i32 (i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_15__*)** %299, align 8
  %301 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %302 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %301, i32 0, i32 4
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %302, align 8
  %304 = call i32 %300(i32 63, %struct.TYPE_15__* %303)
  %305 = load i32, i32* %3, align 4
  %306 = icmp ne i32 %305, 63
  br i1 %306, label %307, label %320

307:                                              ; preds = %295
  %308 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %309 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %308, i32 0, i32 4
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 0
  %312 = load i32 (i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_15__*)** %311, align 8
  %313 = load i32, i32* %3, align 4
  %314 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %315 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %314, i32 0, i32 4
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %315, align 8
  %317 = call i32 %312(i32 %313, %struct.TYPE_15__* %316)
  %318 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %319 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %318, i32 0, i32 0
  store i32 5, i32* %319, align 8
  br label %320

320:                                              ; preds = %307, %295
  br label %321

321:                                              ; preds = %320, %270
  br label %456

322:                                              ; preds = %2
  %323 = load i32, i32* %3, align 4
  %324 = icmp eq i32 %323, 13
  br i1 %324, label %328, label %325

325:                                              ; preds = %322
  %326 = load i32, i32* %3, align 4
  %327 = icmp eq i32 %326, 10
  br i1 %327, label %328, label %331

328:                                              ; preds = %325, %322
  %329 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %330 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %329, i32 0, i32 0
  store i32 8, i32* %330, align 8
  br label %361

331:                                              ; preds = %325
  %332 = load i32, i32* %3, align 4
  %333 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %334 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %333, i32 0, i32 3
  %335 = call i32 @mbfl_memory_device_output(i32 %332, %struct.TYPE_16__* %334)
  %336 = load i32, i32* %3, align 4
  %337 = icmp eq i32 %336, 61
  br i1 %337, label %338, label %341

338:                                              ; preds = %331
  %339 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %340 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %339, i32 0, i32 0
  store i32 1, i32* %340, align 8
  br label %360

341:                                              ; preds = %331
  %342 = load i32, i32* %3, align 4
  %343 = icmp ne i32 %342, 32
  br i1 %343, label %344, label %359

344:                                              ; preds = %341
  %345 = load i32, i32* %3, align 4
  %346 = icmp ne i32 %345, 9
  br i1 %346, label %347, label %359

347:                                              ; preds = %344
  %348 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %349 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %348, i32 0, i32 2
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %349, align 8
  %351 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %352 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %351, i32 0, i32 3
  %353 = call i32 @mbfl_convert_filter_devcat(%struct.TYPE_15__* %350, %struct.TYPE_16__* %352)
  %354 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %355 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %354, i32 0, i32 3
  %356 = call i32 @mbfl_memory_device_reset(%struct.TYPE_16__* %355)
  %357 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %358 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %357, i32 0, i32 0
  store i32 0, i32* %358, align 8
  br label %359

359:                                              ; preds = %347, %344, %341
  br label %360

360:                                              ; preds = %359, %338
  br label %361

361:                                              ; preds = %360, %328
  br label %456

362:                                              ; preds = %2, %2
  %363 = load i32, i32* %3, align 4
  %364 = icmp ne i32 %363, 13
  br i1 %364, label %365, label %423

365:                                              ; preds = %362
  %366 = load i32, i32* %3, align 4
  %367 = icmp ne i32 %366, 10
  br i1 %367, label %368, label %423

368:                                              ; preds = %365
  %369 = load i32, i32* %3, align 4
  %370 = icmp ne i32 %369, 32
  br i1 %370, label %371, label %423

371:                                              ; preds = %368
  %372 = load i32, i32* %3, align 4
  %373 = icmp ne i32 %372, 9
  br i1 %373, label %374, label %423

374:                                              ; preds = %371
  %375 = load i32, i32* %3, align 4
  %376 = icmp eq i32 %375, 61
  br i1 %376, label %377, label %403

377:                                              ; preds = %374
  %378 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %379 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = icmp eq i32 %380, 8
  br i1 %381, label %382, label %386

382:                                              ; preds = %377
  %383 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %384 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %383, i32 0, i32 3
  %385 = call i32 @mbfl_memory_device_output(i32 32, %struct.TYPE_16__* %384)
  br label %396

386:                                              ; preds = %377
  %387 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %388 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %387, i32 0, i32 2
  %389 = load %struct.TYPE_15__*, %struct.TYPE_15__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %389, i32 0, i32 0
  %391 = load i32 (i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_15__*)** %390, align 8
  %392 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %393 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %392, i32 0, i32 2
  %394 = load %struct.TYPE_15__*, %struct.TYPE_15__** %393, align 8
  %395 = call i32 %391(i32 32, %struct.TYPE_15__* %394)
  br label %396

396:                                              ; preds = %386, %382
  %397 = load i32, i32* %3, align 4
  %398 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %399 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %398, i32 0, i32 3
  %400 = call i32 @mbfl_memory_device_output(i32 %397, %struct.TYPE_16__* %399)
  %401 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %402 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %401, i32 0, i32 0
  store i32 1, i32* %402, align 8
  br label %422

403:                                              ; preds = %374
  %404 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %405 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %404, i32 0, i32 3
  %406 = call i32 @mbfl_memory_device_output(i32 32, %struct.TYPE_16__* %405)
  %407 = load i32, i32* %3, align 4
  %408 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %409 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %408, i32 0, i32 3
  %410 = call i32 @mbfl_memory_device_output(i32 %407, %struct.TYPE_16__* %409)
  %411 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %412 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %411, i32 0, i32 2
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** %412, align 8
  %414 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %415 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %414, i32 0, i32 3
  %416 = call i32 @mbfl_convert_filter_devcat(%struct.TYPE_15__* %413, %struct.TYPE_16__* %415)
  %417 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %418 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %417, i32 0, i32 3
  %419 = call i32 @mbfl_memory_device_reset(%struct.TYPE_16__* %418)
  %420 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %421 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %420, i32 0, i32 0
  store i32 0, i32* %421, align 8
  br label %422

422:                                              ; preds = %403, %396
  br label %423

423:                                              ; preds = %422, %371, %368, %365, %362
  br label %456

424:                                              ; preds = %2
  %425 = load i32, i32* %3, align 4
  %426 = icmp eq i32 %425, 13
  br i1 %426, label %430, label %427

427:                                              ; preds = %424
  %428 = load i32, i32* %3, align 4
  %429 = icmp eq i32 %428, 10
  br i1 %429, label %430, label %433

430:                                              ; preds = %427, %424
  %431 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %432 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %431, i32 0, i32 0
  store i32 9, i32* %432, align 8
  br label %455

433:                                              ; preds = %427
  %434 = load i32, i32* %3, align 4
  %435 = icmp eq i32 %434, 61
  br i1 %435, label %436, label %443

436:                                              ; preds = %433
  %437 = load i32, i32* %3, align 4
  %438 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %439 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %438, i32 0, i32 3
  %440 = call i32 @mbfl_memory_device_output(i32 %437, %struct.TYPE_16__* %439)
  %441 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %442 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %441, i32 0, i32 0
  store i32 1, i32* %442, align 8
  br label %454

443:                                              ; preds = %433
  %444 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %445 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %444, i32 0, i32 2
  %446 = load %struct.TYPE_15__*, %struct.TYPE_15__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %446, i32 0, i32 0
  %448 = load i32 (i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_15__*)** %447, align 8
  %449 = load i32, i32* %3, align 4
  %450 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %6, align 8
  %451 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %450, i32 0, i32 2
  %452 = load %struct.TYPE_15__*, %struct.TYPE_15__** %451, align 8
  %453 = call i32 %448(i32 %449, %struct.TYPE_15__* %452)
  br label %454

454:                                              ; preds = %443, %436
  br label %455

455:                                              ; preds = %454, %430
  br label %456

456:                                              ; preds = %455, %423, %361, %321, %266, %245, %198, %145, %69
  %457 = load i32, i32* %3, align 4
  ret i32 %457
}

declare dso_local i32 @mbfl_memory_device_output(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @mbfl_convert_filter_devcat(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @mbfl_memory_device_reset(%struct.TYPE_16__*) #1

declare dso_local i32* @mbfl_name2encoding(i8*) #1

declare dso_local i32 @mbfl_memory_device_unput(%struct.TYPE_16__*) #1

declare dso_local i32 @mbfl_convert_filter_reset(%struct.TYPE_15__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
