; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_wasapi-output.c_process_audio_delay.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_wasapi-output.c_process_audio_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_monitor = type { i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_9__, i64, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { float* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32, i64 }

@LOG_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_monitor*, float**, float*, i32, float)* @process_audio_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_audio_delay(%struct.audio_monitor* %0, float** %1, float* %2, i32 %3, float %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.audio_monitor*, align 8
  %8 = alloca float**, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.audio_monitor* %0, %struct.audio_monitor** %7, align 8
  store float** %1, float*** %8, align 8
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  %21 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %22 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %21, i32 0, i32 7
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %12, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  %27 = call i32 (...) @os_gettime_ns()
  store i32 %27, i32* %14, align 4
  %28 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %29 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = uitofp i64 %32 to float
  store float %33, float* %18, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %36 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  %39 = icmp sgt i32 %38, 1000000000
  br i1 %39, label %40, label %44

40:                                               ; preds = %5
  %41 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %42 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %41, i32 0, i32 5
  %43 = call i32 @circlebuf_free(%struct.TYPE_9__* %42)
  br label %44

44:                                               ; preds = %40, %5
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %47 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %49 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %48, i32 0, i32 7
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %10, align 4
  %57 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %58 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %57, i32 0, i32 5
  %59 = call i32 (%struct.TYPE_9__*, ...) @circlebuf_push_back(%struct.TYPE_9__* %58, i32* %10, i64 4)
  %60 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %61 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %60, i32 0, i32 5
  %62 = load float*, float** %9, align 8
  %63 = call i32 (%struct.TYPE_9__*, ...) @circlebuf_push_back(%struct.TYPE_9__* %61, float* %62, i64 4)
  %64 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %65 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %64, i32 0, i32 5
  %66 = load float**, float*** %8, align 8
  %67 = load float*, float** %66, align 8
  %68 = load float*, float** %9, align 8
  %69 = load float, float* %68, align 4
  %70 = load float, float* %18, align 4
  %71 = fmul float %69, %70
  %72 = fpext float %71 to double
  %73 = call i32 (%struct.TYPE_9__*, ...) @circlebuf_push_back(%struct.TYPE_9__* %65, float* %67, double %72)
  %74 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %75 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %44
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %81 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %110

82:                                               ; preds = %44
  %83 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %84 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %82
  %89 = load float*, float** %9, align 8
  %90 = load float, float* %89, align 4
  %91 = fptosi float %90 to i32
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 1000000000
  %94 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %95 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = udiv i64 %93, %98
  %100 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %101 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  br label %109

106:                                              ; preds = %82
  %107 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %108 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %107, i32 0, i32 3
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %88
  br label %110

110:                                              ; preds = %109, %78
  br label %111

111:                                              ; preds = %198, %110
  %112 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %113 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %205

117:                                              ; preds = %111
  %118 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %119 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %118, i32 0, i32 5
  %120 = call i32 @circlebuf_peek_front(%struct.TYPE_9__* %119, i32* %16, i32 4)
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = load float, float* %11, align 4
  %124 = fptosi float %123 to i32
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 1000000000
  %127 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %128 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = sext i32 %130 to i64
  %132 = udiv i64 %126, %131
  %133 = sub i64 %122, %132
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %13, align 4
  %137 = sub nsw i32 %135, %136
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %117
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @llabs(i32 %141)
  %143 = sext i32 %142 to i64
  %144 = icmp sgt i64 %143, 5000000000
  br i1 %144, label %151, label %145

145:                                              ; preds = %140
  %146 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %147 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = icmp ugt i64 %149, 100000000
  br label %151

151:                                              ; preds = %145, %140, %117
  %152 = phi i1 [ true, %140 ], [ true, %117 ], [ %150, %145 ]
  %153 = zext i1 %152 to i32
  store i32 %153, i32* %20, align 4
  %154 = load i32, i32* %20, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %17, align 4
  %158 = icmp sgt i32 %157, 75000000
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i32 0, i32* %6, align 4
  br label %206

160:                                              ; preds = %156, %151
  %161 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %162 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %161, i32 0, i32 5
  %163 = call i32 @circlebuf_pop_front(%struct.TYPE_9__* %162, float* null, i64 4)
  %164 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %165 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %164, i32 0, i32 5
  %166 = load float*, float** %9, align 8
  %167 = call i32 @circlebuf_pop_front(%struct.TYPE_9__* %165, float* %166, i64 4)
  %168 = load float*, float** %9, align 8
  %169 = load float, float* %168, align 4
  %170 = load float, float* %18, align 4
  %171 = fmul float %169, %170
  %172 = fptoui float %171 to i64
  store i64 %172, i64* %19, align 8
  %173 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %174 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %173, i32 0, i32 4
  %175 = load i64, i64* %19, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %177 = load float*, float** %176, align 8
  %178 = call i32 @da_resize(float* %177, i64 %175)
  %179 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %180 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %179, i32 0, i32 5
  %181 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %182 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load float*, float** %183, align 8
  %185 = load i64, i64* %19, align 8
  %186 = call i32 @circlebuf_pop_front(%struct.TYPE_9__* %180, float* %184, i64 %185)
  %187 = load i32, i32* %20, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %199, label %189

189:                                              ; preds = %160
  %190 = load i32, i32* %17, align 4
  %191 = icmp slt i32 %190, -75000000
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %194 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %193, i32 0, i32 5
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp sgt i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  br label %111

199:                                              ; preds = %192, %189, %160
  %200 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %201 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load float*, float** %202, align 8
  %204 = load float**, float*** %8, align 8
  store float* %203, float** %204, align 8
  store i32 1, i32* %6, align 4
  br label %206

205:                                              ; preds = %111
  store i32 0, i32* %6, align 4
  br label %206

206:                                              ; preds = %205, %199, %159
  %207 = load i32, i32* %6, align 4
  ret i32 %207
}

declare dso_local i32 @os_gettime_ns(...) #1

declare dso_local i32 @circlebuf_free(%struct.TYPE_9__*) #1

declare dso_local i32 @circlebuf_push_back(%struct.TYPE_9__*, ...) #1

declare dso_local i32 @circlebuf_peek_front(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @llabs(i32) #1

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_9__*, float*, i64) #1

declare dso_local i32 @da_resize(float*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
