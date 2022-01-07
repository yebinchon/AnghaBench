; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_zimg.c_allocate_buffer.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_zimg.c_allocate_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_zimg_context = type { i32 }
%struct.mp_zimg_repack = type { i32*, %struct.TYPE_7__*, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@ZIMG_BUFFER_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_zimg_context*, %struct.mp_zimg_repack*)* @allocate_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_buffer(%struct.mp_zimg_context* %0, %struct.mp_zimg_repack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_zimg_context*, align 8
  %5 = alloca %struct.mp_zimg_repack*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mp_zimg_context* %0, %struct.mp_zimg_context** %4, align 8
  store %struct.mp_zimg_repack* %1, %struct.mp_zimg_repack** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %11 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %4, align 8
  %16 = getelementptr inbounds %struct.mp_zimg_context, %struct.mp_zimg_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @zimg_filter_graph_get_output_buffering(i32 %17, i32* %6)
  store i32 %18, i32* %7, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %4, align 8
  %21 = getelementptr inbounds %struct.mp_zimg_context, %struct.mp_zimg_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @zimg_filter_graph_get_input_buffering(i32 %22, i32* %6)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %180

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @zimg_select_buffer_mask(i32 %29)
  %31 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %32 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %36 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ZIMG_BUFFER_MAX, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %28
  %43 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %44 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i64 @MP_IS_POWER_OF_2(i32 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %42, %28
  %52 = phi i1 [ true, %28 ], [ %50, %42 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %56 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ZIMG_BUFFER_MAX, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %64 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  br label %74

67:                                               ; preds = %51
  %68 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %69 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  br label %74

74:                                               ; preds = %67, %62
  %75 = phi i32 [ %66, %62 ], [ %73, %67 ]
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %78 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sge i32 %76, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %74
  %83 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %84 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* @ZIMG_BUFFER_MAX, align 4
  %88 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %89 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %87, i32* %91, align 4
  br label %92

92:                                               ; preds = %82, %74
  %93 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %94 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %97 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call %struct.TYPE_7__* @mp_image_alloc(i32 %95, i32 %99, i32 %100)
  %102 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %103 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %102, i32 0, i32 1
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %103, align 8
  %104 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %105 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %106 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = call i32 @talloc_steal(%struct.mp_zimg_repack* %104, %struct.TYPE_7__* %107)
  %109 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %110 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = icmp ne %struct.TYPE_7__* %111, null
  br i1 %112, label %113, label %172

113:                                              ; preds = %92
  store i32 1, i32* %9, align 4
  br label %114

114:                                              ; preds = %168, %113
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %117 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %115, %121
  br i1 %122, label %123, label %171

123:                                              ; preds = %114
  %124 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %125 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %130 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  %135 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %136 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ZIMG_BUFFER_MAX, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %167

142:                                              ; preds = %123
  %143 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %144 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %151 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %150, i32 0, i32 1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %149, %159
  %161 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %162 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %160, i32* %166, align 4
  br label %167

167:                                              ; preds = %142, %123
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %114

171:                                              ; preds = %114
  br label %172

172:                                              ; preds = %171, %92
  %173 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %5, align 8
  %174 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %173, i32 0, i32 1
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = icmp ne %struct.TYPE_7__* %175, null
  %177 = xor i1 %176, true
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %172, %27
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @zimg_filter_graph_get_output_buffering(i32, i32*) #1

declare dso_local i32 @zimg_filter_graph_get_input_buffering(i32, i32*) #1

declare dso_local i32 @zimg_select_buffer_mask(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MP_IS_POWER_OF_2(i32) #1

declare dso_local %struct.TYPE_7__* @mp_image_alloc(i32, i32, i32) #1

declare dso_local i32 @talloc_steal(%struct.mp_zimg_repack*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
