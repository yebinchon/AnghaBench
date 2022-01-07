; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinpath.c_generate_mergejoin_paths.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinpath.c_generate_mergejoin_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i32 }

@JOIN_UNIQUE_OUTER = common dso_local global i64 0, align 8
@JOIN_UNIQUE_INNER = common dso_local global i64 0, align 8
@JOIN_INNER = common dso_local global i64 0, align 8
@NIL = common dso_local global i32* null, align 8
@JOIN_FULL = common dso_local global i64 0, align 8
@TOTAL_COST = common dso_local global i32 0, align 4
@STARTUP_COST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_17__*, i64, %struct.TYPE_18__*, i32, %struct.TYPE_17__*, i32*, i32)* @generate_mergejoin_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_mergejoin_paths(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, %struct.TYPE_17__* %3, i64 %4, %struct.TYPE_18__* %5, i32 %6, %struct.TYPE_17__* %7, i32* %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_17__*, align 8
  %25 = alloca %struct.TYPE_17__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_17__*, align 8
  %30 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %14, align 8
  store i64 %4, i64* %15, align 8
  store %struct.TYPE_18__* %5, %struct.TYPE_18__** %16, align 8
  store i32 %6, i32* %17, align 4
  store %struct.TYPE_17__* %7, %struct.TYPE_17__** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 %9, i32* %20, align 4
  %31 = load i64, i64* %15, align 8
  store i64 %31, i64* %26, align 8
  %32 = load i64, i64* %15, align 8
  %33 = load i64, i64* @JOIN_UNIQUE_OUTER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %10
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* @JOIN_UNIQUE_INNER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %10
  %40 = load i64, i64* @JOIN_INNER, align 8
  store i64 %40, i64* %15, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32*, i32** %11, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32* @find_mergeclauses_for_outer_pathkeys(i32* %42, i32 %45, i32* %48)
  store i32* %49, i32** %21, align 8
  %50 = load i32*, i32** %21, align 8
  %51 = load i32*, i32** @NIL, align 8
  %52 = icmp eq i32* %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %41
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* @JOIN_FULL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %59

58:                                               ; preds = %53
  br label %244

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59, %41
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i32*, i32** %21, align 8
  %65 = call i32 @list_length(i32* %64)
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @list_length(i32* %68)
  %70 = icmp ne i32 %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %244

72:                                               ; preds = %63, %60
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %21, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32* @make_inner_pathkeys_for_merge(i32* %73, i32* %74, i32 %77)
  store i32* %78, i32** %22, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %83 = load i32*, i32** %19, align 8
  %84 = load i32*, i32** %21, align 8
  %85 = load i32*, i32** @NIL, align 8
  %86 = load i32*, i32** %22, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %89 = load i32, i32* %20, align 4
  %90 = call i32 @try_mergejoin_path(i32* %79, %struct.TYPE_16__* %80, %struct.TYPE_17__* %81, %struct.TYPE_17__* %82, i32* %83, i32* %84, i32* %85, i32* %86, i64 %87, %struct.TYPE_18__* %88, i32 %89)
  %91 = load i64, i64* %26, align 8
  %92 = load i64, i64* @JOIN_UNIQUE_INNER, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %72
  br label %244

95:                                               ; preds = %72
  %96 = load i32*, i32** %22, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @pathkeys_contained_in(i32* %96, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %103, %struct.TYPE_17__** %24, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %104, %struct.TYPE_17__** %25, align 8
  br label %106

105:                                              ; preds = %95
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %25, align 8
  br label %106

106:                                              ; preds = %105, %102
  %107 = load i32*, i32** %22, align 8
  %108 = call i32 @list_length(i32* %107)
  store i32 %108, i32* %27, align 4
  %109 = load i32, i32* %27, align 4
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32*, i32** %22, align 8
  %116 = call i32* @list_copy(i32* %115)
  store i32* %116, i32** %23, align 8
  br label %119

117:                                              ; preds = %111, %106
  %118 = load i32*, i32** %22, align 8
  store i32* %118, i32** %23, align 8
  br label %119

119:                                              ; preds = %117, %114
  %120 = load i32, i32* %27, align 4
  store i32 %120, i32* %28, align 4
  br label %121

121:                                              ; preds = %241, %119
  %122 = load i32, i32* %28, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %244

124:                                              ; preds = %121
  %125 = load i32*, i32** @NIL, align 8
  store i32* %125, i32** %30, align 8
  %126 = load i32*, i32** %23, align 8
  %127 = load i32, i32* %28, align 4
  %128 = call i32* @list_truncate(i32* %126, i32 %127)
  store i32* %128, i32** %23, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %23, align 8
  %133 = load i32, i32* @TOTAL_COST, align 4
  %134 = load i32, i32* %20, align 4
  %135 = call %struct.TYPE_17__* @get_cheapest_path_for_pathkeys(i32 %131, i32* %132, i32* null, i32 %133, i32 %134)
  store %struct.TYPE_17__* %135, %struct.TYPE_17__** %29, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %137 = icmp ne %struct.TYPE_17__* %136, null
  br i1 %137, label %138, label %177

138:                                              ; preds = %124
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %140 = icmp eq %struct.TYPE_17__* %139, null
  br i1 %140, label %147, label %141

141:                                              ; preds = %138
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %144 = load i32, i32* @TOTAL_COST, align 4
  %145 = call i64 @compare_path_costs(%struct.TYPE_17__* %142, %struct.TYPE_17__* %143, i32 %144)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %177

147:                                              ; preds = %141, %138
  %148 = load i32, i32* %28, align 4
  %149 = load i32, i32* %27, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %147
  %152 = load i32*, i32** %11, align 8
  %153 = load i32*, i32** %21, align 8
  %154 = load i32*, i32** %23, align 8
  %155 = call i32* @trim_mergeclauses_for_inner_pathkeys(i32* %152, i32* %153, i32* %154)
  store i32* %155, i32** %30, align 8
  %156 = load i32*, i32** %30, align 8
  %157 = load i32*, i32** @NIL, align 8
  %158 = icmp ne i32* %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @Assert(i32 %159)
  br label %163

161:                                              ; preds = %147
  %162 = load i32*, i32** %21, align 8
  store i32* %162, i32** %30, align 8
  br label %163

163:                                              ; preds = %161, %151
  %164 = load i32*, i32** %11, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %168 = load i32*, i32** %19, align 8
  %169 = load i32*, i32** %30, align 8
  %170 = load i32*, i32** @NIL, align 8
  %171 = load i32*, i32** @NIL, align 8
  %172 = load i64, i64* %15, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %174 = load i32, i32* %20, align 4
  %175 = call i32 @try_mergejoin_path(i32* %164, %struct.TYPE_16__* %165, %struct.TYPE_17__* %166, %struct.TYPE_17__* %167, i32* %168, i32* %169, i32* %170, i32* %171, i64 %172, %struct.TYPE_18__* %173, i32 %174)
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %176, %struct.TYPE_17__** %25, align 8
  br label %177

177:                                              ; preds = %163, %141, %124
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %23, align 8
  %182 = load i32, i32* @STARTUP_COST, align 4
  %183 = load i32, i32* %20, align 4
  %184 = call %struct.TYPE_17__* @get_cheapest_path_for_pathkeys(i32 %180, i32* %181, i32* null, i32 %182, i32 %183)
  store %struct.TYPE_17__* %184, %struct.TYPE_17__** %29, align 8
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %186 = icmp ne %struct.TYPE_17__* %185, null
  br i1 %186, label %187, label %236

187:                                              ; preds = %177
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %189 = icmp eq %struct.TYPE_17__* %188, null
  br i1 %189, label %196, label %190

190:                                              ; preds = %187
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %193 = load i32, i32* @STARTUP_COST, align 4
  %194 = call i64 @compare_path_costs(%struct.TYPE_17__* %191, %struct.TYPE_17__* %192, i32 %193)
  %195 = icmp slt i64 %194, 0
  br i1 %195, label %196, label %236

196:                                              ; preds = %190, %187
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %199 = icmp ne %struct.TYPE_17__* %197, %198
  br i1 %199, label %200, label %234

200:                                              ; preds = %196
  %201 = load i32*, i32** %30, align 8
  %202 = load i32*, i32** @NIL, align 8
  %203 = icmp eq i32* %201, %202
  br i1 %203, label %204, label %221

204:                                              ; preds = %200
  %205 = load i32, i32* %28, align 4
  %206 = load i32, i32* %27, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %204
  %209 = load i32*, i32** %11, align 8
  %210 = load i32*, i32** %21, align 8
  %211 = load i32*, i32** %23, align 8
  %212 = call i32* @trim_mergeclauses_for_inner_pathkeys(i32* %209, i32* %210, i32* %211)
  store i32* %212, i32** %30, align 8
  %213 = load i32*, i32** %30, align 8
  %214 = load i32*, i32** @NIL, align 8
  %215 = icmp ne i32* %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @Assert(i32 %216)
  br label %220

218:                                              ; preds = %204
  %219 = load i32*, i32** %21, align 8
  store i32* %219, i32** %30, align 8
  br label %220

220:                                              ; preds = %218, %208
  br label %221

221:                                              ; preds = %220, %200
  %222 = load i32*, i32** %11, align 8
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %226 = load i32*, i32** %19, align 8
  %227 = load i32*, i32** %30, align 8
  %228 = load i32*, i32** @NIL, align 8
  %229 = load i32*, i32** @NIL, align 8
  %230 = load i64, i64* %15, align 8
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %232 = load i32, i32* %20, align 4
  %233 = call i32 @try_mergejoin_path(i32* %222, %struct.TYPE_16__* %223, %struct.TYPE_17__* %224, %struct.TYPE_17__* %225, i32* %226, i32* %227, i32* %228, i32* %229, i64 %230, %struct.TYPE_18__* %231, i32 %232)
  br label %234

234:                                              ; preds = %221, %196
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %235, %struct.TYPE_17__** %24, align 8
  br label %236

236:                                              ; preds = %234, %190, %177
  %237 = load i32, i32* %17, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  br label %244

240:                                              ; preds = %236
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %28, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %28, align 4
  br label %121

244:                                              ; preds = %58, %71, %94, %239, %121
  ret void
}

declare dso_local i32* @find_mergeclauses_for_outer_pathkeys(i32*, i32, i32*) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32* @make_inner_pathkeys_for_merge(i32*, i32*, i32) #1

declare dso_local i32 @try_mergejoin_path(i32*, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32*, i32*, i32*, i32*, i64, %struct.TYPE_18__*, i32) #1

declare dso_local i64 @pathkeys_contained_in(i32*, i32) #1

declare dso_local i32* @list_copy(i32*) #1

declare dso_local i32* @list_truncate(i32*, i32) #1

declare dso_local %struct.TYPE_17__* @get_cheapest_path_for_pathkeys(i32, i32*, i32*, i32, i32) #1

declare dso_local i64 @compare_path_costs(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32* @trim_mergeclauses_for_inner_pathkeys(i32*, i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
