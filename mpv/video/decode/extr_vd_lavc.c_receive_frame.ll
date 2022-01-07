; ModuleID = '/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_receive_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_receive_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, i32, %struct.demux_packet**, %struct.TYPE_3__, i64, i64, i64, i32, %struct.mp_image**, %struct.demux_packet**, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.mp_image = type { i64 }
%struct.demux_packet = type { i32 }
%struct.mp_frame = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Could not copy back hardware decoded frame.\0A\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Using hardware decoding (%s).\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Using software decoding.\0A\00", align 1
@MP_FRAME_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*, %struct.mp_frame*)* @receive_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_frame(%struct.mp_filter* %0, %struct.mp_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.mp_frame*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.demux_packet**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mp_image*, align 8
  %11 = alloca %struct.mp_image*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mp_frame, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store %struct.mp_frame* %1, %struct.mp_frame** %5, align 8
  %14 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %15 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %6, align 8
  %17 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %18 = call i32 @decode_frame(%struct.mp_filter* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 14
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 6
  %26 = load %struct.demux_packet**, %struct.demux_packet*** %25, align 8
  store %struct.demux_packet** %26, %struct.demux_packet*** %8, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 6
  store %struct.demux_packet** null, %struct.demux_packet*** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %35 = call i32 @force_fallback(%struct.mp_filter* %34)
  %36 = load %struct.demux_packet**, %struct.demux_packet*** %8, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 13
  store %struct.demux_packet** %36, %struct.demux_packet*** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %202

42:                                               ; preds = %2
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = call i32 @AVERROR(i32 %44)
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %202

53:                                               ; preds = %47, %42
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %202

60:                                               ; preds = %53
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %63, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @AVERROR_EOF, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @EAGAIN, align 4
  %74 = call i32 @AVERROR(i32 %73)
  store i32 %74, i32* %3, align 4
  br label %202

75:                                               ; preds = %68, %60
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 12
  %78 = load %struct.mp_image**, %struct.mp_image*** %77, align 8
  %79 = getelementptr inbounds %struct.mp_image*, %struct.mp_image** %78, i64 0
  %80 = load %struct.mp_image*, %struct.mp_image** %79, align 8
  store %struct.mp_image* %80, %struct.mp_image** %10, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 12
  %83 = load %struct.mp_image**, %struct.mp_image*** %82, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @MP_TARRAY_REMOVE_AT(%struct.mp_image** %83, i64 %86, i32 0)
  %88 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %89 = icmp ne %struct.mp_image* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %75
  %91 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %92 = call %struct.mp_image* @mp_img_swap_to_native(%struct.mp_image* %91)
  br label %94

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93, %90
  %95 = phi %struct.mp_image* [ %92, %90 ], [ null, %93 ]
  store %struct.mp_image* %95, %struct.mp_image** %10, align 8
  %96 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %97 = icmp ne %struct.mp_image* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %99, i32* %3, align 4
  br label %202

100:                                              ; preds = %94
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %137

105:                                              ; preds = %100
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %137

111:                                              ; preds = %105
  %112 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %113 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %137

116:                                              ; preds = %111
  %117 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 11
  %120 = load i32, i32* %119, align 8
  %121 = call %struct.mp_image* @mp_image_hw_download(%struct.mp_image* %117, i32 %120)
  store %struct.mp_image* %121, %struct.mp_image** %11, align 8
  %122 = call i32 @mp_image_unrefp(%struct.mp_image** %10)
  %123 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  store %struct.mp_image* %123, %struct.mp_image** %10, align 8
  %124 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %125 = icmp ne %struct.mp_image* %124, null
  br i1 %125, label %136, label %126

126:                                              ; preds = %116
  %127 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %128 = call i32 @MP_ERR(%struct.mp_filter* %127, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %129 = load i64, i64* @INT_MAX, align 8
  %130 = sub nsw i64 %129, 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 10
  store i64 %130, i64* %132, align 8
  %133 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %134 = call i32 @handle_err(%struct.mp_filter* %133)
  %135 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %135, i32* %3, align 4
  br label %202

136:                                              ; preds = %116
  br label %137

137:                                              ; preds = %136, %111, %105, %100
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %165, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %165

147:                                              ; preds = %142
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 8
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %147
  %153 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @MP_INFO(%struct.mp_filter* %153, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  br label %162

159:                                              ; preds = %147
  %160 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %161 = call i32 @MP_VERBOSE(%struct.mp_filter* %160, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %152
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 4
  store i32 1, i32* %164, align 8
  br label %165

165:                                              ; preds = %162, %142, %137
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %194

170:                                              ; preds = %165
  store i32 0, i32* %12, align 4
  br label %171

171:                                              ; preds = %186, %170
  %172 = load i32, i32* %12, align 4
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %189

177:                                              ; preds = %171
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 6
  %180 = load %struct.demux_packet**, %struct.demux_packet*** %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.demux_packet*, %struct.demux_packet** %180, i64 %182
  %184 = load %struct.demux_packet*, %struct.demux_packet** %183, align 8
  %185 = call i32 @talloc_free(%struct.demux_packet* %184)
  br label %186

186:                                              ; preds = %177
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %171

189:                                              ; preds = %171
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 5
  store i32 0, i32* %193, align 4
  br label %194

194:                                              ; preds = %189, %165
  %195 = load %struct.mp_frame*, %struct.mp_frame** %5, align 8
  %196 = load i32, i32* @MP_FRAME_VIDEO, align 4
  %197 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %198 = call i32 @MAKE_FRAME(i32 %196, %struct.mp_image* %197)
  %199 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %13, i32 0, i32 0
  store i32 %198, i32* %199, align 4
  %200 = bitcast %struct.mp_frame* %195 to i8*
  %201 = bitcast %struct.mp_frame* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %200, i8* align 4 %201, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %194, %126, %98, %72, %58, %52, %23
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @decode_frame(%struct.mp_filter*) #1

declare dso_local i32 @force_fallback(%struct.mp_filter*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.mp_image**, i64, i32) #1

declare dso_local %struct.mp_image* @mp_img_swap_to_native(%struct.mp_image*) #1

declare dso_local %struct.mp_image* @mp_image_hw_download(%struct.mp_image*, i32) #1

declare dso_local i32 @mp_image_unrefp(%struct.mp_image**) #1

declare dso_local i32 @MP_ERR(%struct.mp_filter*, i8*) #1

declare dso_local i32 @handle_err(%struct.mp_filter*) #1

declare dso_local i32 @MP_INFO(%struct.mp_filter*, i8*, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.mp_filter*, i8*) #1

declare dso_local i32 @talloc_free(%struct.demux_packet*) #1

declare dso_local i32 @MAKE_FRAME(i32, %struct.mp_image*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
