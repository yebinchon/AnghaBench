; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_pool_allocate.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_pool_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe_pool = type { i32, i64 }
%struct.mp_aframe = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32, %struct.TYPE_4__**, i64*, i64* }
%struct.TYPE_4__ = type { i64 }

@INT_MAX = common dso_local global i64 0, align 8
@mp_aframe_pool_destructor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_aframe_pool_allocate(%struct.mp_aframe_pool* %0, %struct.mp_aframe* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_aframe_pool*, align 8
  %6 = alloca %struct.mp_aframe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  store %struct.mp_aframe_pool* %0, %struct.mp_aframe_pool** %5, align 8
  store %struct.mp_aframe* %1, %struct.mp_aframe** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %17 = call i32 @mp_aframe_get_planes(%struct.mp_aframe* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %19 = call i64 @mp_aframe_get_sstride(%struct.mp_aframe* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @MPMAX(i32 %20, i32 1)
  %22 = call i32 @MP_ALIGN_UP(i64 %21, i32 32)
  store i32 %22, i32* %10, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %23, %25
  %27 = call i32 @MP_ALIGN_UP(i64 %26, i32 64)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %3
  %34 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %35 = call i64 @mp_aframe_is_allocated(%struct.mp_aframe* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %3
  store i32 -1, i32* %4, align 4
  br label %162

38:                                               ; preds = %33
  %39 = load %struct.mp_aframe_pool*, %struct.mp_aframe_pool** %5, align 8
  %40 = getelementptr inbounds %struct.mp_aframe_pool, %struct.mp_aframe_pool* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.mp_aframe_pool*, %struct.mp_aframe_pool** %5, align 8
  %46 = getelementptr inbounds %struct.mp_aframe_pool, %struct.mp_aframe_pool* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %80

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @ta_calc_prealloc_elems(i32 %50)
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @INT_MAX, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %162

56:                                               ; preds = %49
  %57 = load %struct.mp_aframe_pool*, %struct.mp_aframe_pool** %5, align 8
  %58 = getelementptr inbounds %struct.mp_aframe_pool, %struct.mp_aframe_pool* %57, i32 0, i32 1
  %59 = call i32 @av_buffer_pool_uninit(i64* %58)
  %60 = load i64, i64* %13, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.mp_aframe_pool*, %struct.mp_aframe_pool** %5, align 8
  %63 = getelementptr inbounds %struct.mp_aframe_pool, %struct.mp_aframe_pool* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.mp_aframe_pool*, %struct.mp_aframe_pool** %5, align 8
  %65 = getelementptr inbounds %struct.mp_aframe_pool, %struct.mp_aframe_pool* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = call i64 @av_buffer_pool_init(i64 %67, i32* null)
  %69 = load %struct.mp_aframe_pool*, %struct.mp_aframe_pool** %5, align 8
  %70 = getelementptr inbounds %struct.mp_aframe_pool, %struct.mp_aframe_pool* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.mp_aframe_pool*, %struct.mp_aframe_pool** %5, align 8
  %72 = getelementptr inbounds %struct.mp_aframe_pool, %struct.mp_aframe_pool* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %56
  store i32 -1, i32* %4, align 4
  br label %162

76:                                               ; preds = %56
  %77 = load %struct.mp_aframe_pool*, %struct.mp_aframe_pool** %5, align 8
  %78 = load i32, i32* @mp_aframe_pool_destructor, align 4
  %79 = call i32 @talloc_set_destructor(%struct.mp_aframe_pool* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %43
  %81 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %82 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  store %struct.TYPE_3__* %83, %struct.TYPE_3__** %14, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i64*, i64** %85, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i64*, i64** %88, align 8
  %90 = icmp ne i64* %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %80
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = call i32 @av_freep(i64** %93)
  br label %95

95:                                               ; preds = %91, %80
  %96 = load i32, i32* %8, align 4
  %97 = call i64* @av_mallocz_array(i32 %96, i32 8)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  store i64* %97, i64** %99, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i64*, i64** %101, align 8
  %103 = icmp ne i64* %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %95
  %105 = call i32 (...) @abort() #3
  unreachable

106:                                              ; preds = %95
  %107 = load %struct.mp_aframe_pool*, %struct.mp_aframe_pool** %5, align 8
  %108 = getelementptr inbounds %struct.mp_aframe_pool, %struct.mp_aframe_pool* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call %struct.TYPE_4__* @av_buffer_pool_get(i64 %109)
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %113, i64 0
  store %struct.TYPE_4__* %110, %struct.TYPE_4__** %114, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %117, i64 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = icmp ne %struct.TYPE_4__* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %106
  store i32 -1, i32* %4, align 4
  br label %162

122:                                              ; preds = %106
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %9, align 8
  %126 = mul i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %127, i32* %131, align 4
  store i32 0, i32* %15, align 4
  br label %132

132:                                              ; preds = %155, %122
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %158

136:                                              ; preds = %132
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %139, i64 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %11, align 4
  %146 = mul nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %143, %147
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  %151 = load i64*, i64** %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  store i64 %148, i64* %154, align 8
  br label %155

155:                                              ; preds = %136
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %132

158:                                              ; preds = %132
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 8
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %158, %121, %75, %55, %37
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @mp_aframe_get_planes(%struct.mp_aframe*) #1

declare dso_local i64 @mp_aframe_get_sstride(%struct.mp_aframe*) #1

declare dso_local i32 @MP_ALIGN_UP(i64, i32) #1

declare dso_local i64 @MPMAX(i32, i32) #1

declare dso_local i64 @mp_aframe_is_allocated(%struct.mp_aframe*) #1

declare dso_local i64 @ta_calc_prealloc_elems(i32) #1

declare dso_local i32 @av_buffer_pool_uninit(i64*) #1

declare dso_local i64 @av_buffer_pool_init(i64, i32*) #1

declare dso_local i32 @talloc_set_destructor(%struct.mp_aframe_pool*, i32) #1

declare dso_local i32 @av_freep(i64**) #1

declare dso_local i64* @av_mallocz_array(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.TYPE_4__* @av_buffer_pool_get(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
