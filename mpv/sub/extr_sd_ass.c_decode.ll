; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_decode.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_6__*, %struct.sd_ass_priv* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.sd_ass_priv = type { i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.demux_packet = type { i64, i32, i8*, i32, i32 }

@UINT32_MAX = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [33 x i8] c"Subtitle with unknown duration.\0A\00", align 1
@UNKNOWN_DURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, %struct.demux_packet*)* @decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode(%struct.sd* %0, %struct.demux_packet* %1) #0 {
  %3 = alloca %struct.sd*, align 8
  %4 = alloca %struct.demux_packet*, align 8
  %5 = alloca %struct.sd_ass_priv*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store %struct.demux_packet* %1, %struct.demux_packet** %4, align 8
  %15 = load %struct.sd*, %struct.sd** %3, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 1
  %17 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %16, align 8
  store %struct.sd_ass_priv* %17, %struct.sd_ass_priv** %5, align 8
  %18 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %5, align 8
  %19 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %6, align 8
  %21 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %5, align 8
  %22 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %192

25:                                               ; preds = %2
  %26 = load %struct.sd*, %struct.sd** %3, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %25
  %33 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %34 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %40 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @check_packet_seen(%struct.sd* %38, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %250

45:                                               ; preds = %37, %32, %25
  store double 0.000000e+00, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %46 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %5, align 8
  %47 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %50 = call i8** @lavc_conv_decode(i64 %48, %struct.demux_packet* %49, double* %7, double* %8)
  store i8** %50, i8*** %9, align 8
  %51 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %52 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  %56 = load double, double* %8, align 8
  %57 = load double, double* @UINT32_MAX, align 8
  %58 = fcmp oeq double %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55, %45
  %60 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %5, align 8
  %61 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.sd*, %struct.sd** %3, align 8
  %66 = call i32 @MP_WARN(%struct.sd* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %5, align 8
  %68 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i32, i32* @UNKNOWN_DURATION, align 4
  %71 = sitofp i32 %70 to double
  store double %71, double* %8, align 8
  br label %72

72:                                               ; preds = %69, %55
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %132, %72
  %74 = load i8**, i8*** %9, align 8
  %75 = icmp ne i8** %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i8**, i8*** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br label %83

83:                                               ; preds = %76, %73
  %84 = phi i1 [ false, %73 ], [ %82, %76 ]
  br i1 %84, label %85, label %135

85:                                               ; preds = %83
  %86 = load i8**, i8*** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %11, align 8
  %91 = load %struct.sd*, %struct.sd** %3, align 8
  %92 = getelementptr inbounds %struct.sd, %struct.sd* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %85
  %98 = load %struct.sd*, %struct.sd** %3, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %11, align 8
  %103 = call i8* @filter_SDH(%struct.sd* %98, i32 %101, i32 0, i8* %102, i32 0)
  store i8* %103, i8** %11, align 8
  br label %104

104:                                              ; preds = %97, %85
  %105 = load i8*, i8** %11, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 @strlen(i8* %110)
  %112 = load double, double* %7, align 8
  %113 = fmul double %112, 1.000000e+03
  %114 = fptosi double %113 to i32
  %115 = call i32 @llrint(i32 %114)
  %116 = load double, double* %8, align 8
  %117 = fmul double %116, 1.000000e+03
  %118 = fptosi double %117 to i32
  %119 = call i32 @llrint(i32 %118)
  %120 = call i32 @ass_process_chunk(%struct.TYPE_7__* %108, i8* %109, i32 %111, i32 %115, i32 %119)
  br label %121

121:                                              ; preds = %107, %104
  %122 = load %struct.sd*, %struct.sd** %3, align 8
  %123 = getelementptr inbounds %struct.sd, %struct.sd* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i8*, i8** %11, align 8
  %130 = call i32 @talloc_free(i8* %129)
  br label %131

131:                                              ; preds = %128, %121
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %73

135:                                              ; preds = %83
  %136 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %5, align 8
  %137 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %191

140:                                              ; preds = %135
  store i32 0, i32* %12, align 4
  br label %141

141:                                              ; preds = %187, %140
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %145, 1
  %147 = icmp slt i32 %142, %146
  br i1 %147, label %148, label %190

148:                                              ; preds = %141
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @UNKNOWN_DURATION, align 4
  %158 = mul nsw i32 %157, 1000
  %159 = icmp eq i32 %156, %158
  br i1 %159, label %160, label %186

160:                                              ; preds = %148
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %169, %177
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  store i32 %178, i32* %185, align 4
  br label %186

186:                                              ; preds = %160, %148
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %141

190:                                              ; preds = %141
  br label %191

191:                                              ; preds = %190, %135
  br label %250

192:                                              ; preds = %2
  %193 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %194 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %13, align 8
  %196 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %197 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  store i32 %198, i32* %14, align 4
  %199 = load %struct.sd*, %struct.sd** %3, align 8
  %200 = getelementptr inbounds %struct.sd, %struct.sd* %199, i32 0, i32 0
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %221

205:                                              ; preds = %192
  %206 = load %struct.sd*, %struct.sd** %3, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i8*, i8** %13, align 8
  %211 = load i32, i32* %14, align 4
  %212 = call i8* @filter_SDH(%struct.sd* %206, i32 %209, i32 1, i8* %210, i32 %211)
  store i8* %212, i8** %13, align 8
  %213 = load i8*, i8** %13, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %205
  %216 = load i8*, i8** %13, align 8
  %217 = call i32 @strlen(i8* %216)
  br label %219

218:                                              ; preds = %205
  br label %219

219:                                              ; preds = %218, %215
  %220 = phi i32 [ %217, %215 ], [ 0, %218 ]
  store i32 %220, i32* %14, align 4
  br label %221

221:                                              ; preds = %219, %192
  %222 = load i8*, i8** %13, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %239

224:                                              ; preds = %221
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %226 = load i8*, i8** %13, align 8
  %227 = load i32, i32* %14, align 4
  %228 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %229 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = mul nsw i32 %230, 1000
  %232 = call i32 @llrint(i32 %231)
  %233 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %234 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = mul nsw i32 %235, 1000
  %237 = call i32 @llrint(i32 %236)
  %238 = call i32 @ass_process_chunk(%struct.TYPE_7__* %225, i8* %226, i32 %227, i32 %232, i32 %237)
  br label %239

239:                                              ; preds = %224, %221
  %240 = load %struct.sd*, %struct.sd** %3, align 8
  %241 = getelementptr inbounds %struct.sd, %struct.sd* %240, i32 0, i32 0
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %239
  %247 = load i8*, i8** %13, align 8
  %248 = call i32 @talloc_free(i8* %247)
  br label %249

249:                                              ; preds = %246, %239
  br label %250

250:                                              ; preds = %44, %249, %191
  ret void
}

declare dso_local i64 @check_packet_seen(%struct.sd*, i64) #1

declare dso_local i8** @lavc_conv_decode(i64, %struct.demux_packet*, double*, double*) #1

declare dso_local i32 @MP_WARN(%struct.sd*, i8*) #1

declare dso_local i8* @filter_SDH(%struct.sd*, i32, i32, i8*, i32) #1

declare dso_local i32 @ass_process_chunk(%struct.TYPE_7__*, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @llrint(i32) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
