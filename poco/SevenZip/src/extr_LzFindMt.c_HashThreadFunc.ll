; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_LzFindMt.c_HashThreadFunc.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_LzFindMt.c_HashThreadFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32*, i32 (i32, i32, i64, i64, i32*, i32, i32)*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, i32, i64, i64, i64 }

@kMtMaxValForNormalize = common dso_local global i64 0, align 8
@kMtHashBlockSize = common dso_local global i32 0, align 4
@kMtHashNumBlocksMask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HashThreadFunc(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 4
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %3, align 8
  br label %13

13:                                               ; preds = %226, %1
  store i32 0, i32* %4, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 8
  %16 = call i32 @Event_Wait(i32* %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 7
  %19 = call i32 @Event_Set(i32* %18)
  br label %20

20:                                               ; preds = %211, %45, %13
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  ret void

26:                                               ; preds = %20
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 4
  %37 = call i32 @Event_Set(i32* %36)
  br label %226

38:                                               ; preds = %26
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %5, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = call i64 @MatchFinder_NeedMove(%struct.TYPE_14__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %38
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = call i32 @CriticalSection_Enter(i32* %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = call i32 @CriticalSection_Enter(i32* %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = call i32* @MatchFinder_GetPointerToCurrentPos(%struct.TYPE_14__* %54)
  store i32* %55, i32** %6, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = call i32 @MatchFinder_MoveBlock(%struct.TYPE_14__* %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = call i32* @MatchFinder_GetPointerToCurrentPos(%struct.TYPE_14__* %58)
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = ptrtoint i32* %60 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = ptrtoint i32* %72 to i64
  %75 = ptrtoint i32* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = call i32 @CriticalSection_Leave(i32* %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  %91 = call i32 @CriticalSection_Leave(i32* %90)
  br label %20

92:                                               ; preds = %38
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = call i32 @Semaphore_Wait(i32* %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = call i32 @MatchFinder_ReadIfRequired(%struct.TYPE_14__* %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @kMtMaxValForNormalize, align 8
  %102 = load i32, i32* @kMtHashBlockSize, align 4
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %101, %103
  %105 = icmp sgt i64 %100, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %92
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = sub nsw i64 %109, %113
  %115 = sub nsw i64 %114, 1
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %8, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @MatchFinder_ReduceOffsets(%struct.TYPE_14__* %117, i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 8
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 1
  %132 = call i32 @MatchFinder_Normalize3(i32 %120, i64 %127, i64 %131)
  br label %133

133:                                              ; preds = %106, %92
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* @kMtHashNumBlocksMask, align 4
  %140 = and i32 %137, %139
  %141 = load i32, i32* @kMtHashBlockSize, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %136, i64 %143
  store i32* %144, i32** %9, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %148, %151
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %10, align 4
  %154 = load i32*, i32** %9, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  store i32 2, i32* %155, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = icmp sge i32 %159, %162
  br i1 %163, label %164, label %211

164:                                              ; preds = %133
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %165, %168
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @kMtHashBlockSize, align 4
  %173 = sub nsw i32 %172, 2
  %174 = icmp sgt i32 %171, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %164
  %176 = load i32, i32* @kMtHashBlockSize, align 4
  %177 = sub nsw i32 %176, 2
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %175, %164
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 3
  %181 = load i32 (i32, i32, i64, i64, i32*, i32, i32)*, i32 (i32, i32, i64, i64, i32*, i32, i32)** %180, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 8
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 7
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %191, %194
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 6
  %198 = load i64, i64* %197, align 8
  %199 = load i32*, i32** %9, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = call i32 %181(i32 %184, i32 %188, i64 %195, i64 %198, i32* %200, i32 %201, i32 %204)
  %206 = load i32, i32* %10, align 4
  %207 = load i32*, i32** %9, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, %206
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %178, %133
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, %213
  store i64 %217, i64* %215, align 8
  %218 = load i32, i32* %10, align 4
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, %218
  store i32 %222, i32* %220, align 4
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = call i32 @Semaphore_Release1(i32* %224)
  br label %20

226:                                              ; preds = %31
  br label %13
}

declare dso_local i32 @Event_Wait(i32*) #1

declare dso_local i32 @Event_Set(i32*) #1

declare dso_local i64 @MatchFinder_NeedMove(%struct.TYPE_14__*) #1

declare dso_local i32 @CriticalSection_Enter(i32*) #1

declare dso_local i32* @MatchFinder_GetPointerToCurrentPos(%struct.TYPE_14__*) #1

declare dso_local i32 @MatchFinder_MoveBlock(%struct.TYPE_14__*) #1

declare dso_local i32 @CriticalSection_Leave(i32*) #1

declare dso_local i32 @Semaphore_Wait(i32*) #1

declare dso_local i32 @MatchFinder_ReadIfRequired(%struct.TYPE_14__*) #1

declare dso_local i32 @MatchFinder_ReduceOffsets(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @MatchFinder_Normalize3(i32, i64, i64) #1

declare dso_local i32 @Semaphore_Release1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
