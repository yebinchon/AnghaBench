; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_video_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_video_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, i32, i32, i64, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32, i32 (i64, float)* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_17__** }

@.str = private unnamed_addr constant [22 x i8] c"obs_source_video_tick\00", align 1
@OBS_SOURCE_TYPE_TRANSITION = common dso_local global i64 0, align 8
@OBS_SOURCE_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_source_video_tick(%struct.TYPE_17__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store float %1, float* %4, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = call i32 @obs_source_valid(%struct.TYPE_17__* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %206

15:                                               ; preds = %2
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OBS_SOURCE_TYPE_TRANSITION, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = call i32 @obs_transition_tick(%struct.TYPE_17__* %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @OBS_SOURCE_ASYNC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = call i32 @async_tick(%struct.TYPE_17__* %34)
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 10
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = call i32 @obs_source_deferred_update(%struct.TYPE_17__* %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 9
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 9
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @gs_texrender_reset(i64 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %116

67:                                               ; preds = %54
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %72 = call i32 @show_source(%struct.TYPE_17__* %71)
  br label %76

73:                                               ; preds = %67
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = call i32 @hide_source(%struct.TYPE_17__* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %76
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %7, align 8
  br label %87

87:                                               ; preds = %108, %82
  %88 = load i64, i64* %7, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %87
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = sub i64 %95, 1
  %97 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %94, i64 %96
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  store %struct.TYPE_17__* %98, %struct.TYPE_17__** %8, align 8
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %103 = call i32 @show_source(%struct.TYPE_17__* %102)
  br label %107

104:                                              ; preds = %90
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %106 = call i32 @hide_source(%struct.TYPE_17__* %105)
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %109, -1
  store i64 %110, i64* %7, align 8
  br label %87

111:                                              ; preds = %87
  br label %112

112:                                              ; preds = %111, %76
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %112, %54
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %124, %127
  br i1 %128, label %129, label %178

129:                                              ; preds = %116
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %134 = call i32 @activate_source(%struct.TYPE_17__* %133)
  br label %138

135:                                              ; preds = %129
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %137 = call i32 @deactivate_source(%struct.TYPE_17__* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %174

144:                                              ; preds = %138
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 6
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %9, align 8
  br label %149

149:                                              ; preds = %170, %144
  %150 = load i64, i64* %9, align 8
  %151 = icmp ugt i64 %150, 0
  br i1 %151, label %152, label %173

152:                                              ; preds = %149
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %155, align 8
  %157 = load i64, i64* %9, align 8
  %158 = sub i64 %157, 1
  %159 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %156, i64 %158
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %159, align 8
  store %struct.TYPE_17__* %160, %struct.TYPE_17__** %10, align 8
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %152
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %165 = call i32 @activate_source(%struct.TYPE_17__* %164)
  br label %169

166:                                              ; preds = %152
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %168 = call i32 @deactivate_source(%struct.TYPE_17__* %167)
  br label %169

169:                                              ; preds = %166, %163
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %9, align 8
  %172 = add i64 %171, -1
  store i64 %172, i64* %9, align 8
  br label %149

173:                                              ; preds = %149
  br label %174

174:                                              ; preds = %173, %138
  %175 = load i32, i32* %6, align 4
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %174, %116
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %201

184:                                              ; preds = %178
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 2
  %188 = load i32 (i64, float)*, i32 (i64, float)** %187, align 8
  %189 = icmp ne i32 (i64, float)* %188, null
  br i1 %189, label %190, label %201

190:                                              ; preds = %184
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 2
  %194 = load i32 (i64, float)*, i32 (i64, float)** %193, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load float, float* %4, align 4
  %200 = call i32 %194(i64 %198, float %199)
  br label %201

201:                                              ; preds = %190, %184, %178
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 2
  store i32 0, i32* %203, align 8
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 3
  store i32 0, i32* %205, align 4
  br label %206

206:                                              ; preds = %201, %14
  ret void
}

declare dso_local i32 @obs_source_valid(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @obs_transition_tick(%struct.TYPE_17__*) #1

declare dso_local i32 @async_tick(%struct.TYPE_17__*) #1

declare dso_local i32 @obs_source_deferred_update(%struct.TYPE_17__*) #1

declare dso_local i32 @gs_texrender_reset(i64) #1

declare dso_local i32 @show_source(%struct.TYPE_17__*) #1

declare dso_local i32 @hide_source(%struct.TYPE_17__*) #1

declare dso_local i32 @activate_source(%struct.TYPE_17__*) #1

declare dso_local i32 @deactivate_source(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
