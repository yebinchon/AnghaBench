; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rand-primegen.c_primegen_count.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rand-primegen.c_primegen_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64*, i32, i64, i32**, i32 }

@B32 = common dso_local global i32 0, align 4
@pop = common dso_local global i32* null, align 8
@B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @primegen_count(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %229, %2
  br label %11

11:                                               ; preds = %31, %10
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %19, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i64, i64* %5, align 8
  ret i64 %30

31:                                               ; preds = %16
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %5, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  br label %11

38:                                               ; preds = %11
  store i32 0, i32* %9, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %113, %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @B32, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1920
  %51 = load i64, i64* %4, align 8
  %52 = icmp slt i64 %50, %51
  br label %53

53:                                               ; preds = %46, %42
  %54 = phi i1 [ false, %42 ], [ %52, %46 ]
  br i1 %54, label %55, label %120

55:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %110, %55
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 16
  br i1 %58, label %59, label %113

59:                                               ; preds = %56
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 4
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %70, -1
  store i32 %71, i32* %8, align 4
  %72 = load i32*, i32** @pop, align 8
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, 255
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = ashr i32 %80, 8
  store i32 %81, i32* %8, align 4
  %82 = load i32*, i32** @pop, align 8
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 255
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = ashr i32 %90, 8
  store i32 %91, i32* %8, align 4
  %92 = load i32*, i32** @pop, align 8
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, 255
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = ashr i32 %100, 8
  store i32 %101, i32* %8, align 4
  %102 = load i32*, i32** @pop, align 8
  %103 = load i32, i32* %8, align 4
  %104 = and i32 %103, 255
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %59
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %56

113:                                              ; preds = %56
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 1920
  store i64 %117, i64* %115, align 8
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %42

120:                                              ; preds = %53
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %5, align 8
  %127 = add nsw i64 %126, %125
  store i64 %127, i64* %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @B32, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %229

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %216, %131
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* @B, align 4
  %137 = mul nsw i32 %136, 60
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %135, %138
  %140 = load i64, i64* %4, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %228

142:                                              ; preds = %132
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %144 = call i32 @primegen_sieve(%struct.TYPE_5__* %143)
  %145 = load i32, i32* @B, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, %145
  store i32 %149, i32* %147, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %213, %142
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 16
  br i1 %152, label %153, label %216

153:                                              ; preds = %150
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %209, %153
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @B32, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %212

158:                                              ; preds = %154
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 4
  %161 = load i32**, i32*** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = xor i32 %169, -1
  store i32 %170, i32* %8, align 4
  %171 = load i32*, i32** @pop, align 8
  %172 = load i32, i32* %8, align 4
  %173 = and i32 %172, 255
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %8, align 4
  %180 = ashr i32 %179, 8
  store i32 %180, i32* %8, align 4
  %181 = load i32*, i32** @pop, align 8
  %182 = load i32, i32* %8, align 4
  %183 = and i32 %182, 255
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %8, align 4
  %190 = ashr i32 %189, 8
  store i32 %190, i32* %8, align 4
  %191 = load i32*, i32** @pop, align 8
  %192 = load i32, i32* %8, align 4
  %193 = and i32 %192, 255
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %8, align 4
  %200 = ashr i32 %199, 8
  store i32 %200, i32* %8, align 4
  %201 = load i32*, i32** @pop, align 8
  %202 = load i32, i32* %8, align 4
  %203 = and i32 %202, 255
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %9, align 4
  br label %209

209:                                              ; preds = %158
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %6, align 4
  br label %154

212:                                              ; preds = %154
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %150

216:                                              ; preds = %150
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = load i64, i64* %5, align 8
  %220 = add nsw i64 %219, %218
  store i64 %220, i64* %5, align 8
  %221 = load i32, i32* @B, align 4
  %222 = mul nsw i32 %221, 60
  %223 = sext i32 %222 to i64
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %226, %223
  store i64 %227, i64* %225, align 8
  br label %132

228:                                              ; preds = %132
  br label %229

229:                                              ; preds = %228, %120
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %231 = call i32 @primegen_fill(%struct.TYPE_5__* %230)
  br label %10
}

declare dso_local i32 @primegen_sieve(%struct.TYPE_5__*) #1

declare dso_local i32 @primegen_fill(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
