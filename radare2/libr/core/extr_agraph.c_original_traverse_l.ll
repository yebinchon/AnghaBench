; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_original_traverse_l.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_original_traverse_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32** }
%struct.TYPE_12__ = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*, i32*, i32)* @original_traverse_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @original_traverse_l(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %28

23:                                               ; preds = %4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi i32 [ 0, %22 ], [ %27, %23 ]
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %261, %28
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = icmp sge i32 %43, 0
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ false, %39 ], [ %44, %42 ]
  br label %47

47:                                               ; preds = %45, %33
  %48 = phi i1 [ true, %33 ], [ %46, %45 ]
  br i1 %48, label %49, label %263

49:                                               ; preds = %47
  store i32* null, i32** %14, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %15, align 8
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %93, %49
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %51, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load i32*, i32** %14, align 8
  %63 = icmp ne i32* %62, null
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %61, %50
  %66 = phi i1 [ false, %50 ], [ %64, %61 ]
  br i1 %66, label %67, label %96

67:                                               ; preds = %65
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %16, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = call %struct.TYPE_12__* @get_anode(i32* %80)
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %17, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %83 = icmp ne %struct.TYPE_12__* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %67
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %12, align 4
  %91 = load i32*, i32** %16, align 8
  store i32* %91, i32** %14, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %15, align 8
  br label %93

93:                                               ; preds = %89, %84, %67
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %50

96:                                               ; preds = %65
  %97 = load i32*, i32** %14, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %108, label %99

99:                                               ; preds = %96
  store i32 0, i32* %11, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %99, %96
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32*, i32** %14, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @place_sequence(%struct.TYPE_13__* %109, i32 %110, i32* null, i32* %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %129, %108
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %12, align 4
  %120 = sub nsw i32 %119, 1
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  %128 = call i32 @set_dist_nodes(%struct.TYPE_13__* %123, i32 %124, i32 %125, i32 %127)
  br label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %117

132:                                              ; preds = %117
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %12, align 4
  %136 = sub nsw i32 %135, 1
  %137 = call i64 @is_valid_pos(%struct.TYPE_13__* %133, i32 %134, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %132
  %140 = load i32*, i32** %14, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %12, align 4
  %146 = sub nsw i32 %145, 1
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @set_dist_nodes(%struct.TYPE_13__* %143, i32 %144, i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %142, %139, %132
  br label %152

152:                                              ; preds = %243, %151
  %153 = load i32*, i32** %14, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %245

155:                                              ; preds = %152
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %157 = load i32*, i32** %14, align 8
  %158 = call i32* @get_right_dummy(%struct.TYPE_13__* %156, i32* %157)
  store i32* %158, i32** %18, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %19, align 8
  %159 = load i32*, i32** %14, align 8
  %160 = call %struct.TYPE_12__* @get_anode(i32* %159)
  store %struct.TYPE_12__* %160, %struct.TYPE_12__** %15, align 8
  %161 = load i32*, i32** %18, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %215, label %163

163:                                              ; preds = %155
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %12, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load i32*, i32** %14, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @place_sequence(%struct.TYPE_13__* %177, i32 %178, i32* %179, i32* null, i32 %180, i32 %181, i32 %182)
  %184 = load i32, i32* %11, align 4
  store i32 %184, i32* %10, align 4
  br label %185

185:                                              ; preds = %197, %163
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %12, align 4
  %188 = sub nsw i32 %187, 1
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %185
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 1
  %196 = call i32 @set_dist_nodes(%struct.TYPE_13__* %191, i32 %192, i32 %193, i32 %195)
  br label %197

197:                                              ; preds = %190
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %10, align 4
  br label %185

200:                                              ; preds = %185
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %11, align 4
  %204 = call i64 @is_valid_pos(%struct.TYPE_13__* %201, i32 %202, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %200
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @set_dist_nodes(%struct.TYPE_13__* %207, i32 %208, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %206, %200
  br label %243

215:                                              ; preds = %155
  %216 = load i32*, i32** %6, align 8
  %217 = load i32*, i32** %14, align 8
  %218 = call i32 @hash_get_int(i32* %216, i32* %217)
  %219 = load i32, i32* %8, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %242

221:                                              ; preds = %215
  %222 = load i32*, i32** %18, align 8
  %223 = call %struct.TYPE_12__* @get_anode(i32* %222)
  store %struct.TYPE_12__* %223, %struct.TYPE_12__** %19, align 8
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  store i32 %230, i32* %12, align 4
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %232 = load i32, i32* %9, align 4
  %233 = load i32*, i32** %14, align 8
  %234 = load i32*, i32** %18, align 8
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* %12, align 4
  %238 = call i32 @place_sequence(%struct.TYPE_13__* %231, i32 %232, i32* %233, i32* %234, i32 %235, i32 %236, i32 %237)
  %239 = load i32*, i32** %7, align 8
  %240 = load i32*, i32** %14, align 8
  %241 = call i32 @hash_set(i32* %239, i32* %240, i32 1)
  br label %242

242:                                              ; preds = %221, %215
  br label %243

243:                                              ; preds = %242, %214
  %244 = load i32*, i32** %18, align 8
  store i32* %244, i32** %14, align 8
  br label %152

245:                                              ; preds = %152
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %8, align 4
  %249 = load i32*, i32** %6, align 8
  %250 = load i32*, i32** %7, align 8
  %251 = call i32 @adjust_directions(%struct.TYPE_13__* %246, i32 %247, i32 %248, i32* %249, i32* %250)
  br label %252

252:                                              ; preds = %245
  %253 = load i32, i32* %8, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load i32, i32* %9, align 4
  %257 = add nsw i32 %256, 1
  br label %261

258:                                              ; preds = %252
  %259 = load i32, i32* %9, align 4
  %260 = sub nsw i32 %259, 1
  br label %261

261:                                              ; preds = %258, %255
  %262 = phi i32 [ %257, %255 ], [ %260, %258 ]
  store i32 %262, i32* %9, align 4
  br label %30

263:                                              ; preds = %47
  ret void
}

declare dso_local %struct.TYPE_12__* @get_anode(i32*) #1

declare dso_local i32 @place_sequence(%struct.TYPE_13__*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @set_dist_nodes(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i64 @is_valid_pos(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32* @get_right_dummy(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @hash_get_int(i32*, i32*) #1

declare dso_local i32 @hash_set(i32*, i32*, i32) #1

declare dso_local i32 @adjust_directions(%struct.TYPE_13__*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
