; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_seek.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, i64, i64, %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.MPContext* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { double, i32 }
%struct.TYPE_4__ = type { double }
%struct.MPContext = type { i32, i32 }

@MPSEEK_DEFAULT = common dso_local global i32 0, align 4
@MPSEEK_KEYFRAME = common dso_local global i32 0, align 4
@MPSEEK_EXACT = common dso_local global i32 0, align 4
@MPSEEK_RELATIVE = common dso_local global i32 0, align 4
@MPSEEK_FLAG_DELAY = common dso_local global i32 0, align 4
@OSD_FFW = common dso_local global i32 0, align 4
@OSD_REW = common dso_local global i32 0, align 4
@MPSEEK_FACTOR = common dso_local global i32 0, align 4
@MPSEEK_ABSOLUTE = common dso_local global i32 0, align 4
@OSD_SEEK_INFO_BAR = common dso_local global i32 0, align 4
@OSD_SEEK_INFO_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_seek(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %12, %struct.mp_cmd_ctx** %3, align 8
  %13 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %13, i32 0, i32 5
  %15 = load %struct.MPContext*, %struct.MPContext** %14, align 8
  store %struct.MPContext* %15, %struct.MPContext** %4, align 8
  %16 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %16, i32 0, i32 3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = fmul double %22, %27
  store double %28, double* %5, align 8
  %29 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 3
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @MPSEEK_DEFAULT, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %38, i32 0, i32 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %44, %51
  %53 = ashr i32 %52, 3
  %54 = and i32 %53, 3
  switch i32 %54, label %59 [
    i32 1, label %55
    i32 2, label %57
  ]

55:                                               ; preds = %1
  %56 = load i32, i32* @MPSEEK_KEYFRAME, align 4
  store i32 %56, i32* %7, align 4
  br label %59

57:                                               ; preds = %1
  %58 = load i32, i32* @MPSEEK_EXACT, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %1, %57, %55
  %60 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %61 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %188

67:                                               ; preds = %59
  %68 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %69 = call i32 @mark_seek(%struct.MPContext* %68)
  %70 = load i32, i32* %6, align 4
  switch i32 %70, label %166 [
    i32 0, label %71
    i32 1, label %88
    i32 2, label %110
    i32 3, label %145
  ]

71:                                               ; preds = %67
  %72 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %73 = load i32, i32* @MPSEEK_RELATIVE, align 4
  %74 = load double, double* %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @MPSEEK_FLAG_DELAY, align 4
  %77 = call i32 @queue_seek(%struct.MPContext* %72, i32 %73, double %74, i32 %75, i32 %76)
  %78 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %79 = load double, double* %5, align 8
  %80 = fcmp ogt double %79, 0.000000e+00
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* @OSD_FFW, align 4
  br label %85

83:                                               ; preds = %71
  %84 = load i32, i32* @OSD_REW, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = call i32 @set_osd_function(%struct.MPContext* %78, i32 %86)
  br label %166

88:                                               ; preds = %67
  %89 = load double, double* %5, align 8
  %90 = fdiv double %89, 1.000000e+02
  store double %90, double* %8, align 8
  %91 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %92 = call double @get_current_pos_ratio(%struct.MPContext* %91, i32 0)
  store double %92, double* %9, align 8
  %93 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %94 = load i32, i32* @MPSEEK_FACTOR, align 4
  %95 = load double, double* %8, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @MPSEEK_FLAG_DELAY, align 4
  %98 = call i32 @queue_seek(%struct.MPContext* %93, i32 %94, double %95, i32 %96, i32 %97)
  %99 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %100 = load double, double* %9, align 8
  %101 = load double, double* %8, align 8
  %102 = fcmp olt double %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %88
  %104 = load i32, i32* @OSD_FFW, align 4
  br label %107

105:                                              ; preds = %88
  %106 = load i32, i32* @OSD_REW, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = call i32 @set_osd_function(%struct.MPContext* %99, i32 %108)
  br label %166

110:                                              ; preds = %67
  %111 = load double, double* %5, align 8
  %112 = fcmp olt double %111, 0.000000e+00
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %115 = call double @get_time_length(%struct.MPContext* %114)
  store double %115, double* %10, align 8
  %116 = load double, double* %10, align 8
  %117 = fcmp olt double %116, 0.000000e+00
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %120 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  br label %188

121:                                              ; preds = %113
  %122 = load double, double* %10, align 8
  %123 = load double, double* %5, align 8
  %124 = fadd double %122, %123
  %125 = call double @MPMAX(i32 0, double %124)
  store double %125, double* %5, align 8
  br label %126

126:                                              ; preds = %121, %110
  %127 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %128 = load i32, i32* @MPSEEK_ABSOLUTE, align 4
  %129 = load double, double* %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @MPSEEK_FLAG_DELAY, align 4
  %132 = call i32 @queue_seek(%struct.MPContext* %127, i32 %128, double %129, i32 %130, i32 %131)
  %133 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %134 = load double, double* %5, align 8
  %135 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %136 = call double @get_current_time(%struct.MPContext* %135)
  %137 = fcmp ogt double %134, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %126
  %139 = load i32, i32* @OSD_FFW, align 4
  br label %142

140:                                              ; preds = %126
  %141 = load i32, i32* @OSD_REW, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  %144 = call i32 @set_osd_function(%struct.MPContext* %133, i32 %143)
  br label %166

145:                                              ; preds = %67
  %146 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %147 = load i32, i32* @MPSEEK_FACTOR, align 4
  %148 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %149 = call double @get_current_pos_ratio(%struct.MPContext* %148, i32 0)
  %150 = load double, double* %5, align 8
  %151 = fdiv double %150, 1.000000e+02
  %152 = fadd double %149, %151
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @MPSEEK_FLAG_DELAY, align 4
  %155 = call i32 @queue_seek(%struct.MPContext* %146, i32 %147, double %152, i32 %153, i32 %154)
  %156 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %157 = load double, double* %5, align 8
  %158 = fcmp ogt double %157, 0.000000e+00
  br i1 %158, label %159, label %161

159:                                              ; preds = %145
  %160 = load i32, i32* @OSD_FFW, align 4
  br label %163

161:                                              ; preds = %145
  %162 = load i32, i32* @OSD_REW, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  %165 = call i32 @set_osd_function(%struct.MPContext* %156, i32 %164)
  br label %166

166:                                              ; preds = %67, %163, %142, %107, %85
  %167 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %168 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load i32, i32* @OSD_SEEK_INFO_BAR, align 4
  %173 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %174 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %171, %166
  %178 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %179 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load i32, i32* @OSD_SEEK_INFO_TEXT, align 4
  %184 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %185 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %64, %118, %182, %177
  ret void
}

declare dso_local i32 @mark_seek(%struct.MPContext*) #1

declare dso_local i32 @queue_seek(%struct.MPContext*, i32, double, i32, i32) #1

declare dso_local i32 @set_osd_function(%struct.MPContext*, i32) #1

declare dso_local double @get_current_pos_ratio(%struct.MPContext*, i32) #1

declare dso_local double @get_time_length(%struct.MPContext*) #1

declare dso_local double @MPMAX(i32, double) #1

declare dso_local double @get_current_time(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
