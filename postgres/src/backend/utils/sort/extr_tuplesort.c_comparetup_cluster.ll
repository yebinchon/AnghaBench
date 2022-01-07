; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_comparetup_cluster.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_comparetup_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_15__*, i32, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i64*, i32* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32* }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_11__*)* @comparetup_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comparetup_cluster(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %8, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %18, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %11, align 4
  %46 = load i64, i64* %18, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %102

48:                                               ; preds = %3
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = call i64 @ApplySortComparator(i32 %51, i32 %54, i32 %57, i32 %60, %struct.TYPE_13__* %61)
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %48
  %66 = load i64, i64* %13, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %4, align 4
  br label %241

68:                                               ; preds = %48
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %18, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @heap_getattr(i64 %74, i64 %75, i32 %76, i32* %16)
  store i32 %77, i32* %14, align 4
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %18, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @heap_getattr(i64 %78, i64 %79, i32 %80, i32* %17)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %87 = call i64 @ApplySortAbbrevFullComparator(i32 %82, i32 %83, i32 %84, i32 %85, %struct.TYPE_13__* %86)
  store i64 %87, i64* %13, align 8
  br label %88

88:                                               ; preds = %73, %68
  %89 = load i64, i64* %13, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %99

96:                                               ; preds = %91, %88
  %97 = load i64, i64* %13, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %241

99:                                               ; preds = %91
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 1
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %8, align 8
  store i32 1, i32* %12, align 4
  br label %103

102:                                              ; preds = %3
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %102, %99
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %153

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %147, %110
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %152

117:                                              ; preds = %111
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %19, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* %19, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @heap_getattr(i64 %127, i64 %128, i32 %129, i32* %16)
  store i32 %130, i32* %14, align 4
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* %19, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @heap_getattr(i64 %131, i64 %132, i32 %133, i32* %17)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %140 = call i64 @ApplySortComparator(i32 %135, i32 %136, i32 %137, i32 %138, %struct.TYPE_13__* %139)
  store i64 %140, i64* %13, align 8
  %141 = load i64, i64* %13, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %117
  %144 = load i64, i64* %13, align 8
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %4, align 4
  br label %241

146:                                              ; preds = %117
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 1
  store %struct.TYPE_13__* %151, %struct.TYPE_13__** %8, align 8
  br label %111

152:                                              ; preds = %111
  br label %240

153:                                              ; preds = %103
  %154 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %155 = zext i32 %154 to i64
  %156 = call i8* @llvm.stacksave()
  store i8* %156, i8** %20, align 8
  %157 = alloca i32, i64 %155, align 16
  store i64 %155, i64* %21, align 8
  %158 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %159 = zext i32 %158 to i64
  %160 = alloca i32, i64 %159, align 16
  store i64 %159, i64* %22, align 8
  %161 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %162 = zext i32 %161 to i64
  %163 = alloca i32, i64 %162, align 16
  store i64 %162, i64* %23, align 8
  %164 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %165 = zext i32 %164 to i64
  %166 = alloca i32, i64 %165, align 16
  store i64 %165, i64* %24, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ResetPerTupleExprContext(i32 %169)
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call %struct.TYPE_14__* @GetPerTupleExprContext(i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  store i32* %176, i32** %25, align 8
  %177 = load i64, i64* %9, align 8
  %178 = load i32*, i32** %25, align 8
  %179 = call i32 @ExecStoreHeapTuple(i64 %177, i32* %178, i32 0)
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = load i32*, i32** %25, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @FormIndexDatum(%struct.TYPE_15__* %182, i32* %183, i32 %186, i32* %157, i32* %160)
  %188 = load i64, i64* %10, align 8
  %189 = load i32*, i32** %25, align 8
  %190 = call i32 @ExecStoreHeapTuple(i64 %188, i32* %189, i32 0)
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %192, align 8
  %194 = load i32*, i32** %25, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @FormIndexDatum(%struct.TYPE_15__* %193, i32* %194, i32 %197, i32* %163, i32* %166)
  br label %199

199:                                              ; preds = %230, %153
  %200 = load i32, i32* %12, align 4
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %235

205:                                              ; preds = %199
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %157, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %160, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %163, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %12, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %166, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %223 = call i64 @ApplySortComparator(i32 %209, i32 %213, i32 %217, i32 %221, %struct.TYPE_13__* %222)
  store i64 %223, i64* %13, align 8
  %224 = load i64, i64* %13, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %205
  %227 = load i64, i64* %13, align 8
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %236

229:                                              ; preds = %205
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %12, align 4
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 1
  store %struct.TYPE_13__* %234, %struct.TYPE_13__** %8, align 8
  br label %199

235:                                              ; preds = %199
  store i32 0, i32* %26, align 4
  br label %236

236:                                              ; preds = %235, %226
  %237 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %237)
  %238 = load i32, i32* %26, align 4
  switch i32 %238, label %243 [
    i32 0, label %239
    i32 1, label %241
  ]

239:                                              ; preds = %236
  br label %240

240:                                              ; preds = %239, %152
  store i32 0, i32* %4, align 4
  br label %241

241:                                              ; preds = %240, %236, %143, %96, %65
  %242 = load i32, i32* %4, align 4
  ret i32 %242

243:                                              ; preds = %236
  unreachable
}

declare dso_local i64 @ApplySortComparator(i32, i32, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @heap_getattr(i64, i64, i32, i32*) #1

declare dso_local i64 @ApplySortAbbrevFullComparator(i32, i32, i32, i32, %struct.TYPE_13__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ResetPerTupleExprContext(i32) #1

declare dso_local %struct.TYPE_14__* @GetPerTupleExprContext(i32) #1

declare dso_local i32 @ExecStoreHeapTuple(i64, i32*, i32) #1

declare dso_local i32 @FormIndexDatum(%struct.TYPE_15__*, i32*, i32, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
