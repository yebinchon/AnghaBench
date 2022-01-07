; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, %struct.TYPE_2__*, %struct.vo_internal* }
%struct.TYPE_2__ = type { i32 (%struct.vo*)*, i32 (%struct.vo*, i32, i32*)*, i64 (%struct.vo*)*, i64 }
%struct.vo_internal = type { i64, i32, i32, i32, i32, i32, i32*, i32, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"vo\00", align 1
@get_image_vo = common dso_local global i32 0, align 4
@VO_EVENT_WIN_STATE = common dso_local global i32 0, align 4
@VOCTRL_CHECK_EVENTS = common dso_local global i32 0, align 4
@VOCTRL_RESET = common dso_local global i32 0, align 4
@VOCTRL_PAUSE = common dso_local global i32 0, align 4
@VOCTRL_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @vo_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vo_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.vo_internal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.vo*
  store %struct.vo* %14, %struct.vo** %3, align 8
  %15 = load %struct.vo*, %struct.vo** %3, align 8
  %16 = getelementptr inbounds %struct.vo, %struct.vo* %15, i32 0, i32 2
  %17 = load %struct.vo_internal*, %struct.vo_internal** %16, align 8
  store %struct.vo_internal* %17, %struct.vo_internal** %4, align 8
  store i32 0, i32* %5, align 4
  %18 = call i32 @mpthread_set_name(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.vo*, %struct.vo** %3, align 8
  %20 = getelementptr inbounds %struct.vo, %struct.vo* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %1
  %26 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %27 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @get_image_vo, align 4
  %30 = load %struct.vo*, %struct.vo** %3, align 8
  %31 = call i32 @dr_helper_create(i32 %28, i32 %29, %struct.vo* %30)
  %32 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %33 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %35 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dr_helper_acquire_thread(i32 %36)
  br label %38

38:                                               ; preds = %25, %1
  %39 = load %struct.vo*, %struct.vo** %3, align 8
  %40 = getelementptr inbounds %struct.vo, %struct.vo* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64 (%struct.vo*)*, i64 (%struct.vo*)** %42, align 8
  %44 = load %struct.vo*, %struct.vo** %3, align 8
  %45 = call i64 %43(%struct.vo* %44)
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 -1, i32 0
  store i32 %48, i32* %6, align 4
  %49 = load %struct.vo*, %struct.vo** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @mp_rendezvous(%struct.vo* %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  br label %222

55:                                               ; preds = %38
  %56 = load %struct.vo*, %struct.vo** %3, align 8
  %57 = call i32 @read_opts(%struct.vo* %56)
  %58 = load %struct.vo*, %struct.vo** %3, align 8
  %59 = call i32 @update_display_fps(%struct.vo* %58)
  %60 = load %struct.vo*, %struct.vo** %3, align 8
  %61 = load i32, i32* @VO_EVENT_WIN_STATE, align 4
  %62 = call i32 @vo_event(%struct.vo* %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %193, %202
  %64 = load %struct.vo*, %struct.vo** %3, align 8
  %65 = getelementptr inbounds %struct.vo, %struct.vo* %64, i32 0, i32 2
  %66 = load %struct.vo_internal*, %struct.vo_internal** %65, align 8
  %67 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @mp_dispatch_queue_process(i32 %68, i32 0)
  %70 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %71 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %206

75:                                               ; preds = %63
  %76 = load %struct.vo*, %struct.vo** %3, align 8
  %77 = getelementptr inbounds %struct.vo, %struct.vo* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32 (%struct.vo*, i32, i32*)*, i32 (%struct.vo*, i32, i32*)** %79, align 8
  %81 = load %struct.vo*, %struct.vo** %3, align 8
  %82 = load i32, i32* @VOCTRL_CHECK_EVENTS, align 4
  %83 = call i32 %80(%struct.vo* %81, i32 %82, i32* null)
  %84 = load %struct.vo*, %struct.vo** %3, align 8
  %85 = call i32 @render_frame(%struct.vo* %84)
  store i32 %85, i32* %7, align 4
  %86 = call i64 (...) @mp_time_us()
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i64 0, i64 1000000000
  %92 = add nsw i64 %87, %91
  store i64 %92, i64* %9, align 8
  %93 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %94 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %93, i32 0, i32 7
  %95 = call i32 @pthread_mutex_lock(i32* %94)
  %96 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %97 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %75
  %101 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %102 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = icmp sgt i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %109 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @MPMIN(i64 %107, i64 %110)
  store i64 %111, i64* %9, align 8
  br label %117

112:                                              ; preds = %100
  %113 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %114 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  %115 = load %struct.vo*, %struct.vo** %3, align 8
  %116 = call i32 @wakeup_core(%struct.vo* %115)
  br label %117

117:                                              ; preds = %112, %106
  br label %118

118:                                              ; preds = %117, %75
  %119 = load %struct.vo*, %struct.vo** %3, align 8
  %120 = getelementptr inbounds %struct.vo, %struct.vo* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %118
  %124 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %125 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %123
  %129 = load %struct.vo*, %struct.vo** %3, align 8
  %130 = getelementptr inbounds %struct.vo, %struct.vo* %129, i32 0, i32 0
  store i32 0, i32* %130, align 8
  %131 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %132 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %131, i32 0, i32 1
  store i32 1, i32* %132, align 8
  %133 = load %struct.vo*, %struct.vo** %3, align 8
  %134 = call i32 @wakeup_core(%struct.vo* %133)
  br label %135

135:                                              ; preds = %128, %123, %118
  %136 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %137 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %10, align 4
  %139 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %140 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %11, align 4
  %142 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %143 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %142, i32 0, i32 3
  store i32 0, i32* %143, align 8
  %144 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %145 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %146, %147
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %12, align 4
  %150 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %151 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %5, align 4
  %153 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %154 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %153, i32 0, i32 7
  %155 = call i32 @pthread_mutex_unlock(i32* %154)
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %135
  %159 = load %struct.vo*, %struct.vo** %3, align 8
  %160 = getelementptr inbounds %struct.vo, %struct.vo* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32 (%struct.vo*, i32, i32*)*, i32 (%struct.vo*, i32, i32*)** %162, align 8
  %164 = load %struct.vo*, %struct.vo** %3, align 8
  %165 = load i32, i32* @VOCTRL_RESET, align 4
  %166 = call i32 %163(%struct.vo* %164, i32 %165, i32* null)
  br label %167

167:                                              ; preds = %158, %135
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %167
  %171 = load %struct.vo*, %struct.vo** %3, align 8
  %172 = getelementptr inbounds %struct.vo, %struct.vo* %171, i32 0, i32 1
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  %175 = load i32 (%struct.vo*, i32, i32*)*, i32 (%struct.vo*, i32, i32*)** %174, align 8
  %176 = load %struct.vo*, %struct.vo** %3, align 8
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = load i32, i32* @VOCTRL_PAUSE, align 4
  br label %183

181:                                              ; preds = %170
  %182 = load i32, i32* @VOCTRL_RESUME, align 4
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi i32 [ %180, %179 ], [ %182, %181 ]
  %185 = call i32 %175(%struct.vo* %176, i32 %184, i32* null)
  br label %186

186:                                              ; preds = %183, %167
  %187 = load i64, i64* %9, align 8
  %188 = load i64, i64* %8, align 8
  %189 = icmp sgt i64 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load %struct.vo*, %struct.vo** %3, align 8
  %195 = call i32 @do_redraw(%struct.vo* %194)
  br label %63

196:                                              ; preds = %190, %186
  %197 = load %struct.vo*, %struct.vo** %3, align 8
  %198 = getelementptr inbounds %struct.vo, %struct.vo* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  store i64 0, i64* %9, align 8
  br label %202

202:                                              ; preds = %201, %196
  %203 = load %struct.vo*, %struct.vo** %3, align 8
  %204 = load i64, i64* %9, align 8
  %205 = call i32 @wait_vo(%struct.vo* %203, i64 %204)
  br label %63

206:                                              ; preds = %74
  %207 = load %struct.vo*, %struct.vo** %3, align 8
  %208 = call i32 @forget_frames(%struct.vo* %207)
  %209 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %210 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %209, i32 0, i32 6
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 @talloc_free(i32* %211)
  %213 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %214 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %213, i32 0, i32 6
  store i32* null, i32** %214, align 8
  %215 = load %struct.vo*, %struct.vo** %3, align 8
  %216 = getelementptr inbounds %struct.vo, %struct.vo* %215, i32 0, i32 1
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32 (%struct.vo*)*, i32 (%struct.vo*)** %218, align 8
  %220 = load %struct.vo*, %struct.vo** %3, align 8
  %221 = call i32 %219(%struct.vo* %220)
  br label %222

222:                                              ; preds = %206, %54
  %223 = load %struct.vo_internal*, %struct.vo_internal** %4, align 8
  %224 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %223, i32 0, i32 5
  %225 = call i32 @TA_FREEP(i32* %224)
  ret i8* null
}

declare dso_local i32 @mpthread_set_name(i8*) #1

declare dso_local i32 @dr_helper_create(i32, i32, %struct.vo*) #1

declare dso_local i32 @dr_helper_acquire_thread(i32) #1

declare dso_local i32 @mp_rendezvous(%struct.vo*, i32) #1

declare dso_local i32 @read_opts(%struct.vo*) #1

declare dso_local i32 @update_display_fps(%struct.vo*) #1

declare dso_local i32 @vo_event(%struct.vo*, i32) #1

declare dso_local i32 @mp_dispatch_queue_process(i32, i32) #1

declare dso_local i32 @render_frame(%struct.vo*) #1

declare dso_local i64 @mp_time_us(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @MPMIN(i64, i64) #1

declare dso_local i32 @wakeup_core(%struct.vo*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @do_redraw(%struct.vo*) #1

declare dso_local i32 @wait_vo(%struct.vo*, i64) #1

declare dso_local i32 @forget_frames(%struct.vo*) #1

declare dso_local i32 @talloc_free(i32*) #1

declare dso_local i32 @TA_FREEP(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
