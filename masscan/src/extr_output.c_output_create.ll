; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_output.c_output_create.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_output.c_output_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32, i32, %struct.TYPE_14__, i32*, i32*, i32*, i8*, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, i8*, %struct.Masscan* }
%struct.TYPE_14__ = type { i64, i32, i64, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.Masscan = type { i32, %struct.TYPE_13__, %struct.TYPE_11__*, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i64*, i64*, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i64*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@text_output = common dso_local global i32 0, align 4
@unicornscan_output = common dso_local global i32 0, align 4
@xml_output = common dso_local global i32 0, align 4
@json_output = common dso_local global i32 0, align 4
@ndjson_output = common dso_local global i32 0, align 4
@certs_output = common dso_local global i32 0, align 4
@binary_output = common dso_local global i32 0, align 4
@grepable_output = common dso_local global i32 0, align 4
@redis_output = common dso_local global i32 0, align 4
@null_output = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Output* @output_create(%struct.Masscan* %0, i32 %1) #0 {
  %3 = alloca %struct.Masscan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Output*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.Masscan* %0, %struct.Masscan** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call %struct.Output* @CALLOC(i32 1, i32 152)
  store %struct.Output* %8, %struct.Output** %5, align 8
  %9 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %10 = load %struct.Output*, %struct.Output** %5, align 8
  %11 = getelementptr inbounds %struct.Output, %struct.Output* %10, i32 0, i32 17
  store %struct.Masscan* %9, %struct.Masscan** %11, align 8
  %12 = call i8* @time(i32 0)
  %13 = load %struct.Output*, %struct.Output** %5, align 8
  %14 = getelementptr inbounds %struct.Output, %struct.Output* %13, i32 0, i32 16
  store i8* %12, i8** %14, align 8
  %15 = load %struct.Output*, %struct.Output** %5, align 8
  %16 = getelementptr inbounds %struct.Output, %struct.Output* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %18 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.Output*, %struct.Output** %5, align 8
  %23 = getelementptr inbounds %struct.Output, %struct.Output* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %26 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.Output*, %struct.Output** %5, align 8
  %31 = getelementptr inbounds %struct.Output, %struct.Output* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %34 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.Output*, %struct.Output** %5, align 8
  %39 = getelementptr inbounds %struct.Output, %struct.Output* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 5
  store i32 %37, i32* %40, align 8
  %41 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %42 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.Output*, %struct.Output** %5, align 8
  %46 = getelementptr inbounds %struct.Output, %struct.Output* %45, i32 0, i32 15
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %49 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.Output*, %struct.Output** %5, align 8
  %53 = getelementptr inbounds %struct.Output, %struct.Output* %52, i32 0, i32 15
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %56 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.Output*, %struct.Output** %5, align 8
  %59 = getelementptr inbounds %struct.Output, %struct.Output* %58, i32 0, i32 14
  store i32 %57, i32* %59, align 8
  %60 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %61 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.Output*, %struct.Output** %5, align 8
  %64 = getelementptr inbounds %struct.Output, %struct.Output* %63, i32 0, i32 13
  store i32 %62, i32* %64, align 4
  %65 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %66 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.Output*, %struct.Output** %5, align 8
  %70 = getelementptr inbounds %struct.Output, %struct.Output* %69, i32 0, i32 12
  store i32 %68, i32* %70, align 8
  %71 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %72 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.Output*, %struct.Output** %5, align 8
  %76 = getelementptr inbounds %struct.Output, %struct.Output* %75, i32 0, i32 11
  store i32 %74, i32* %76, align 4
  %77 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %78 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.Output*, %struct.Output** %5, align 8
  %82 = getelementptr inbounds %struct.Output, %struct.Output* %81, i32 0, i32 10
  store i32 %80, i32* %82, align 8
  %83 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %84 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.Output*, %struct.Output** %5, align 8
  %88 = getelementptr inbounds %struct.Output, %struct.Output* %87, i32 0, i32 9
  store i32 %86, i32* %88, align 4
  %89 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %90 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.Output*, %struct.Output** %5, align 8
  %94 = getelementptr inbounds %struct.Output, %struct.Output* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 8
  %95 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %96 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 3
  %98 = load i64*, i64** %97, align 8
  %99 = call i8* @duplicate_string(i64* %98)
  %100 = load %struct.Output*, %struct.Output** %5, align 8
  %101 = getelementptr inbounds %struct.Output, %struct.Output* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i8* %99, i8** %102, align 8
  %103 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %104 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = load i64*, i64** %106, align 8
  %108 = call i8* @duplicate_string(i64* %107)
  %109 = load %struct.Output*, %struct.Output** %5, align 8
  %110 = getelementptr inbounds %struct.Output, %struct.Output* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 4
  store i8* %108, i8** %111, align 8
  %112 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %113 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sle i32 %114, 1
  br i1 %115, label %116, label %124

116:                                              ; preds = %2
  %117 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %118 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = load i64*, i64** %119, align 8
  %121 = call i8* @duplicate_string(i64* %120)
  %122 = load %struct.Output*, %struct.Output** %5, align 8
  %123 = getelementptr inbounds %struct.Output, %struct.Output* %122, i32 0, i32 6
  store i8* %121, i8** %123, align 8
  br label %133

124:                                              ; preds = %2
  %125 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %126 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = call i8* @indexed_filename(i64* %128, i32 %129)
  %131 = load %struct.Output*, %struct.Output** %5, align 8
  %132 = getelementptr inbounds %struct.Output, %struct.Output* %131, i32 0, i32 6
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %124, %116
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %152, %133
  %135 = load i32, i32* %6, align 4
  %136 = icmp ult i32 %135, 8
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  %138 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %139 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %138, i32 0, i32 2
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.Output*, %struct.Output** %5, align 8
  %147 = getelementptr inbounds %struct.Output, %struct.Output* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %145, i32* %151, align 4
  br label %152

152:                                              ; preds = %137
  %153 = load i32, i32* %6, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %134

155:                                              ; preds = %134
  %156 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %157 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.Output*, %struct.Output** %5, align 8
  %161 = getelementptr inbounds %struct.Output, %struct.Output* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.Output*, %struct.Output** %5, align 8
  %163 = getelementptr inbounds %struct.Output, %struct.Output* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  switch i32 %164, label %195 [
    i32 133, label %165
    i32 129, label %168
    i32 128, label %171
    i32 134, label %174
    i32 132, label %177
    i32 136, label %180
    i32 137, label %183
    i32 135, label %186
    i32 130, label %189
    i32 131, label %192
  ]

165:                                              ; preds = %155
  %166 = load %struct.Output*, %struct.Output** %5, align 8
  %167 = getelementptr inbounds %struct.Output, %struct.Output* %166, i32 0, i32 4
  store i32* @text_output, i32** %167, align 8
  br label %198

168:                                              ; preds = %155
  %169 = load %struct.Output*, %struct.Output** %5, align 8
  %170 = getelementptr inbounds %struct.Output, %struct.Output* %169, i32 0, i32 4
  store i32* @unicornscan_output, i32** %170, align 8
  br label %198

171:                                              ; preds = %155
  %172 = load %struct.Output*, %struct.Output** %5, align 8
  %173 = getelementptr inbounds %struct.Output, %struct.Output* %172, i32 0, i32 4
  store i32* @xml_output, i32** %173, align 8
  br label %198

174:                                              ; preds = %155
  %175 = load %struct.Output*, %struct.Output** %5, align 8
  %176 = getelementptr inbounds %struct.Output, %struct.Output* %175, i32 0, i32 4
  store i32* @json_output, i32** %176, align 8
  br label %198

177:                                              ; preds = %155
  %178 = load %struct.Output*, %struct.Output** %5, align 8
  %179 = getelementptr inbounds %struct.Output, %struct.Output* %178, i32 0, i32 4
  store i32* @ndjson_output, i32** %179, align 8
  br label %198

180:                                              ; preds = %155
  %181 = load %struct.Output*, %struct.Output** %5, align 8
  %182 = getelementptr inbounds %struct.Output, %struct.Output* %181, i32 0, i32 4
  store i32* @certs_output, i32** %182, align 8
  br label %198

183:                                              ; preds = %155
  %184 = load %struct.Output*, %struct.Output** %5, align 8
  %185 = getelementptr inbounds %struct.Output, %struct.Output* %184, i32 0, i32 4
  store i32* @binary_output, i32** %185, align 8
  br label %198

186:                                              ; preds = %155
  %187 = load %struct.Output*, %struct.Output** %5, align 8
  %188 = getelementptr inbounds %struct.Output, %struct.Output* %187, i32 0, i32 4
  store i32* @grepable_output, i32** %188, align 8
  br label %198

189:                                              ; preds = %155
  %190 = load %struct.Output*, %struct.Output** %5, align 8
  %191 = getelementptr inbounds %struct.Output, %struct.Output* %190, i32 0, i32 4
  store i32* @redis_output, i32** %191, align 8
  br label %198

192:                                              ; preds = %155
  %193 = load %struct.Output*, %struct.Output** %5, align 8
  %194 = getelementptr inbounds %struct.Output, %struct.Output* %193, i32 0, i32 4
  store i32* @null_output, i32** %194, align 8
  br label %198

195:                                              ; preds = %155
  %196 = load %struct.Output*, %struct.Output** %5, align 8
  %197 = getelementptr inbounds %struct.Output, %struct.Output* %196, i32 0, i32 4
  store i32* @null_output, i32** %197, align 8
  br label %198

198:                                              ; preds = %195, %192, %189, %186, %183, %180, %177, %174, %171, %168, %165
  %199 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %200 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  %202 = load i64*, i64** %201, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %236

206:                                              ; preds = %198
  %207 = load %struct.Output*, %struct.Output** %5, align 8
  %208 = getelementptr inbounds %struct.Output, %struct.Output* %207, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = icmp ne i32* %209, @null_output
  br i1 %210, label %211, label %236

211:                                              ; preds = %206
  %212 = load %struct.Output*, %struct.Output** %5, align 8
  %213 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %214 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 2
  %216 = load i64*, i64** %215, align 8
  %217 = call i32* @open_rotate(%struct.Output* %212, i64* %216)
  store i32* %217, i32** %7, align 8
  %218 = load i32*, i32** %7, align 8
  %219 = icmp eq i32* %218, null
  br i1 %219, label %220, label %227

220:                                              ; preds = %211
  %221 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %222 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 2
  %224 = load i64*, i64** %223, align 8
  %225 = call i32 @perror(i64* %224)
  %226 = call i32 @exit(i32 1) #3
  unreachable

227:                                              ; preds = %211
  %228 = load i32*, i32** %7, align 8
  %229 = load %struct.Output*, %struct.Output** %5, align 8
  %230 = getelementptr inbounds %struct.Output, %struct.Output* %229, i32 0, i32 3
  store i32* %228, i32** %230, align 8
  %231 = call i8* @time(i32 0)
  %232 = ptrtoint i8* %231 to i64
  %233 = load %struct.Output*, %struct.Output** %5, align 8
  %234 = getelementptr inbounds %struct.Output, %struct.Output* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 2
  store i64 %232, i64* %235, align 8
  br label %236

236:                                              ; preds = %227, %206, %198
  %237 = load %struct.Masscan*, %struct.Masscan** %3, align 8
  %238 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %236
  %244 = load i64, i64* @LONG_MAX, align 8
  %245 = inttoptr i64 %244 to i8*
  %246 = load %struct.Output*, %struct.Output** %5, align 8
  %247 = getelementptr inbounds %struct.Output, %struct.Output* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 3
  store i8* %245, i8** %248, align 8
  br label %295

249:                                              ; preds = %236
  %250 = load %struct.Output*, %struct.Output** %5, align 8
  %251 = getelementptr inbounds %struct.Output, %struct.Output* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = icmp sgt i32 %253, 1
  br i1 %254, label %255, label %277

255:                                              ; preds = %249
  %256 = load %struct.Output*, %struct.Output** %5, align 8
  %257 = getelementptr inbounds %struct.Output, %struct.Output* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.Output*, %struct.Output** %5, align 8
  %261 = getelementptr inbounds %struct.Output, %struct.Output* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = sub nsw i64 %259, %263
  %265 = load %struct.Output*, %struct.Output** %5, align 8
  %266 = getelementptr inbounds %struct.Output, %struct.Output* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.Output*, %struct.Output** %5, align 8
  %270 = getelementptr inbounds %struct.Output, %struct.Output* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = call i8* @next_rotate_time(i64 %264, i64 %268, i32 %272)
  %274 = load %struct.Output*, %struct.Output** %5, align 8
  %275 = getelementptr inbounds %struct.Output, %struct.Output* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 3
  store i8* %273, i8** %276, align 8
  br label %294

277:                                              ; preds = %249
  %278 = load %struct.Output*, %struct.Output** %5, align 8
  %279 = getelementptr inbounds %struct.Output, %struct.Output* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.Output*, %struct.Output** %5, align 8
  %283 = getelementptr inbounds %struct.Output, %struct.Output* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.Output*, %struct.Output** %5, align 8
  %287 = getelementptr inbounds %struct.Output, %struct.Output* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = call i8* @next_rotate_time(i64 %281, i64 %285, i32 %289)
  %291 = load %struct.Output*, %struct.Output** %5, align 8
  %292 = getelementptr inbounds %struct.Output, %struct.Output* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 3
  store i8* %290, i8** %293, align 8
  br label %294

294:                                              ; preds = %277, %255
  br label %295

295:                                              ; preds = %294, %243
  %296 = load %struct.Output*, %struct.Output** %5, align 8
  ret %struct.Output* %296
}

declare dso_local %struct.Output* @CALLOC(i32, i32) #1

declare dso_local i8* @time(i32) #1

declare dso_local i8* @duplicate_string(i64*) #1

declare dso_local i8* @indexed_filename(i64*, i32) #1

declare dso_local i32* @open_rotate(%struct.Output*, i64*) #1

declare dso_local i32 @perror(i64*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @next_rotate_time(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
