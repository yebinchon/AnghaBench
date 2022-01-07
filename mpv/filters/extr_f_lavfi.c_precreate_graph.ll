; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_precreate_graph.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_precreate_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lavfi = type { i32, i32, i32, %struct.TYPE_7__**, i32, i64, i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"filter '%s' not found or failed to allocate\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"filter failed to initialize\0A\00", align 1
@MP_PIN_IN = common dso_local global i32 0, align 4
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"parsing the filter graph failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lavfi*, i32)* @precreate_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @precreate_graph(%struct.lavfi* %0, i32 %1) #0 {
  %3 = alloca %struct.lavfi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.lavfi* %0, %struct.lavfi** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %10 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %17 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = call i64 (...) @avfilter_graph_alloc()
  %19 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %20 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %19, i32 0, i32 5
  store i64 %18, i64* %20, align 8
  %21 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %22 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = call i32 (...) @abort() #3
  unreachable

27:                                               ; preds = %2
  %28 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %29 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %32 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %35 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @mp_set_avopts(i32 %30, i64 %33, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %165

40:                                               ; preds = %27
  %41 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %42 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %106

45:                                               ; preds = %40
  %46 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %47 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %50 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @avfilter_get_by_name(i32 %51)
  %53 = call %struct.TYPE_8__* @avfilter_graph_alloc_filter(i64 %48, i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %5, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = icmp ne %struct.TYPE_8__* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %45
  %57 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %58 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %59 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (%struct.lavfi*, i8*, ...) @MP_FATAL(%struct.lavfi* %57, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %165

62:                                               ; preds = %45
  %63 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %64 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %71 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @mp_set_avopts_pos(i32 %65, %struct.TYPE_8__* %66, i32 %69, i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %165

76:                                               ; preds = %62
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = call i64 @avfilter_init_str(%struct.TYPE_8__* %77, i32* null)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %82 = call i32 (%struct.lavfi*, i8*, ...) @MP_FATAL(%struct.lavfi* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %165

83:                                               ; preds = %76
  %84 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %85 = load i32, i32* @MP_PIN_IN, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @add_pads_direct(%struct.lavfi* %84, i32 %85, %struct.TYPE_8__* %86, i32 %89, i32 %92, i32 %93)
  %95 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %96 = load i32, i32* @MP_PIN_OUT, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @add_pads_direct(%struct.lavfi* %95, i32 %96, %struct.TYPE_8__* %97, i32 %100, i32 %103, i32 %104)
  br label %131

106:                                              ; preds = %40
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %107 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %108 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %111 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @avfilter_graph_parse2(i64 %109, i32 %112, i32** %6, i32** %7)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %117 = call i32 (%struct.lavfi*, i8*, ...) @MP_FATAL(%struct.lavfi* %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %165

118:                                              ; preds = %106
  %119 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %120 = load i32, i32* @MP_PIN_IN, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @add_pads(%struct.lavfi* %119, i32 %120, i32* %121, i32 %122)
  %124 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %125 = load i32, i32* @MP_PIN_OUT, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @add_pads(%struct.lavfi* %124, i32 %125, i32* %126, i32 %127)
  %129 = call i32 @avfilter_inout_free(i32** %6)
  %130 = call i32 @avfilter_inout_free(i32** %7)
  br label %131

131:                                              ; preds = %118, %83
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %155, %131
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %135 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %158

138:                                              ; preds = %132
  %139 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %140 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %139, i32 0, i32 3
  %141 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %141, i64 %143
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %152 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %138
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %132

158:                                              ; preds = %132
  %159 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %160 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %165

164:                                              ; preds = %158
  br label %174

165:                                              ; preds = %163, %115, %80, %75, %56, %39
  %166 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %167 = call i32 @free_graph(%struct.lavfi* %166)
  %168 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %169 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  %170 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %171 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @mp_filter_internal_mark_failed(i32 %172)
  br label %174

174:                                              ; preds = %165, %164
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @avfilter_graph_alloc(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @mp_set_avopts(i32, i64, i32) #1

declare dso_local %struct.TYPE_8__* @avfilter_graph_alloc_filter(i64, i32, i8*) #1

declare dso_local i32 @avfilter_get_by_name(i32) #1

declare dso_local i32 @MP_FATAL(%struct.lavfi*, i8*, ...) #1

declare dso_local i64 @mp_set_avopts_pos(i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @avfilter_init_str(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @add_pads_direct(%struct.lavfi*, i32, %struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i64 @avfilter_graph_parse2(i64, i32, i32**, i32**) #1

declare dso_local i32 @add_pads(%struct.lavfi*, i32, i32*, i32) #1

declare dso_local i32 @avfilter_inout_free(i32**) #1

declare dso_local i32 @free_graph(%struct.lavfi*) #1

declare dso_local i32 @mp_filter_internal_mark_failed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
