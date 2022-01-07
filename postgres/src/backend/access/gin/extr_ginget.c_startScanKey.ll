; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_startScanKey.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_startScanKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64 (%struct.TYPE_8__*)*, i32, i32, i32*, i32*, i32*, i64*, i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@entryIndexByFrequencyCmp = common dso_local global i32 0, align 4
@GIN_FALSE = common dso_local global i64 0, align 8
@GIN_MAYBE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, %struct.TYPE_8__*)* @startScanKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @startScanKey(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %11 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 11
  %14 = call i32 @ItemPointerSetMin(i32* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  store i32 0, i32* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %225

25:                                               ; preds = %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @MemoryContextSwitchTo(i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i8* @palloc(i32 %35)
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %10, align 8
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %50, %25
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %38

53:                                               ; preds = %38
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @entryIndexByFrequencyCmp, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = call i32 @qsort_arg(i32* %54, i32 %57, i32 4, i32 %58, %struct.TYPE_8__* %59)
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %122, %53
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %125

68:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %85, %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = load i64, i64* @GIN_FALSE, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 10
  %77 = load i64*, i64** %76, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %77, i64 %83
  store i64 %74, i64* %84, align 8
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %69

88:                                               ; preds = %69
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %109, %88
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %91
  %98 = load i64, i64* @GIN_MAYBE, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 10
  %101 = load i64*, i64** %100, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %101, i64 %107
  store i64 %98, i64* %108, align 8
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %91

112:                                              ; preds = %91
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 4
  %115 = load i64 (%struct.TYPE_8__*)*, i64 (%struct.TYPE_8__*)** %114, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %117 = call i64 %115(%struct.TYPE_8__* %116)
  %118 = load i64, i64* @GIN_FALSE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %125

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %61

125:                                              ; preds = %120, %61
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @MemoryContextSwitchTo(i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %136, %139
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 4
  %148 = trunc i64 %147 to i32
  %149 = call i8* @palloc(i32 %148)
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 8
  store i32* %150, i32** %152, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = mul i64 %156, 4
  %158 = trunc i64 %157 to i32
  %159 = call i8* @palloc(i32 %158)
  %160 = bitcast i8* %159 to i32*
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 9
  store i32* %160, i32** %162, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %163

163:                                              ; preds = %188, %125
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %191

169:                                              ; preds = %163
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 7
  %172 = load i32*, i32** %171, align 8
  %173 = load i32*, i32** %10, align 8
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %172, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 8
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %181, i32* %187, align 4
  br label %188

188:                                              ; preds = %169
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %163

191:                                              ; preds = %163
  store i32 0, i32* %8, align 4
  br label %192

192:                                              ; preds = %217, %191
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %220

198:                                              ; preds = %192
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 7
  %201 = load i32*, i32** %200, align 8
  %202 = load i32*, i32** %10, align 8
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %9, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %201, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 9
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %210, i32* %216, align 4
  br label %217

217:                                              ; preds = %198
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %192

220:                                              ; preds = %192
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @MemoryContextReset(i32 %223)
  br label %247

225:                                              ; preds = %3
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @MemoryContextSwitchTo(i32 %228)
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 5
  store i32 1, i32* %231, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 6
  store i32 0, i32* %233, align 4
  %234 = call i8* @palloc(i32 4)
  %235 = bitcast i8* %234 to i32*
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 8
  store i32* %235, i32** %237, align 8
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 7
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 8
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  store i32 %242, i32* %246, align 4
  br label %247

247:                                              ; preds = %225, %220
  %248 = load i32, i32* %7, align 4
  %249 = call i32 @MemoryContextSwitchTo(i32 %248)
  ret void
}

declare dso_local i32 @ItemPointerSetMin(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @qsort_arg(i32*, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
