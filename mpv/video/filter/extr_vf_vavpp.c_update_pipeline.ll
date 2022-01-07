; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vavpp.c_update_pipeline.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vavpp.c_update_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i32, i32, %struct.TYPE_10__*, i64, %struct.TYPE_9__, i32, i32, i32* }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i64, i64, i32*, i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i64, i64, i32, i32 }

@VAProcColorStandardCount = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"vaQueryVideoProcPipelineCaps()\00", align 1
@MP_MODE_DEINT = common dso_local global i32 0, align 4
@MP_MODE_OUTPUT_FIELDS = common dso_local global i32 0, align 4
@MP_MODE_INTERLACED_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @update_pipeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pipeline(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %9 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %10 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %9, i32 0, i32 0
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %3, align 8
  %12 = load %struct.priv*, %struct.priv** %3, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 7
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load %struct.priv*, %struct.priv** %3, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.priv*, %struct.priv** %3, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.priv*, %struct.priv** %3, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %24, %1
  %35 = load %struct.priv*, %struct.priv** %3, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.priv*, %struct.priv** %3, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.priv*, %struct.priv** %3, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.priv*, %struct.priv** %3, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.priv*, %struct.priv** %3, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.priv*, %struct.priv** %3, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 5
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %34
  br label %190

58:                                               ; preds = %34
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %62 = load i64, i64* @VAProcColorStandardCount, align 8
  store i64 %62, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  %64 = load i64, i64* @VAProcColorStandardCount, align 8
  store i64 %64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 4
  %66 = load %struct.priv*, %struct.priv** %3, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %65, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 5
  %71 = load %struct.priv*, %struct.priv** %3, align 8
  %72 = getelementptr inbounds %struct.priv, %struct.priv* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %70, align 4
  %75 = load %struct.priv*, %struct.priv** %3, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.priv*, %struct.priv** %3, align 8
  %79 = getelementptr inbounds %struct.priv, %struct.priv* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @vaQueryVideoProcPipelineCaps(i32 %77, i32 %80, i32* %81, i32 %82, %struct.TYPE_11__* %6)
  store i32 %83, i32* %7, align 4
  %84 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %85 = call i32 @CHECK_VA_STATUS(%struct.mp_filter* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %58
  br label %190

88:                                               ; preds = %58
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.priv*, %struct.priv** %3, align 8
  %91 = getelementptr inbounds %struct.priv, %struct.priv* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 5
  store i32* %89, i32** %92, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.priv*, %struct.priv** %3, align 8
  %95 = getelementptr inbounds %struct.priv, %struct.priv* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.priv*, %struct.priv** %3, align 8
  %100 = getelementptr inbounds %struct.priv, %struct.priv* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  store i64 %98, i64* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.priv*, %struct.priv** %3, align 8
  %105 = getelementptr inbounds %struct.priv, %struct.priv* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  store i64 %103, i64* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.priv*, %struct.priv** %3, align 8
  %110 = getelementptr inbounds %struct.priv, %struct.priv* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.priv*, %struct.priv** %3, align 8
  %116 = getelementptr inbounds %struct.priv, %struct.priv* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 8
  %119 = load %struct.priv*, %struct.priv** %3, align 8
  %120 = getelementptr inbounds %struct.priv, %struct.priv* %119, i32 0, i32 2
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %88
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @MPMAX(i32 %127, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load %struct.priv*, %struct.priv** %3, align 8
  %132 = getelementptr inbounds %struct.priv, %struct.priv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @mp_refqueue_set_refs(i32 %133, i32 %134, i32 %135)
  br label %152

137:                                              ; preds = %88
  %138 = load %struct.priv*, %struct.priv** %3, align 8
  %139 = getelementptr inbounds %struct.priv, %struct.priv* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.priv*, %struct.priv** %3, align 8
  %142 = getelementptr inbounds %struct.priv, %struct.priv* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.priv*, %struct.priv** %3, align 8
  %147 = getelementptr inbounds %struct.priv, %struct.priv* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @mp_refqueue_set_refs(i32 %140, i32 %145, i32 %150)
  br label %152

152:                                              ; preds = %137, %125
  %153 = load %struct.priv*, %struct.priv** %3, align 8
  %154 = getelementptr inbounds %struct.priv, %struct.priv* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.priv*, %struct.priv** %3, align 8
  %157 = getelementptr inbounds %struct.priv, %struct.priv* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load i32, i32* @MP_MODE_DEINT, align 4
  br label %163

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %162, %160
  %164 = phi i32 [ %161, %160 ], [ 0, %162 ]
  %165 = load %struct.priv*, %struct.priv** %3, align 8
  %166 = getelementptr inbounds %struct.priv, %struct.priv* %165, i32 0, i32 2
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp sge i32 %169, 2
  br i1 %170, label %171, label %173

171:                                              ; preds = %163
  %172 = load i32, i32* @MP_MODE_OUTPUT_FIELDS, align 4
  br label %174

173:                                              ; preds = %163
  br label %174

174:                                              ; preds = %173, %171
  %175 = phi i32 [ %172, %171 ], [ 0, %173 ]
  %176 = or i32 %164, %175
  %177 = load %struct.priv*, %struct.priv** %3, align 8
  %178 = getelementptr inbounds %struct.priv, %struct.priv* %177, i32 0, i32 2
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %174
  %184 = load i32, i32* @MP_MODE_INTERLACED_ONLY, align 4
  br label %186

185:                                              ; preds = %174
  br label %186

186:                                              ; preds = %185, %183
  %187 = phi i32 [ %184, %183 ], [ 0, %185 ]
  %188 = or i32 %176, %187
  %189 = call i32 @mp_refqueue_set_mode(i32 %155, i32 %188)
  br label %199

190:                                              ; preds = %87, %57
  %191 = load %struct.priv*, %struct.priv** %3, align 8
  %192 = getelementptr inbounds %struct.priv, %struct.priv* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @mp_refqueue_set_refs(i32 %193, i32 0, i32 0)
  %195 = load %struct.priv*, %struct.priv** %3, align 8
  %196 = getelementptr inbounds %struct.priv, %struct.priv* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @mp_refqueue_set_mode(i32 %197, i32 0)
  br label %199

199:                                              ; preds = %190, %186
  ret void
}

declare dso_local i32 @vaQueryVideoProcPipelineCaps(i32, i32, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @CHECK_VA_STATUS(%struct.mp_filter*, i8*) #1

declare dso_local i32 @MPMAX(i32, i32) #1

declare dso_local i32 @mp_refqueue_set_refs(i32, i32, i32) #1

declare dso_local i32 @mp_refqueue_set_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
