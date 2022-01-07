; ModuleID = '/home/carl/AnghaBench/netdata/web/api/queries/extr_query.c_rrdr_disable_not_selected_dimensions.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/queries/extr_query.c_rrdr_disable_not_selected_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32, i32 }

@RRDR_OPTION_MATCH_IDS = common dso_local global i32 0, align 4
@RRDR_OPTION_MATCH_NAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c",|\09\0D\0A\0C\0B\00", align 1
@SIMPLE_PATTERN_EXACT = common dso_local global i32 0, align 4
@RRDR_DIMENSION_SELECTED = common dso_local global i32 0, align 4
@RRDR_DIMENSION_HIDDEN = common dso_local global i32 0, align 4
@RRDR_OPTION_NONZERO = common dso_local global i32 0, align 4
@RRDR_DIMENSION_NONZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i8*)* @rrdr_disable_not_selected_dimensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rrdr_disable_not_selected_dimensions(%struct.TYPE_5__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = call i32 @rrdset_check_rdlock(%struct.TYPE_7__* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 42
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i1 [ false, %24 ], [ %35, %30 ]
  br label %38

38:                                               ; preds = %36, %20, %3
  %39 = phi i1 [ true, %20 ], [ true, %3 ], [ %37, %36 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %254

44:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @RRDR_OPTION_MATCH_IDS, align 4
  %47 = and i32 %45, %46
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @RRDR_OPTION_MATCH_NAMES, align 4
  %54 = and i32 %52, %53
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i1 [ false, %58 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  %68 = call i64 @likely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %65
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %74 = call i32* @simple_pattern_create(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %73)
  store i32* %74, i32** %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %11, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %10, align 8
  br label %80

80:                                               ; preds = %198, %71
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = icmp ne %struct.TYPE_6__* %81, null
  br i1 %82, label %83, label %204

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32*, i32** %9, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @simple_pattern_matches(i32* %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %86, %83
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %167

96:                                               ; preds = %93
  %97 = load i32*, i32** %9, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @simple_pattern_matches(i32* %97, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %167

103:                                              ; preds = %96, %86
  %104 = load i32, i32* @RRDR_DIMENSION_SELECTED, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %104
  store i32 %111, i32* %109, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %11, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @RRDR_DIMENSION_HIDDEN, align 4
  %119 = and i32 %117, %118
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %103
  %123 = load i32, i32* @RRDR_DIMENSION_HIDDEN, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* %11, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %124
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %122, %103
  %133 = load i64, i64* %12, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %12, align 8
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @RRDR_OPTION_NONZERO, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %132
  %144 = load i32, i32* @RRDR_DIMENSION_NONZERO, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %11, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %144
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %143, %132
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %11, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @RRDR_DIMENSION_NONZERO, align 4
  %160 = and i32 %158, %159
  %161 = call i64 @likely(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %152
  %164 = load i64, i64* %13, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %13, align 8
  br label %166

166:                                              ; preds = %163, %152
  br label %197

167:                                              ; preds = %96, %93
  %168 = load i32, i32* @RRDR_DIMENSION_HIDDEN, align 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %11, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %168
  store i32 %175, i32* %173, align 4
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* %11, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @RRDR_DIMENSION_SELECTED, align 4
  %183 = and i32 %181, %182
  %184 = call i64 @unlikely(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %167
  %187 = load i32, i32* @RRDR_DIMENSION_SELECTED, align 4
  %188 = xor i32 %187, -1
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* %11, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, %188
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %186, %167
  br label %197

197:                                              ; preds = %196, %166
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %11, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %11, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  store %struct.TYPE_6__* %203, %struct.TYPE_6__** %10, align 8
  br label %80

204:                                              ; preds = %80
  %205 = load i32*, i32** %9, align 8
  %206 = call i32 @simple_pattern_free(i32* %205)
  %207 = load i64, i64* %13, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %204
  %210 = load i64, i64* %12, align 8
  %211 = icmp ne i64 %210, 0
  br label %212

212:                                              ; preds = %209, %204
  %213 = phi i1 [ false, %204 ], [ %211, %209 ]
  %214 = zext i1 %213 to i32
  %215 = call i64 @unlikely(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %254

217:                                              ; preds = %212
  store i64 0, i64* %11, align 8
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  store %struct.TYPE_6__* %222, %struct.TYPE_6__** %10, align 8
  br label %223

223:                                              ; preds = %247, %217
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %225 = icmp ne %struct.TYPE_6__* %224, null
  br i1 %225, label %226, label %253

226:                                              ; preds = %223
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* %11, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @RRDR_DIMENSION_SELECTED, align 4
  %234 = and i32 %232, %233
  %235 = call i64 @unlikely(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %226
  %238 = load i32, i32* @RRDR_DIMENSION_NONZERO, align 4
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load i64, i64* %11, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %238
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %237, %226
  br label %247

247:                                              ; preds = %246
  %248 = load i64, i64* %11, align 8
  %249 = add nsw i64 %248, 1
  store i64 %249, i64* %11, align 8
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %251, align 8
  store %struct.TYPE_6__* %252, %struct.TYPE_6__** %10, align 8
  br label %223

253:                                              ; preds = %223
  br label %254

254:                                              ; preds = %43, %253, %212
  ret void
}

declare dso_local i32 @rrdset_check_rdlock(%struct.TYPE_7__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @simple_pattern_create(i8*, i8*, i32) #1

declare dso_local i64 @simple_pattern_matches(i32*, i32) #1

declare dso_local i32 @simple_pattern_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
