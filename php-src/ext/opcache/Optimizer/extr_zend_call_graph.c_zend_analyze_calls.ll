; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_call_graph.c_zend_analyze_calls.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_call_graph.c_zend_analyze_calls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32, i32 }

@use_heap = common dso_local global i32 0, align 4
@ZEND_CALL_TREE = common dso_local global i64 0, align 8
@ZEND_INTERNAL_FUNCTION = common dso_local global i32 0, align 4
@ZEND_FUNC_HAS_CALLS = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zend_analyze_calls(i32** %0, i32* %1, i64 %2, %struct.TYPE_19__* %3, %struct.TYPE_22__* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_23__**, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_22__* %4, %struct.TYPE_22__** %10, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %11, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i64 %26
  store %struct.TYPE_20__* %27, %struct.TYPE_20__** %12, align 8
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* @use_heap, align 4
  %29 = call i32 @ALLOCA_FLAG(i32 %28)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @use_heap, align 4
  %38 = call %struct.TYPE_23__** @do_alloca(i32 %36, i32 %37)
  store %struct.TYPE_23__** %38, %struct.TYPE_23__*** %16, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %14, align 8
  br label %39

39:                                               ; preds = %192, %5
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %42 = icmp ne %struct.TYPE_20__* %40, %41
  br i1 %42, label %43, label %195

43:                                               ; preds = %39
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %192 [
    i32 145, label %47
    i32 143, label %47
    i32 141, label %47
    i32 144, label %135
    i32 142, label %135
    i32 146, label %135
    i32 139, label %135
    i32 140, label %135
    i32 150, label %143
    i32 148, label %143
    i32 147, label %143
    i32 149, label %143
    i32 133, label %163
    i32 131, label %163
    i32 132, label %163
    i32 130, label %163
    i32 137, label %163
    i32 136, label %163
    i32 129, label %163
    i32 128, label %163
    i32 134, label %163
    i32 138, label %185
    i32 135, label %185
  ]

47:                                               ; preds = %43, %43, %43
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %49 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %16, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %49, i64 %51
  store %struct.TYPE_23__* %48, %struct.TYPE_23__** %52, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %56 = call %struct.TYPE_21__* @zend_optimizer_get_called_func(i32* %53, %struct.TYPE_19__* %54, %struct.TYPE_20__* %55)
  store %struct.TYPE_21__* %56, %struct.TYPE_21__** %13, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %58 = icmp ne %struct.TYPE_21__* %57, null
  br i1 %58, label %59, label %131

59:                                               ; preds = %47
  %60 = load i32**, i32*** %6, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = add i64 64, %66
  %68 = trunc i64 %67 to i32
  %69 = call %struct.TYPE_23__* @zend_arena_calloc(i32** %60, i32 1, i32 %68)
  store %struct.TYPE_23__* %69, %struct.TYPE_23__** %14, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 7
  store %struct.TYPE_19__* %70, %struct.TYPE_19__** %72, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 6
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %75, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %77, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 5
  store %struct.TYPE_21__* %78, %struct.TYPE_21__** %80, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %87, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 4
  store %struct.TYPE_23__* %88, %struct.TYPE_23__** %90, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 2
  store %struct.TYPE_23__* %91, %struct.TYPE_23__** %93, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* @ZEND_CALL_TREE, align 8
  %96 = and i64 %94, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %59
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 3
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %100, align 8
  br label %130

101:                                              ; preds = %59
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @ZEND_INTERNAL_FUNCTION, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 3
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %109, align 8
  br label %129

110:                                              ; preds = %101
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = call %struct.TYPE_22__* @ZEND_FUNC_INFO(i32* %112)
  store %struct.TYPE_22__* %113, %struct.TYPE_22__** %17, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %115 = icmp ne %struct.TYPE_22__* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %118, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 3
  store %struct.TYPE_23__* %119, %struct.TYPE_23__** %121, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  store %struct.TYPE_23__* %122, %struct.TYPE_23__** %124, align 8
  br label %128

125:                                              ; preds = %110
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 3
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %127, align 8
  br label %128

128:                                              ; preds = %125, %116
  br label %129

129:                                              ; preds = %128, %107
  br label %130

130:                                              ; preds = %129, %98
  br label %132

131:                                              ; preds = %47
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %14, align 8
  br label %132

132:                                              ; preds = %131, %130
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  br label %192

135:                                              ; preds = %43, %43, %43, %43, %43
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %137 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %16, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %137, i64 %139
  store %struct.TYPE_23__* %136, %struct.TYPE_23__** %140, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %14, align 8
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %15, align 4
  br label %192

143:                                              ; preds = %43, %43, %43, %43
  %144 = load i32, i32* @ZEND_FUNC_HAS_CALLS, align 4
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %150 = icmp ne %struct.TYPE_23__* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 2
  store %struct.TYPE_20__* %152, %struct.TYPE_20__** %154, align 8
  br label %155

155:                                              ; preds = %151, %143
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %15, align 4
  %158 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %16, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %158, i64 %160
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %161, align 8
  store %struct.TYPE_23__* %162, %struct.TYPE_23__** %14, align 8
  br label %192

163:                                              ; preds = %43, %43, %43, %43, %43, %43, %43, %43, %43
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %165 = icmp ne %struct.TYPE_23__* %164, null
  br i1 %165, label %166, label %184

166:                                              ; preds = %163
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %18, align 8
  %171 = load i64, i64* %18, align 8
  %172 = icmp ugt i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %166
  %174 = load i64, i64* %18, align 8
  %175 = add i64 %174, -1
  store i64 %175, i64* %18, align 8
  br label %176

176:                                              ; preds = %173, %166
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = load i64, i64* %18, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  store %struct.TYPE_20__* %177, %struct.TYPE_20__** %183, align 8
  br label %184

184:                                              ; preds = %176, %163
  br label %192

185:                                              ; preds = %43, %43
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %187 = icmp ne %struct.TYPE_23__* %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  store i32 -1, i32* %190, align 8
  br label %191

191:                                              ; preds = %188, %185
  br label %192

192:                                              ; preds = %43, %191, %184, %155, %135, %132
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 1
  store %struct.TYPE_20__* %194, %struct.TYPE_20__** %11, align 8
  br label %39

195:                                              ; preds = %39
  %196 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %16, align 8
  %197 = load i32, i32* @use_heap, align 4
  %198 = call i32 @free_alloca(%struct.TYPE_23__** %196, i32 %197)
  %199 = load i32, i32* @SUCCESS, align 4
  ret i32 %199
}

declare dso_local i32 @ALLOCA_FLAG(i32) #1

declare dso_local %struct.TYPE_23__** @do_alloca(i32, i32) #1

declare dso_local %struct.TYPE_21__* @zend_optimizer_get_called_func(i32*, %struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_23__* @zend_arena_calloc(i32**, i32, i32) #1

declare dso_local %struct.TYPE_22__* @ZEND_FUNC_INFO(i32*) #1

declare dso_local i32 @free_alloca(%struct.TYPE_23__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
