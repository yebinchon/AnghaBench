; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_varstrfastcmp_locale.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_varstrfastcmp_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, i32, i8*, i32, i8*, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@BPCHAROID = common dso_local global i64 0, align 8
@MaxAllocSize = common dso_local global i32 0, align 4
@COLLPROVIDER_ICU = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unsupported collprovider: %c\00", align 1
@PG_UTF8 = common dso_local global i64 0, align 8
@U_ZERO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, %struct.TYPE_11__*)* @varstrfastcmp_locale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @varstrfastcmp_locale(i8* %0, i32 %1, i8* %2, i32 %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @memcmp(i8* %23, i8* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %247

29:                                               ; preds = %22, %5
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BPCHAROID, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @bpchartruelen(i8* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @bpchartruelen(i8* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %35, %29
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %42
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @pfree(i8* %51)
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %57, 2
  %59 = load i32, i32* @MaxAllocSize, align 4
  %60 = call i32 @Min(i32 %58, i32 %59)
  %61 = call i8* @Max(i32 %54, i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @MemoryContextAlloc(i32 %67, i32 %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %48, %42
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %75, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %74
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @pfree(i8* %83)
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, 2
  %91 = load i32, i32* @MaxAllocSize, align 4
  %92 = call i32 @Min(i32 %90, i32 %91)
  %93 = call i8* @Max(i32 %86, i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @MemoryContextAlloc(i32 %99, i32 %102)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %80, %74
  store i32 1, i32* %14, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %107, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %106
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i64 @memcmp(i8* %115, i8* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %112, %106
  store i32 0, i32* %14, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @memcpy(i8* %123, i8* %124, i32 %125)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  store i8 0, i8* %132, align 1
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %120, %112
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %137, %140
  br i1 %141, label %150, label %142

142:                                              ; preds = %136
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 4
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i64 @memcmp(i8* %145, i8* %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %142, %136
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 4
  %153 = load i8*, i8** %152, align 8
  %154 = load i8*, i8** %9, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @memcpy(i8* %153, i8* %154, i32 %155)
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 4
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  store i8 0, i8* %162, align 1
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 4
  br label %179

166:                                              ; preds = %142
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %166
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %169
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %6, align 4
  br label %247

178:                                              ; preds = %169, %166
  br label %179

179:                                              ; preds = %178, %150
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 9
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = icmp ne %struct.TYPE_9__* %182, null
  br i1 %183, label %184, label %209

184:                                              ; preds = %179
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 9
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @COLLPROVIDER_ICU, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %184
  %193 = load i32, i32* @ERROR, align 4
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 9
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @elog(i32 %193, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %198)
  br label %208

200:                                              ; preds = %184
  %201 = load i32, i32* @ERROR, align 4
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 9
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @elog(i32 %201, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %206)
  br label %208

208:                                              ; preds = %200, %192
  br label %217

209:                                              ; preds = %179
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 2
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 4
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @strcoll(i8* %212, i8* %215)
  store i32 %216, i32* %13, align 4
  br label %217

217:                                              ; preds = %209, %208
  %218 = load i32, i32* %13, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %240

220:                                              ; preds = %217
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 9
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %222, align 8
  %224 = icmp ne %struct.TYPE_9__* %223, null
  br i1 %224, label %225, label %232

225:                                              ; preds = %220
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 9
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %225, %220
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 2
  %235 = load i8*, i8** %234, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 4
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @strcmp(i8* %235, i8* %238)
  store i32 %239, i32* %13, align 4
  br label %240

240:                                              ; preds = %232, %225, %217
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 7
  store i32 0, i32* %242, align 8
  %243 = load i32, i32* %13, align 4
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 8
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %13, align 4
  store i32 %246, i32* %6, align 4
  br label %247

247:                                              ; preds = %240, %174, %28
  %248 = load i32, i32* %6, align 4
  ret i32 %248
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @bpchartruelen(i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i8* @Max(i32, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i8* @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @strcoll(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
