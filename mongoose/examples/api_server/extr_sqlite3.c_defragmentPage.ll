; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_defragmentPage.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_defragmentPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@SQLITE_MAX_PAGE_SIZE = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @defragmentPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defragmentPage(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @sqlite3PagerIswriteable(i32 %19)
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 7
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SQLITE_MAX_PAGE_SIZE, align 4
  %34 = icmp sle i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 7
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sqlite3_mutex_held(i32 %47)
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 7
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @sqlite3PagerTempSpace(i32 %54)
  store i8* %55, i8** %13, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %12, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %6, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = call i32 @get2byte(i8* %73)
  %75 = icmp eq i32 %68, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 7
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %8, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 5
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = call i32 @get2byte(i8* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i8*, i8** %13, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %97, %98
  %100 = call i32 @memcpy(i8* %92, i8* %96, i32 %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %11, align 4
  %104 = mul nsw i32 2, %103
  %105 = add nsw i32 %102, %104
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %106, 4
  store i32 %107, i32* %15, align 4
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %214, %1
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %217

112:                                              ; preds = %108
  %113 = load i8*, i8** %12, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %4, align 4
  %116 = mul nsw i32 %115, 2
  %117 = add nsw i32 %114, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %113, i64 %118
  store i8* %119, i8** %16, align 8
  %120 = load i8*, i8** %16, align 8
  %121 = call i32 @get2byte(i8* %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @testcase(i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @testcase(i32 %130)
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %112
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135, %112
  %140 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %140, i32* %2, align 4
  br label %269

141:                                              ; preds = %135
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp sge i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %15, align 4
  %148 = icmp sle i32 %146, %147
  br label %149

149:                                              ; preds = %145, %141
  %150 = phi i1 [ false, %141 ], [ %148, %145 ]
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = load i8*, i8** %13, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = call i32 @cellSizePtr(%struct.TYPE_6__* %153, i8* %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %10, align 4
  %161 = sub nsw i32 %160, %159
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %171, label %165

165:                                              ; preds = %149
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %8, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %165, %149
  %172 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %172, i32* %2, align 4
  br label %269

173:                                              ; preds = %165
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %8, align 4
  %178 = icmp sle i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %14, align 4
  %182 = icmp sge i32 %180, %181
  br label %183

183:                                              ; preds = %179, %173
  %184 = phi i1 [ false, %173 ], [ %182, %179 ]
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %187, %188
  %190 = load i32, i32* %8, align 4
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @testcase(i32 %192)
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %194, %195
  %197 = load i32, i32* %8, align 4
  %198 = icmp eq i32 %196, %197
  %199 = zext i1 %198 to i32
  %200 = call i32 @testcase(i32 %199)
  %201 = load i8*, i8** %12, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i8*, i8** %13, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @memcpy(i8* %204, i8* %208, i32 %209)
  %211 = load i8*, i8** %16, align 8
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @put2byte(i8* %211, i32 %212)
  br label %214

214:                                              ; preds = %183
  %215 = load i32, i32* %4, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %4, align 4
  br label %108

217:                                              ; preds = %108
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %14, align 4
  %220 = icmp sge i32 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @assert(i32 %221)
  %223 = load i8*, i8** %12, align 8
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 5
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %223, i64 %226
  %228 = load i32, i32* %10, align 4
  %229 = call i32 @put2byte(i8* %227, i32 %228)
  %230 = load i8*, i8** %12, align 8
  %231 = load i32, i32* %6, align 4
  %232 = add nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %230, i64 %233
  store i8 0, i8* %234, align 1
  %235 = load i8*, i8** %12, align 8
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 2
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %235, i64 %238
  store i8 0, i8* %239, align 1
  %240 = load i8*, i8** %12, align 8
  %241 = load i32, i32* %6, align 4
  %242 = add nsw i32 %241, 7
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %240, i64 %243
  store i8 0, i8* %244, align 1
  %245 = load i8*, i8** %12, align 8
  %246 = load i32, i32* %14, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %14, align 4
  %251 = sub nsw i32 %249, %250
  %252 = call i32 @memset(i8* %248, i32 0, i32 %251)
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @sqlite3PagerIswriteable(i32 %255)
  %257 = call i32 @assert(i32 %256)
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %14, align 4
  %260 = sub nsw i32 %258, %259
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %260, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %217
  %266 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %266, i32* %2, align 4
  br label %269

267:                                              ; preds = %217
  %268 = load i32, i32* @SQLITE_OK, align 4
  store i32 %268, i32* %2, align 4
  br label %269

269:                                              ; preds = %267, %265, %171, %139
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i8* @sqlite3PagerTempSpace(i32) #1

declare dso_local i32 @get2byte(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @cellSizePtr(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @put2byte(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
