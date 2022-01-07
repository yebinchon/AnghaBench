; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_feed_input_pads.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_feed_input_pads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lavfi = type { i32, i32, i32, i32, i32, i64, %struct.lavfi_pad**, i32 }
%struct.lavfi_pad = type { i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.mp_aframe* }
%struct.mp_aframe = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"eof state changed on %s\0A\00", align 1
@MP_FRAME_AUDIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [83 x i8] c"speed changing filters before libavfilter are not supported and can cause desyncs\0A\00", align 1
@MP_FRAME_EOF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"out of memory or unsupported format\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"could not pass frame to filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lavfi*)* @feed_input_pads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feed_input_pads(%struct.lavfi* %0) #0 {
  %2 = alloca %struct.lavfi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lavfi_pad*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mp_aframe*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mp_aframe*, align 8
  store %struct.lavfi* %0, %struct.lavfi** %2, align 8
  store i32 0, i32* %3, align 4
  %12 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %13 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %16 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @assert(i32 %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %179, %1
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %22 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %182

25:                                               ; preds = %19
  %26 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %27 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %26, i32 0, i32 6
  %28 = load %struct.lavfi_pad**, %struct.lavfi_pad*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.lavfi_pad*, %struct.lavfi_pad** %28, i64 %30
  %32 = load %struct.lavfi_pad*, %struct.lavfi_pad** %31, align 8
  store %struct.lavfi_pad* %32, %struct.lavfi_pad** %6, align 8
  store i32 1, i32* %7, align 4
  %33 = load %struct.lavfi_pad*, %struct.lavfi_pad** %6, align 8
  %34 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %25
  %41 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %42 = load %struct.lavfi_pad*, %struct.lavfi_pad** %6, align 8
  %43 = call i32 @read_pad_input(%struct.lavfi* %41, %struct.lavfi_pad* %42)
  br label %44

44:                                               ; preds = %40, %25
  %45 = load %struct.lavfi_pad*, %struct.lavfi_pad** %6, align 8
  %46 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %52 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %44
  br label %179

56:                                               ; preds = %50
  %57 = load %struct.lavfi_pad*, %struct.lavfi_pad** %6, align 8
  %58 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %63 = load %struct.lavfi_pad*, %struct.lavfi_pad** %6, align 8
  %64 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @MP_WARN(%struct.lavfi* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %68 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %70 = call i32 @send_global_eof(%struct.lavfi* %69)
  br label %179

71:                                               ; preds = %56
  %72 = load %struct.lavfi_pad*, %struct.lavfi_pad** %6, align 8
  %73 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MP_FRAME_AUDIO, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %71
  %79 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %80 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %78
  %84 = load %struct.lavfi_pad*, %struct.lavfi_pad** %6, align 8
  %85 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load %struct.mp_aframe*, %struct.mp_aframe** %86, align 8
  store %struct.mp_aframe* %87, %struct.mp_aframe** %8, align 8
  %88 = load %struct.mp_aframe*, %struct.mp_aframe** %8, align 8
  %89 = call double @mp_aframe_get_speed(%struct.mp_aframe* %88)
  %90 = fcmp une double %89, 1.000000e+00
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %93 = call i32 @MP_ERR(%struct.lavfi* %92, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  %94 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %95 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %94, i32 0, i32 2
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %91, %83
  br label %97

97:                                               ; preds = %96, %78, %71
  %98 = load %struct.lavfi_pad*, %struct.lavfi_pad** %6, align 8
  %99 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %98, i32 0, i32 2
  %100 = load %struct.lavfi_pad*, %struct.lavfi_pad** %6, align 8
  %101 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %100, i32 0, i32 3
  %102 = bitcast %struct.TYPE_8__* %99 to { i64, %struct.mp_aframe* }*
  %103 = getelementptr inbounds { i64, %struct.mp_aframe* }, { i64, %struct.mp_aframe* }* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds { i64, %struct.mp_aframe* }, { i64, %struct.mp_aframe* }* %102, i32 0, i32 1
  %106 = load %struct.mp_aframe*, %struct.mp_aframe** %105, align 8
  %107 = call %struct.TYPE_7__* @mp_frame_to_av(i64 %104, %struct.mp_aframe* %106, i32* %101)
  store %struct.TYPE_7__* %107, %struct.TYPE_7__** %9, align 8
  %108 = load %struct.lavfi_pad*, %struct.lavfi_pad** %6, align 8
  %109 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @MP_FRAME_EOF, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %10, align 4
  %115 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %116 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %149

119:                                              ; preds = %97
  %120 = load %struct.lavfi_pad*, %struct.lavfi_pad** %6, align 8
  %121 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @MP_FRAME_AUDIO, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %149

126:                                              ; preds = %119
  %127 = load %struct.lavfi_pad*, %struct.lavfi_pad** %6, align 8
  %128 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load %struct.mp_aframe*, %struct.mp_aframe** %129, align 8
  store %struct.mp_aframe* %130, %struct.mp_aframe** %11, align 8
  %131 = load %struct.mp_aframe*, %struct.mp_aframe** %11, align 8
  %132 = call i32 @mp_aframe_end_pts(%struct.mp_aframe* %131)
  %133 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %134 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %136 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %144 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %142
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %144, align 4
  br label %149

149:                                              ; preds = %126, %119, %97
  %150 = load %struct.lavfi_pad*, %struct.lavfi_pad** %6, align 8
  %151 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %150, i32 0, i32 2
  %152 = call i32 @mp_frame_unref(%struct.TYPE_8__* %151)
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %154 = icmp ne %struct.TYPE_7__* %153, null
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %160 = call i32 @MP_FATAL(%struct.lavfi* %159, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %179

161:                                              ; preds = %155, %149
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %163 = icmp ne %struct.TYPE_7__* %162, null
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = load %struct.lavfi_pad*, %struct.lavfi_pad** %6, align 8
  %167 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load %struct.lavfi_pad*, %struct.lavfi_pad** %6, align 8
  %169 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %172 = call i64 @av_buffersrc_add_frame(i32 %170, %struct.TYPE_7__* %171)
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %161
  %175 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %176 = call i32 @MP_FATAL(%struct.lavfi* %175, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %161
  %178 = call i32 @av_frame_free(%struct.TYPE_7__** %9)
  store i32 1, i32* %3, align 4
  br label %179

179:                                              ; preds = %177, %158, %61, %55
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %19

182:                                              ; preds = %19
  %183 = load i32, i32* %4, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %182
  %186 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %187 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  store i32 1, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %185, %182
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_pad_input(%struct.lavfi*, %struct.lavfi_pad*) #1

declare dso_local i32 @MP_WARN(%struct.lavfi*, i8*, i32) #1

declare dso_local i32 @send_global_eof(%struct.lavfi*) #1

declare dso_local double @mp_aframe_get_speed(%struct.mp_aframe*) #1

declare dso_local i32 @MP_ERR(%struct.lavfi*, i8*) #1

declare dso_local %struct.TYPE_7__* @mp_frame_to_av(i64, %struct.mp_aframe*, i32*) #1

declare dso_local i32 @mp_aframe_end_pts(%struct.mp_aframe*) #1

declare dso_local i32 @mp_frame_unref(%struct.TYPE_8__*) #1

declare dso_local i32 @MP_FATAL(%struct.lavfi*, i8*) #1

declare dso_local i64 @av_buffersrc_add_frame(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
