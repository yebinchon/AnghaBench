; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_btreeInitPage.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_btreeInitPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i64, i64, i64, i32, i64*, i64*, i32, i64, i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @btreeInitPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btreeInitPage(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 12
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 12
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sqlite3_mutex_held(i32 %26)
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @sqlite3PagerPagenumber(i32 %34)
  %36 = icmp eq i64 %31, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 13
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_8__* @sqlite3PagerGetExtra(i32 %42)
  %44 = icmp eq %struct.TYPE_8__* %39, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 13
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @sqlite3PagerGetData(i32 %52)
  %54 = icmp eq i64 %49, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %250, label %61

61:                                               ; preds = %1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 12
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %7, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %5, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i64*
  store i64* %71, i64** %6, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = load i64*, i64** %6, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @decodeFlags(%struct.TYPE_8__* %72, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %61
  %80 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %80, i32* %2, align 4
  br label %252

81:                                               ; preds = %61
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %84, 512
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp sle i32 %89, 65536
  br label %91

91:                                               ; preds = %86, %81
  %92 = phi i1 [ false, %81 ], [ %90, %86 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 4
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 11
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %8, align 4
  %107 = load i64, i64* %5, align 8
  %108 = add i64 %107, 12
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = mul nsw i32 4, %111
  %113 = sext i32 %112 to i64
  %114 = sub i64 %108, %113
  store i64 %114, i64* %9, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 5
  store i64 %114, i64* %116, align 8
  %117 = load i64*, i64** %6, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 7
  store i64* %120, i64** %122, align 8
  %123 = load i64*, i64** %6, align 8
  %124 = load i64, i64* %9, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 8
  store i64* %125, i64** %127, align 8
  %128 = load i64*, i64** %6, align 8
  %129 = load i64, i64* %5, align 8
  %130 = add i64 %129, 5
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = call i32 @get2byteNotZero(i64* %131)
  store i32 %132, i32* %11, align 4
  %133 = load i64*, i64** %6, align 8
  %134 = load i64, i64* %5, align 8
  %135 = add i64 %134, 3
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = call i8* @get2byte(i64* %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 9
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 9
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %145 = call i32 @MX_CELL(%struct.TYPE_9__* %144)
  %146 = icmp sgt i32 %143, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %91
  %148 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %148, i32* %2, align 4
  br label %252

149:                                              ; preds = %91
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = call i32 @MX_CELL(%struct.TYPE_9__* %153)
  %155 = icmp eq i32 %152, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @testcase(i32 %156)
  %158 = load i64, i64* %9, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 8
  %162 = mul nsw i32 2, %161
  %163 = sext i32 %162 to i64
  %164 = add i64 %158, %163
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %8, align 4
  %167 = sub nsw i32 %166, 4
  store i32 %167, i32* %13, align 4
  %168 = load i64*, i64** %6, align 8
  %169 = load i64, i64* %5, align 8
  %170 = add i64 %169, 1
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = call i8* @get2byte(i64* %171)
  %173 = ptrtoint i8* %172 to i64
  store i64 %173, i64* %4, align 8
  %174 = load i64*, i64** %6, align 8
  %175 = load i64, i64* %5, align 8
  %176 = add i64 %175, 7
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = add i64 %178, %180
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %228, %149
  %184 = load i64, i64* %4, align 8
  %185 = icmp ugt i64 %184, 0
  br i1 %185, label %186, label %235

186:                                              ; preds = %183
  %187 = load i64, i64* %4, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = icmp ult i64 %187, %189
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load i64, i64* %4, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = icmp ugt i64 %192, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %191, %186
  %197 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %197, i32* %2, align 4
  br label %252

198:                                              ; preds = %191
  %199 = load i64*, i64** %6, align 8
  %200 = load i64, i64* %4, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  %202 = call i8* @get2byte(i64* %201)
  %203 = ptrtoint i8* %202 to i64
  store i64 %203, i64* %14, align 8
  %204 = load i64*, i64** %6, align 8
  %205 = load i64, i64* %4, align 8
  %206 = add i64 %205, 2
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = call i8* @get2byte(i64* %207)
  %209 = ptrtoint i8* %208 to i64
  store i64 %209, i64* %15, align 8
  %210 = load i64, i64* %14, align 8
  %211 = icmp ugt i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %198
  %213 = load i64, i64* %14, align 8
  %214 = load i64, i64* %4, align 8
  %215 = load i64, i64* %15, align 8
  %216 = add i64 %214, %215
  %217 = add i64 %216, 3
  %218 = icmp ule i64 %213, %217
  br i1 %218, label %226, label %219

219:                                              ; preds = %212, %198
  %220 = load i64, i64* %4, align 8
  %221 = load i64, i64* %15, align 8
  %222 = add i64 %220, %221
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = icmp ugt i64 %222, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %219, %212
  %227 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %227, i32* %2, align 4
  br label %252

228:                                              ; preds = %219
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = load i64, i64* %15, align 8
  %232 = add i64 %230, %231
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %10, align 4
  %234 = load i64, i64* %14, align 8
  store i64 %234, i64* %4, align 8
  br label %183

235:                                              ; preds = %183
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %8, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %240, i32* %2, align 4
  br label %252

241:                                              ; preds = %235
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* %12, align 4
  %244 = sub nsw i32 %242, %243
  %245 = sext i32 %244 to i64
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 10
  store i64 %245, i64* %247, align 8
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  store i32 1, i32* %249, align 8
  br label %250

250:                                              ; preds = %241, %1
  %251 = load i32, i32* @SQLITE_OK, align 4
  store i32 %251, i32* %2, align 4
  br label %252

252:                                              ; preds = %250, %239, %226, %196, %147, %79
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i64 @sqlite3PagerPagenumber(i32) #1

declare dso_local %struct.TYPE_8__* @sqlite3PagerGetExtra(i32) #1

declare dso_local i64 @sqlite3PagerGetData(i32) #1

declare dso_local i64 @decodeFlags(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @get2byteNotZero(i64*) #1

declare dso_local i8* @get2byte(i64*) #1

declare dso_local i32 @MX_CELL(%struct.TYPE_9__*) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
