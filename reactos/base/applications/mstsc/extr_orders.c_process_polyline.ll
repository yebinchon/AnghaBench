; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_polyline.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_polyline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32*, i32, i8*, i8* }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i8*, i8* }

@.str = private unnamed_addr constant [48 x i8] c"POLYLINE(x=%d,y=%d,op=0x%x,fg=0x%x,n=%d,sz=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Data: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"bad ROP2 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"polyline parse error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_10__*, i32, i32)* @process_polyline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_polyline(i32 %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 6
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @rdp_in_coord(i32 %19, i8** %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 5
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @rdp_in_coord(i32 %29, i8** %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %24
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @in_uint8(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 16
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  %52 = call i32 @rdp_in_colour(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @in_uint8(i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %53
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, 64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @in_uint8(i32 %68, i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @in_uint8a(i32 %73, i32* %76, i32 %79)
  br label %81

81:                                               ; preds = %67, %63
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 6
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 5
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @DEBUG(i8* %101)
  %103 = call i32 @DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %121, %81
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %104
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = call i32 @DEBUG(i8* %119)
  br label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %104

124:                                              ; preds = %104
  %125 = call i32 @DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %128, 1
  br i1 %129, label %135, label %130

130:                                              ; preds = %124
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %133, 16
  br i1 %134, label %135, label %140

135:                                              ; preds = %130, %124
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  br label %270

140:                                              ; preds = %130
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 16
  %147 = trunc i64 %146 to i32
  %148 = call i64 @xmalloc(i32 %147)
  %149 = inttoptr i64 %148 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %149, %struct.TYPE_9__** %14, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 16
  %157 = trunc i64 %156 to i32
  %158 = call i32 @memset(%struct.TYPE_9__* %150, i32 0, i32 %157)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 6
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  store i8* %161, i8** %164, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 5
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  store i8* %167, i8** %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store i64 0, i64* %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  store i64 0, i64* %172, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i32 %175, i32* %176, align 8
  store i32 0, i32* %9, align 4
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sdiv i32 %180, 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %183

183:                                              ; preds = %244, %140
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp sle i32 %184, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = icmp slt i32 %190, %193
  br label %195

195:                                              ; preds = %189, %183
  %196 = phi i1 [ false, %183 ], [ %194, %189 ]
  br i1 %196, label %197, label %247

197:                                              ; preds = %195
  %198 = load i32, i32* %10, align 4
  %199 = sub nsw i32 %198, 1
  %200 = srem i32 %199, 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %197
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %9, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %12, align 4
  br label %211

211:                                              ; preds = %202, %197
  %212 = load i32, i32* %12, align 4
  %213 = xor i32 %212, -1
  %214 = and i32 %213, 128
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %211
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = call i8* @parse_delta(i32* %219, i32* %11)
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 1
  store i8* %220, i8** %225, align 8
  br label %226

226:                                              ; preds = %216, %211
  %227 = load i32, i32* %12, align 4
  %228 = xor i32 %227, -1
  %229 = and i32 %228, 64
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %226
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = call i8* @parse_delta(i32* %234, i32* %11)
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  store i8* %235, i8** %240, align 8
  br label %241

241:                                              ; preds = %231, %226
  %242 = load i32, i32* %12, align 4
  %243 = shl i32 %242, 2
  store i32 %243, i32* %12, align 4
  br label %244

244:                                              ; preds = %241
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %10, align 4
  br label %183

247:                                              ; preds = %195
  %248 = load i32, i32* %10, align 4
  %249 = sub nsw i32 %248, 1
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %249, %252
  br i1 %253, label %254, label %265

254:                                              ; preds = %247
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = sub nsw i32 %257, 1
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, 1
  %264 = call i32 @ui_polyline(i32 %258, %struct.TYPE_9__* %259, i32 %263, %struct.TYPE_11__* %13)
  br label %267

265:                                              ; preds = %247
  %266 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %267

267:                                              ; preds = %265, %254
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %269 = call i32 @xfree(%struct.TYPE_9__* %268)
  br label %270

270:                                              ; preds = %267, %135
  ret void
}

declare dso_local i32 @rdp_in_coord(i32, i8**, i32) #1

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @rdp_in_colour(i32, i32*) #1

declare dso_local i32 @in_uint8a(i32, i32*, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @parse_delta(i32*, i32*) #1

declare dso_local i32 @ui_polyline(i32, %struct.TYPE_9__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @xfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
