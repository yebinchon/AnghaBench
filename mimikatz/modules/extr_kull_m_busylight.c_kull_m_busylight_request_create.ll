; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_busylight.c_kull_m_busylight_request_create.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_busylight.c_kull_m_busylight_request_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@BUSYLIGHT_OUTPUT_REPORT_SIZE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i32] [i32 99, i32 111, i32 117, i32 110, i32 116, i32 61, i32 37, i32 117, i32 32, i32 40, i32 109, i32 97, i32 120, i32 32, i32 105, i32 115, i32 32, i32 55, i32 41, i32 10, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_busylight_request_create(%struct.TYPE_5__* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @BUSYLIGHT_OUTPUT_REPORT_SIZE, align 4
  %14 = load i32*, i32** %8, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @LPTR, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @LocalAlloc(i32 %15, i32 %17)
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32**, i32*** %7, align 8
  store i32* %19, i32** %20, align 8
  %21 = icmp ne i32* %19, null
  br i1 %21, label %22, label %223

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 7
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @PRINT_ERROR(i8* bitcast ([21 x i32]* @.str to i8*), i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %161, %28
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @min(i32 %31, i32 7)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %164

34:                                               ; preds = %29
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 240
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  br label %58

50:                                               ; preds = %34
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, 16
  br label %58

58:                                               ; preds = %50, %43
  %59 = phi i32 [ %49, %43 ], [ %57, %50 ]
  %60 = load i32**, i32*** %7, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = mul nsw i32 %62, 8
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32 %59, i32* %66, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32**, i32*** %7, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = mul nsw i32 %75, 8
  %77 = add nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  store i32 %72, i32* %79, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32**, i32*** %7, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = mul nsw i32 %89, 8
  %91 = add nsw i32 %90, 3
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  store i32 %86, i32* %93, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32**, i32*** %7, align 8
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = mul nsw i32 %103, 8
  %105 = add nsw i32 %104, 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  store i32 %100, i32* %107, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32**, i32*** %7, align 8
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = mul nsw i32 %117, 8
  %119 = add nsw i32 %118, 5
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  store i32 %114, i32* %121, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32**, i32*** %7, align 8
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = mul nsw i32 %130, 8
  %132 = add nsw i32 %131, 6
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  store i32 %127, i32* %134, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32**, i32*** %7, align 8
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = mul nsw i32 %143, 8
  %145 = add nsw i32 %144, 7
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  store i32 %140, i32* %147, align 4
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load i32**, i32*** %7, align 8
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = mul nsw i32 %156, 8
  %158 = add nsw i32 %157, 8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  store i32 %153, i32* %160, align 4
  br label %161

161:                                              ; preds = %58
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %29

164:                                              ; preds = %29
  %165 = load i32**, i32*** %7, align 8
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 57
  store i32 4, i32* %167, align 4
  %168 = load i32**, i32*** %7, align 8
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 58
  store i32 4, i32* %170, align 4
  %171 = load i32**, i32*** %7, align 8
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 59
  store i32 85, i32* %173, align 4
  %174 = load i32**, i32*** %7, align 8
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 62
  store i32 255, i32* %176, align 4
  %177 = load i32**, i32*** %7, align 8
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 61
  store i32 255, i32* %179, align 4
  %180 = load i32**, i32*** %7, align 8
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 60
  store i32 255, i32* %182, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %183

183:                                              ; preds = %198, %164
  %184 = load i32, i32* %10, align 4
  %185 = load i32*, i32** %8, align 8
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %186, 2
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %201

189:                                              ; preds = %183
  %190 = load i32**, i32*** %7, align 8
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %11, align 4
  br label %198

198:                                              ; preds = %189
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %10, align 4
  br label %183

201:                                              ; preds = %183
  %202 = load i32, i32* %11, align 4
  %203 = sdiv i32 %202, 256
  %204 = load i32**, i32*** %7, align 8
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 63
  store i32 %203, i32* %206, align 4
  %207 = load i32, i32* %11, align 4
  %208 = srem i32 %207, 256
  %209 = load i32**, i32*** %7, align 8
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 64
  store i32 %208, i32* %211, align 4
  %212 = load i32, i32* @TRUE, align 4
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %201
  %216 = load i32**, i32*** %7, align 8
  %217 = load i32*, i32** %216, align 8
  %218 = call i64 @LocalFree(i32* %217)
  %219 = inttoptr i64 %218 to i32*
  %220 = load i32**, i32*** %7, align 8
  store i32* %219, i32** %220, align 8
  %221 = load i32*, i32** %8, align 8
  store i32 0, i32* %221, align 4
  br label %222

222:                                              ; preds = %215, %201
  br label %223

223:                                              ; preds = %222, %4
  %224 = load i32, i32* %9, align 4
  ret i32 %224
}

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
