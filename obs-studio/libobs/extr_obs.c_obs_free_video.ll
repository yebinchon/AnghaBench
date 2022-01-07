; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_free_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_free_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_video }
%struct.obs_core_video = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32*, i32*, i32***, i32**, i32**, i32, i32* }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@NUM_CHANNELS = common dso_local global i64 0, align 8
@NUM_TEXTURES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @obs_free_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_free_video() #0 {
  %1 = alloca %struct.obs_core_video*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.obs_core_video* %9, %struct.obs_core_video** %1, align 8
  %10 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %11 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %10, i32 0, i32 15
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %228

14:                                               ; preds = %0
  %15 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %16 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %15, i32 0, i32 15
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @video_output_close(i32* %17)
  %19 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %20 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %19, i32 0, i32 15
  store i32* null, i32** %20, align 8
  %21 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %22 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %21, i32 0, i32 14
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  br label %228

26:                                               ; preds = %14
  %27 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %28 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %27, i32 0, i32 14
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @gs_enter_context(i32 %29)
  store i64 0, i64* %2, align 8
  br label %31

31:                                               ; preds = %57, %26
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* @NUM_CHANNELS, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %37 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %36, i32 0, i32 13
  %38 = load i32**, i32*** %37, align 8
  %39 = load i64, i64* %2, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %35
  %44 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %45 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %44, i32 0, i32 13
  %46 = load i32**, i32*** %45, align 8
  %47 = load i64, i64* %2, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @gs_stagesurface_unmap(i32* %49)
  %51 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %52 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %51, i32 0, i32 13
  %53 = load i32**, i32*** %52, align 8
  %54 = load i64, i64* %2, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %43, %35
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %2, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %2, align 8
  br label %31

60:                                               ; preds = %31
  store i64 0, i64* %3, align 8
  br label %61

61:                                               ; preds = %105, %60
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @NUM_TEXTURES, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %108

65:                                               ; preds = %61
  store i64 0, i64* %4, align 8
  br label %66

66:                                               ; preds = %101, %65
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @NUM_CHANNELS, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %104

70:                                               ; preds = %66
  %71 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %72 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %71, i32 0, i32 11
  %73 = load i32***, i32**** %72, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds i32**, i32*** %73, i64 %74
  %76 = load i32**, i32*** %75, align 8
  %77 = load i64, i64* %4, align 8
  %78 = getelementptr inbounds i32*, i32** %76, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %100

81:                                               ; preds = %70
  %82 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %83 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %82, i32 0, i32 11
  %84 = load i32***, i32**** %83, align 8
  %85 = load i64, i64* %3, align 8
  %86 = getelementptr inbounds i32**, i32*** %84, i64 %85
  %87 = load i32**, i32*** %86, align 8
  %88 = load i64, i64* %4, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @gs_stagesurface_destroy(i32* %90)
  %92 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %93 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %92, i32 0, i32 11
  %94 = load i32***, i32**** %93, align 8
  %95 = load i64, i64* %3, align 8
  %96 = getelementptr inbounds i32**, i32*** %94, i64 %95
  %97 = load i32**, i32*** %96, align 8
  %98 = load i64, i64* %4, align 8
  %99 = getelementptr inbounds i32*, i32** %97, i64 %98
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %81, %70
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %4, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %4, align 8
  br label %66

104:                                              ; preds = %66
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %3, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %3, align 8
  br label %61

108:                                              ; preds = %61
  %109 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %110 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %109, i32 0, i32 10
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @gs_texture_destroy(i32* %111)
  store i64 0, i64* %5, align 8
  br label %113

113:                                              ; preds = %139, %108
  %114 = load i64, i64* %5, align 8
  %115 = load i64, i64* @NUM_CHANNELS, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %142

117:                                              ; preds = %113
  %118 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %119 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %118, i32 0, i32 12
  %120 = load i32**, i32*** %119, align 8
  %121 = load i64, i64* %5, align 8
  %122 = getelementptr inbounds i32*, i32** %120, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %138

125:                                              ; preds = %117
  %126 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %127 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %126, i32 0, i32 12
  %128 = load i32**, i32*** %127, align 8
  %129 = load i64, i64* %5, align 8
  %130 = getelementptr inbounds i32*, i32** %128, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @gs_texture_destroy(i32* %131)
  %133 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %134 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %133, i32 0, i32 12
  %135 = load i32**, i32*** %134, align 8
  %136 = load i64, i64* %5, align 8
  %137 = getelementptr inbounds i32*, i32** %135, i64 %136
  store i32* null, i32** %137, align 8
  br label %138

138:                                              ; preds = %125, %117
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %5, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %5, align 8
  br label %113

142:                                              ; preds = %113
  store i64 0, i64* %6, align 8
  br label %143

143:                                              ; preds = %187, %142
  %144 = load i64, i64* %6, align 8
  %145 = load i64, i64* @NUM_TEXTURES, align 8
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %147, label %190

147:                                              ; preds = %143
  store i64 0, i64* %7, align 8
  br label %148

148:                                              ; preds = %183, %147
  %149 = load i64, i64* %7, align 8
  %150 = load i64, i64* @NUM_CHANNELS, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %186

152:                                              ; preds = %148
  %153 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %154 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %153, i32 0, i32 11
  %155 = load i32***, i32**** %154, align 8
  %156 = load i64, i64* %6, align 8
  %157 = getelementptr inbounds i32**, i32*** %155, i64 %156
  %158 = load i32**, i32*** %157, align 8
  %159 = load i64, i64* %7, align 8
  %160 = getelementptr inbounds i32*, i32** %158, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %182

163:                                              ; preds = %152
  %164 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %165 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %164, i32 0, i32 11
  %166 = load i32***, i32**** %165, align 8
  %167 = load i64, i64* %6, align 8
  %168 = getelementptr inbounds i32**, i32*** %166, i64 %167
  %169 = load i32**, i32*** %168, align 8
  %170 = load i64, i64* %7, align 8
  %171 = getelementptr inbounds i32*, i32** %169, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @gs_stagesurface_destroy(i32* %172)
  %174 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %175 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %174, i32 0, i32 11
  %176 = load i32***, i32**** %175, align 8
  %177 = load i64, i64* %6, align 8
  %178 = getelementptr inbounds i32**, i32*** %176, i64 %177
  %179 = load i32**, i32*** %178, align 8
  %180 = load i64, i64* %7, align 8
  %181 = getelementptr inbounds i32*, i32** %179, i64 %180
  store i32* null, i32** %181, align 8
  br label %182

182:                                              ; preds = %163, %152
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %7, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %7, align 8
  br label %148

186:                                              ; preds = %148
  br label %187

187:                                              ; preds = %186
  %188 = load i64, i64* %6, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %6, align 8
  br label %143

190:                                              ; preds = %143
  %191 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %192 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %191, i32 0, i32 9
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @gs_texture_destroy(i32* %193)
  %195 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %196 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %195, i32 0, i32 10
  store i32* null, i32** %196, align 8
  %197 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %198 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %197, i32 0, i32 9
  store i32* null, i32** %198, align 8
  %199 = call i32 (...) @gs_leave_context()
  %200 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %201 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %200, i32 0, i32 8
  %202 = call i32 @circlebuf_free(i32* %201)
  %203 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %204 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %203, i32 0, i32 7
  %205 = call i32 @circlebuf_free(i32* %204)
  %206 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %207 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %206, i32 0, i32 0
  store i32 0, i32* %207, align 8
  %208 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %209 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @memset(i32 %210, i32 0, i32 4)
  %212 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %213 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %212, i32 0, i32 1
  store i32 0, i32* %213, align 4
  %214 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %215 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %214, i32 0, i32 5
  %216 = call i32 @pthread_mutex_destroy(i32* %215)
  %217 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %218 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %217, i32 0, i32 5
  %219 = call i32 @pthread_mutex_init_value(i32* %218)
  %220 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %221 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @da_free(i32 %222)
  %224 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %225 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %224, i32 0, i32 3
  store i64 0, i64* %225, align 8
  %226 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %227 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %226, i32 0, i32 2
  store i64 0, i64* %227, align 8
  br label %228

228:                                              ; preds = %25, %190, %0
  ret void
}

declare dso_local i32 @video_output_close(i32*) #1

declare dso_local i32 @gs_enter_context(i32) #1

declare dso_local i32 @gs_stagesurface_unmap(i32*) #1

declare dso_local i32 @gs_stagesurface_destroy(i32*) #1

declare dso_local i32 @gs_texture_destroy(i32*) #1

declare dso_local i32 @gs_leave_context(...) #1

declare dso_local i32 @circlebuf_free(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_init_value(i32*) #1

declare dso_local i32 @da_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
