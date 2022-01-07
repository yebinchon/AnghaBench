; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_lavc_conv.c_lavc_conv_decode.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_lavc_conv.c_lavc_conv_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lavc_conv = type { i8**, %struct.TYPE_15__, i32, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { double, double, i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i64, i64, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.demux_packet = type { double }
%struct.TYPE_13__ = type { i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"webvtt-webm\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Error parsing subtitle\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Error decoding subtitle\0A\00", align 1
@UINT32_MAX = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Ignoring bitmap subtitle.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @lavc_conv_decode(%struct.lavc_conv* %0, %struct.demux_packet* %1, double* %2, double* %3) #0 {
  %5 = alloca %struct.lavc_conv*, align 8
  %6 = alloca %struct.demux_packet*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.lavc_conv* %0, %struct.lavc_conv** %5, align 8
  store %struct.demux_packet* %1, %struct.demux_packet** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %17 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %18 = getelementptr inbounds %struct.lavc_conv, %struct.lavc_conv* %17, i32 0, i32 3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %9, align 8
  %20 = bitcast %struct.TYPE_13__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 16, i1 false)
  store i32 0, i32* %14, align 4
  %21 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %22 = getelementptr inbounds %struct.lavc_conv, %struct.lavc_conv* %21, i32 0, i32 1
  %23 = call i32 @avsubtitle_free(%struct.TYPE_15__* %22)
  %24 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = call i32 @mp_set_av_packet(%struct.TYPE_13__* %10, %struct.demux_packet* %24, i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %31, %4
  %34 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %35 = getelementptr inbounds %struct.lavc_conv, %struct.lavc_conv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @strcmp(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = call i64 @parse_webvtt(%struct.TYPE_13__* %10, %struct.TYPE_13__* %11)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %44 = call i32 @MP_ERR(%struct.lavc_conv* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %160

45:                                               ; preds = %39
  %46 = bitcast %struct.TYPE_13__* %10 to i8*
  %47 = bitcast %struct.TYPE_13__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  br label %48

48:                                               ; preds = %45, %33
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %50 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %51 = getelementptr inbounds %struct.lavc_conv, %struct.lavc_conv* %50, i32 0, i32 1
  %52 = call i32 @avcodec_decode_subtitle2(%struct.TYPE_14__* %49, %struct.TYPE_15__* %51, i32* %13, %struct.TYPE_13__* %10)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %57 = call i32 @MP_ERR(%struct.lavc_conv* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %159

58:                                               ; preds = %48
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %158

61:                                               ; preds = %58
  %62 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %63 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %62, i32 0, i32 0
  %64 = load double, double* %63, align 8
  %65 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %66 = getelementptr inbounds %struct.lavc_conv, %struct.lavc_conv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load double, double* %67, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = call double @mp_pts_from_av(double %68, i32* %70)
  %72 = fadd double %64, %71
  %73 = load double*, double** %7, align 8
  store double %72, double* %73, align 8
  %74 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %75 = getelementptr inbounds %struct.lavc_conv, %struct.lavc_conv* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load double, double* %76, align 8
  %78 = load double, double* @UINT32_MAX, align 8
  %79 = fcmp oeq double %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %61
  %81 = load double, double* @UINT32_MAX, align 8
  br label %95

82:                                               ; preds = %61
  %83 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %84 = getelementptr inbounds %struct.lavc_conv, %struct.lavc_conv* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load double, double* %85, align 8
  %87 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %88 = getelementptr inbounds %struct.lavc_conv, %struct.lavc_conv* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load double, double* %89, align 8
  %91 = fsub double %86, %90
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = call double @mp_pts_from_av(double %91, i32* %93)
  br label %95

95:                                               ; preds = %82, %80
  %96 = phi double [ %81, %80 ], [ %94, %82 ]
  %97 = load double*, double** %8, align 8
  store double %96, double* %97, align 8
  store i32 0, i32* %15, align 4
  br label %98

98:                                               ; preds = %154, %95
  %99 = load i32, i32* %15, align 4
  %100 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %101 = getelementptr inbounds %struct.lavc_conv, %struct.lavc_conv* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %157

105:                                              ; preds = %98
  %106 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %107 = getelementptr inbounds %struct.lavc_conv, %struct.lavc_conv* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %108, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %109, i64 %111
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %105
  %118 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %119 = getelementptr inbounds %struct.lavc_conv, %struct.lavc_conv* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %121, i64 %123
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %117
  %130 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %131 = call i32 @MP_WARN(%struct.lavc_conv* %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %117, %105
  %133 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %134 = getelementptr inbounds %struct.lavc_conv, %struct.lavc_conv* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %136, i64 %138
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  store i8* %142, i8** %16, align 8
  %143 = load i8*, i8** %16, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %132
  br label %154

146:                                              ; preds = %132
  %147 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %148 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %149 = getelementptr inbounds %struct.lavc_conv, %struct.lavc_conv* %148, i32 0, i32 0
  %150 = load i8**, i8*** %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = load i8*, i8** %16, align 8
  %153 = call i32 @MP_TARRAY_APPEND(%struct.lavc_conv* %147, i8** %150, i32 %151, i8* %152)
  br label %154

154:                                              ; preds = %146, %145
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %15, align 4
  br label %98

157:                                              ; preds = %98
  br label %158

158:                                              ; preds = %157, %58
  br label %159

159:                                              ; preds = %158, %55
  br label %160

160:                                              ; preds = %159, %42
  %161 = call i32 @av_packet_unref(%struct.TYPE_13__* %11)
  %162 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %163 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %164 = getelementptr inbounds %struct.lavc_conv, %struct.lavc_conv* %163, i32 0, i32 0
  %165 = load i8**, i8*** %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @MP_TARRAY_APPEND(%struct.lavc_conv* %162, i8** %165, i32 %166, i8* null)
  %168 = load %struct.lavc_conv*, %struct.lavc_conv** %5, align 8
  %169 = getelementptr inbounds %struct.lavc_conv, %struct.lavc_conv* %168, i32 0, i32 0
  %170 = load i8**, i8*** %169, align 8
  ret i8** %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @avsubtitle_free(%struct.TYPE_15__*) #2

declare dso_local i32 @mp_set_av_packet(%struct.TYPE_13__*, %struct.demux_packet*, i32*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i64 @parse_webvtt(%struct.TYPE_13__*, %struct.TYPE_13__*) #2

declare dso_local i32 @MP_ERR(%struct.lavc_conv*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @avcodec_decode_subtitle2(%struct.TYPE_14__*, %struct.TYPE_15__*, i32*, %struct.TYPE_13__*) #2

declare dso_local double @mp_pts_from_av(double, i32*) #2

declare dso_local i32 @MP_WARN(%struct.lavc_conv*, i8*) #2

declare dso_local i32 @MP_TARRAY_APPEND(%struct.lavc_conv*, i8**, i32, i8*) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
