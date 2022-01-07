; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11.c_parse_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11.c_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_qsv = type { %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.encoder_packet = type { i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32, i32* }

@OBS_ENCODER_VIDEO = common dso_local global i32 0, align 4
@MFX_FRAMETYPE_IDR = common dso_local global i32 0, align 4
@MFX_FRAMETYPE_I = common dso_local global i32 0, align 4
@OBS_NAL_PRIORITY_HIGHEST = common dso_local global i32 0, align 4
@MFX_FRAMETYPE_P = common dso_local global i32 0, align 4
@MFX_FRAMETYPE_REF = common dso_local global i32 0, align 4
@OBS_NAL_PRIORITY_HIGH = common dso_local global i32 0, align 4
@OBS_NAL_SLICE_IDR = common dso_local global i32 0, align 4
@OBS_NAL_SLICE = common dso_local global i32 0, align 4
@g_pts2dtsShift = common dso_local global i64 0, align 8
@g_bFirst = common dso_local global i32 0, align 4
@g_prevDts = common dso_local global i32 0, align 4
@iType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_qsv*, %struct.encoder_packet*, %struct.TYPE_7__*, i32, i32*)* @parse_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_packet(%struct.obs_qsv* %0, %struct.encoder_packet* %1, %struct.TYPE_7__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.obs_qsv*, align 8
  %7 = alloca %struct.encoder_packet*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.obs_qsv* %0, %struct.obs_qsv** %6, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = icmp eq %struct.TYPE_7__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %5
  %25 = load i32*, i32** %10, align 8
  store i32 0, i32* %25, align 4
  br label %240

26:                                               ; preds = %19
  %27 = load %struct.obs_qsv*, %struct.obs_qsv** %6, align 8
  %28 = getelementptr inbounds %struct.obs_qsv, %struct.obs_qsv* %27, i32 0, i32 1
  %29 = bitcast %struct.TYPE_8__* %28 to { i32*, i32 }*
  %30 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %29, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @da_resize(i32* %31, i32 %33, i32 0)
  %35 = load %struct.obs_qsv*, %struct.obs_qsv** %6, align 8
  %36 = getelementptr inbounds %struct.obs_qsv, %struct.obs_qsv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = bitcast %struct.TYPE_8__* %36 to { i32*, i32 }*
  %48 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %47, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @da_push_back_array(i32* %49, i32 %51, i32* %43, i64 %46)
  %53 = load %struct.obs_qsv*, %struct.obs_qsv** %6, align 8
  %54 = getelementptr inbounds %struct.obs_qsv, %struct.obs_qsv* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %58 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %57, i32 0, i32 0
  store i32* %56, i32** %58, align 8
  %59 = load %struct.obs_qsv*, %struct.obs_qsv** %6, align 8
  %60 = getelementptr inbounds %struct.obs_qsv, %struct.obs_qsv* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %64 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @OBS_ENCODER_VIDEO, align 4
  %66 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %67 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sdiv i32 %72, 90000
  %74 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %75 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MFX_FRAMETYPE_IDR, align 4
  %80 = and i32 %78, %79
  %81 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %82 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @MFX_FRAMETYPE_I, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %26
  %91 = load i32, i32* @OBS_NAL_PRIORITY_HIGHEST, align 4
  store i32 %91, i32* %15, align 4
  br label %106

92:                                               ; preds = %26
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @MFX_FRAMETYPE_P, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @MFX_FRAMETYPE_REF, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97, %92
  %103 = load i32, i32* @OBS_NAL_PRIORITY_HIGH, align 4
  store i32 %103, i32* %15, align 4
  br label %105

104:                                              ; preds = %97
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %104, %102
  br label %106

106:                                              ; preds = %105, %90
  %107 = load i32, i32* %15, align 4
  %108 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %109 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load %struct.obs_qsv*, %struct.obs_qsv** %6, align 8
  %111 = getelementptr inbounds %struct.obs_qsv, %struct.obs_qsv* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %11, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load %struct.obs_qsv*, %struct.obs_qsv** %6, align 8
  %116 = getelementptr inbounds %struct.obs_qsv, %struct.obs_qsv* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %114, i64 %119
  store i32* %120, i32** %12, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = call i64 @obs_avc_find_startcode(i32* %121, i32* %122)
  %124 = inttoptr i64 %123 to i32*
  store i32* %124, i32** %11, align 8
  br label %125

125:                                              ; preds = %106, %167
  br label %126

126:                                              ; preds = %138, %125
  %127 = load i32*, i32** %11, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = icmp ult i32* %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i32*, i32** %11, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %11, align 8
  %133 = load i32, i32* %131, align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  br label %136

136:                                              ; preds = %130, %126
  %137 = phi i1 [ false, %126 ], [ %135, %130 ]
  br i1 %137, label %138, label %139

138:                                              ; preds = %136
  br label %126

139:                                              ; preds = %136
  %140 = load i32*, i32** %11, align 8
  %141 = load i32*, i32** %12, align 8
  %142 = icmp eq i32* %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  br label %172

144:                                              ; preds = %139
  %145 = load i32*, i32** %11, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 31
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @OBS_NAL_SLICE_IDR, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %144
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* @OBS_NAL_SLICE, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %152, %144
  %157 = load i32*, i32** %11, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, -97
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %15, align 4
  %162 = shl i32 %161, 5
  %163 = load i32*, i32** %11, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %156, %152
  %168 = load i32*, i32** %11, align 8
  %169 = load i32*, i32** %12, align 8
  %170 = call i64 @obs_avc_find_startcode(i32* %168, i32* %169)
  %171 = inttoptr i64 %170 to i32*
  store i32* %171, i32** %11, align 8
  br label %125

172:                                              ; preds = %143
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @MFX_FRAMETYPE_P, align 4
  %177 = and i32 %175, %176
  store i32 %177, i32* %16, align 4
  %178 = load i64, i64* @g_pts2dtsShift, align 8
  %179 = icmp sge i64 %178, 0
  br i1 %179, label %180, label %227

180:                                              ; preds = %172
  %181 = load i32, i32* @g_bFirst, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %180
  %184 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %185 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.obs_qsv*, %struct.obs_qsv** %6, align 8
  %188 = getelementptr inbounds %struct.obs_qsv, %struct.obs_qsv* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = mul nsw i32 3, %190
  %192 = sub nsw i32 %186, %191
  %193 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %194 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %193, i32 0, i32 5
  store i32 %192, i32* %194, align 8
  br label %226

195:                                              ; preds = %180
  %196 = load i32, i32* %16, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %195
  %199 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %200 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.obs_qsv*, %struct.obs_qsv** %6, align 8
  %203 = getelementptr inbounds %struct.obs_qsv, %struct.obs_qsv* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = mul nsw i32 10, %205
  %207 = sub nsw i32 %201, %206
  %208 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %209 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 8
  %210 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %211 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  store i32 %212, i32* @g_prevDts, align 4
  br label %225

213:                                              ; preds = %195
  %214 = load i32, i32* @g_prevDts, align 4
  %215 = load %struct.obs_qsv*, %struct.obs_qsv** %6, align 8
  %216 = getelementptr inbounds %struct.obs_qsv, %struct.obs_qsv* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %214, %218
  %220 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %221 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %220, i32 0, i32 5
  store i32 %219, i32* %221, align 8
  %222 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %223 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  store i32 %224, i32* @g_prevDts, align 4
  br label %225

225:                                              ; preds = %213, %198
  br label %226

226:                                              ; preds = %225, %183
  br label %236

227:                                              ; preds = %172
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = mul nsw i32 %230, %231
  %233 = sdiv i32 %232, 90000
  %234 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %235 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %234, i32 0, i32 5
  store i32 %233, i32* %235, align 8
  br label %236

236:                                              ; preds = %227, %226
  %237 = load i32*, i32** %10, align 8
  store i32 1, i32* %237, align 4
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  store i64 0, i64* %239, align 8
  store i32 0, i32* @g_bFirst, align 4
  br label %240

240:                                              ; preds = %236, %24
  ret void
}

declare dso_local i32 @da_resize(i32*, i32, i32) #1

declare dso_local i32 @da_push_back_array(i32*, i32, i32*, i64) #1

declare dso_local i64 @obs_avc_find_startcode(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
