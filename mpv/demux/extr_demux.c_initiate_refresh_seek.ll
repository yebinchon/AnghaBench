; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_initiate_refresh_seek.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_initiate_refresh_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32, i32, double, i32, i32, %struct.TYPE_5__**, %struct.demuxer* }
%struct.TYPE_5__ = type { %struct.demux_stream* }
%struct.demuxer = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.demux_stream = type { i64, i32, double, i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, double }

@STREAM_VIDEO = common dso_local global i64 0, align 8
@STREAM_AUDIO = common dso_local global i64 0, align 8
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [26 x i8] c"can't issue refresh seek\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"refresh seek to %f\0A\00", align 1
@SEEK_HR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*, %struct.demux_stream*, double)* @initiate_refresh_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initiate_refresh_seek(%struct.demux_internal* %0, %struct.demux_stream* %1, double %2) #0 {
  %4 = alloca %struct.demux_internal*, align 8
  %5 = alloca %struct.demux_stream*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.demuxer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.demux_stream*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.demux_stream*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.demux_internal* %0, %struct.demux_internal** %4, align 8
  store %struct.demux_stream* %1, %struct.demux_stream** %5, align 8
  store double %2, double* %6, align 8
  %17 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %18 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %17, i32 0, i32 6
  %19 = load %struct.demuxer*, %struct.demuxer** %18, align 8
  store %struct.demuxer* %19, %struct.demuxer** %7, align 8
  %20 = load %struct.demuxer*, %struct.demuxer** %7, align 8
  %21 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load %struct.demuxer*, %struct.demuxer** %7, align 8
  %28 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.demuxer*, %struct.demuxer** %7, align 8
  %33 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %31, %26, %3
  %38 = phi i1 [ false, %26 ], [ false, %3 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %104, %37
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %43 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %107

46:                                               ; preds = %40
  %47 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %48 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %47, i32 0, i32 5
  %49 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %49, i64 %51
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.demux_stream*, %struct.demux_stream** %54, align 8
  store %struct.demux_stream* %55, %struct.demux_stream** %12, align 8
  %56 = load %struct.demux_stream*, %struct.demux_stream** %12, align 8
  %57 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %46
  br label %104

61:                                               ; preds = %46
  %62 = load %struct.demux_stream*, %struct.demux_stream** %12, align 8
  %63 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @STREAM_VIDEO, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.demux_stream*, %struct.demux_stream** %12, align 8
  %69 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @STREAM_AUDIO, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67, %61
  %74 = load double, double* %6, align 8
  %75 = load %struct.demux_stream*, %struct.demux_stream** %12, align 8
  %76 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = call double @MP_PTS_MIN(double %74, i32 %77)
  store double %78, double* %6, align 8
  br label %79

79:                                               ; preds = %73, %67
  %80 = load %struct.demux_stream*, %struct.demux_stream** %5, align 8
  %81 = load %struct.demux_stream*, %struct.demux_stream** %12, align 8
  %82 = icmp eq %struct.demux_stream* %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %9, align 4
  %86 = load %struct.demux_stream*, %struct.demux_stream** %12, align 8
  %87 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %86, i32 0, i32 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %79
  %93 = load %struct.demux_stream*, %struct.demux_stream** %12, align 8
  %94 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %93, i32 0, i32 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br label %99

99:                                               ; preds = %92, %79
  %100 = phi i1 [ true, %79 ], [ %98, %92 ]
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %10, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %99, %60
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %40

107:                                              ; preds = %40
  %108 = load double, double* %6, align 8
  %109 = load double, double* @MP_NOPTS_VALUE, align 8
  %110 = fcmp oeq double %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111, %107
  br label %222

115:                                              ; preds = %111
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %210, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %123 = call i32 (%struct.demux_internal*, i8*, ...) @MP_VERBOSE(%struct.demux_internal* %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %222

124:                                              ; preds = %118
  store i32 0, i32* %13, align 4
  br label %125

125:                                              ; preds = %204, %124
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %128 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %207

131:                                              ; preds = %125
  %132 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %133 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %132, i32 0, i32 5
  %134 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %134, i64 %136
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load %struct.demux_stream*, %struct.demux_stream** %139, align 8
  store %struct.demux_stream* %140, %struct.demux_stream** %14, align 8
  %141 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %142 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %141, i32 0, i32 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %15, align 4
  %146 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %147 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %146, i32 0, i32 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %16, align 4
  %151 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %152 = call i32 @ds_clear_reader_queue_state(%struct.demux_stream* %151)
  %153 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %154 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %153, i32 0, i32 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = call i32 @clear_queue(%struct.TYPE_6__* %155)
  %157 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %158 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %199

161:                                              ; preds = %131
  %162 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %163 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, -1
  br i1 %165, label %172, label %166

166:                                              ; preds = %161
  %167 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %168 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %167, i32 0, i32 2
  %169 = load double, double* %168, align 8
  %170 = load double, double* @MP_NOPTS_VALUE, align 8
  %171 = fcmp une double %169, %170
  br i1 %171, label %172, label %199

172:                                              ; preds = %166, %161
  %173 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %174 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %173, i32 0, i32 3
  store i32 1, i32* %174, align 8
  %175 = load i32, i32* %16, align 4
  %176 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %177 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %176, i32 0, i32 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  store i32 %175, i32* %179, align 8
  %180 = load i32, i32* %15, align 4
  %181 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %182 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %181, i32 0, i32 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  store i32 %180, i32* %184, align 4
  %185 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %186 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %189 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %188, i32 0, i32 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  store i32 %187, i32* %191, align 8
  %192 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %193 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %192, i32 0, i32 2
  %194 = load double, double* %193, align 8
  %195 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %196 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %195, i32 0, i32 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 3
  store double %194, double* %198, align 8
  br label %199

199:                                              ; preds = %172, %166, %131
  %200 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %201 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @update_seek_ranges(i32 %202)
  br label %204

204:                                              ; preds = %199
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %13, align 4
  br label %125

207:                                              ; preds = %125
  %208 = load double, double* %6, align 8
  %209 = fsub double %208, 1.000000e+00
  store double %209, double* %6, align 8
  br label %210

210:                                              ; preds = %207, %115
  %211 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %212 = load double, double* %6, align 8
  %213 = call i32 (%struct.demux_internal*, i8*, ...) @MP_VERBOSE(%struct.demux_internal* %211, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), double %212)
  %214 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %215 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %214, i32 0, i32 1
  store i32 1, i32* %215, align 4
  %216 = load i32, i32* @SEEK_HR, align 4
  %217 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %218 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 8
  %219 = load double, double* %6, align 8
  %220 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %221 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %220, i32 0, i32 2
  store double %219, double* %221, align 8
  br label %222

222:                                              ; preds = %210, %121, %114
  ret void
}

declare dso_local double @MP_PTS_MIN(double, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.demux_internal*, i8*, ...) #1

declare dso_local i32 @ds_clear_reader_queue_state(%struct.demux_stream*) #1

declare dso_local i32 @clear_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @update_seek_ranges(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
