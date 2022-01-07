; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_utils.c_fixed_aframe_size_process.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_utils.c_fixed_aframe_size_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32*, %struct.fixed_aframe_size_priv* }
%struct.fixed_aframe_size_priv = type { i64, i64, i32*, i32, i32*, i32 }
%struct.mp_frame = type { i64, i32* }

@MP_FRAME_EOF = common dso_local global i64 0, align 8
@MP_FRAME_AUDIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"unsupported frame type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @fixed_aframe_size_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixed_aframe_size_process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.fixed_aframe_size_priv*, align 8
  %4 = alloca %struct.mp_frame, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mp_frame, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %9 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %10 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %9, i32 0, i32 1
  %11 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %10, align 8
  store %struct.fixed_aframe_size_priv* %11, %struct.fixed_aframe_size_priv** %3, align 8
  %12 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %13 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mp_pin_in_needs_data(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %305

20:                                               ; preds = %1
  %21 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %22 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %27 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @mp_aframe_get_size(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %33 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %32, i32 0, i32 4
  %34 = call i32 @TA_FREEP(i32** %33)
  br label %35

35:                                               ; preds = %31, %25, %20
  %36 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %37 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %130, label %40

40:                                               ; preds = %35
  %41 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %42 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call { i64, i32* } @mp_pin_out_read(i32 %45)
  %47 = bitcast %struct.mp_frame* %4 to { i64, i32* }*
  %48 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %47, i32 0, i32 0
  %49 = extractvalue { i64, i32* } %46, 0
  store i64 %49, i64* %48, align 8
  %50 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %47, i32 0, i32 1
  %51 = extractvalue { i64, i32* } %46, 1
  store i32* %51, i32** %50, align 8
  %52 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MP_FRAME_EOF, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %40
  %57 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %58 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %63 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = bitcast %struct.mp_frame* %4 to { i64, i32* }*
  %68 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %67, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @mp_pin_in_write(i32 %66, i64 %69, i32* %71)
  br label %305

73:                                               ; preds = %56
  %74 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %75 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @mp_pin_out_repeat_eof(i32 %78)
  br label %129

80:                                               ; preds = %40
  %81 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MP_FRAME_AUDIO, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %118

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %89 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %88, i32 0, i32 4
  store i32* %87, i32** %89, align 8
  %90 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %91 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %117

94:                                               ; preds = %85
  %95 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %96 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %99 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @mp_aframe_config_equals(i32* %97, i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %94
  %104 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %105 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = bitcast %struct.mp_frame* %4 to { i64, i32* }*
  %110 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %109, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @mp_pin_out_unread(i32 %108, i64 %111, i32* %113)
  %115 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %116 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %115, i32 0, i32 4
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %103, %94, %85
  br label %128

118:                                              ; preds = %80
  %119 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %124 = call i32 @MP_ERR(%struct.mp_filter* %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %125 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %126 = call i32 @mp_filter_internal_mark_failed(%struct.mp_filter* %125)
  br label %305

127:                                              ; preds = %118
  br label %305

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %73
  br label %130

130:                                              ; preds = %129, %35
  %131 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %132 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %215

135:                                              ; preds = %130
  %136 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %137 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %175, label %140

140:                                              ; preds = %135
  %141 = call i32* (...) @mp_aframe_create()
  %142 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %143 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %142, i32 0, i32 2
  store i32* %141, i32** %143, align 8
  %144 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %145 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %148 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @mp_aframe_config_copy(i32* %146, i32* %149)
  %151 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %152 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %155 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @mp_aframe_copy_attributes(i32* %153, i32* %156)
  %158 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %159 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %162 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %165 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i64 @mp_aframe_pool_allocate(i32 %160, i32* %163, i64 %166)
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %140
  %170 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %171 = call i32 @mp_filter_internal_mark_failed(%struct.mp_filter* %170)
  br label %305

172:                                              ; preds = %140
  %173 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %174 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %173, i32 0, i32 1
  store i64 0, i64* %174, align 8
  br label %175

175:                                              ; preds = %172, %135
  %176 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %177 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %176, i32 0, i32 4
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @mp_aframe_get_size(i32* %178)
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* %5, align 4
  %181 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %182 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %185 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = sub nsw i64 %183, %186
  %188 = call i32 @MPMIN(i32 %180, i64 %187)
  store i32 %188, i32* %6, align 4
  %189 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %190 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %193 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %196 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @mp_aframe_copy_samples(i32* %191, i64 %194, i32* %197, i32 0, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %175
  %202 = call i32 @assert(i32 0)
  br label %203

203:                                              ; preds = %201, %175
  %204 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %205 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %204, i32 0, i32 4
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @mp_aframe_skip_samples(i32* %206, i32 %207)
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %212 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, %210
  store i64 %214, i64* %212, align 8
  br label %215

215:                                              ; preds = %203, %130
  %216 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %217 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %216, i32 0, i32 4
  %218 = load i32*, i32** %217, align 8
  %219 = icmp ne i32* %218, null
  br i1 %219, label %225, label %220

220:                                              ; preds = %215
  %221 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %222 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %233, label %225

225:                                              ; preds = %220, %215
  %226 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %227 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %230 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %228, %231
  br i1 %232, label %233, label %298

233:                                              ; preds = %225, %220
  %234 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %235 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %238 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = sub nsw i64 %236, %239
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %7, align 4
  %242 = load i32, i32* %7, align 4
  %243 = icmp sge i32 %242, 0
  %244 = zext i1 %243 to i32
  %245 = call i32 @assert(i32 %244)
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %272

248:                                              ; preds = %233
  %249 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %250 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %253 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = trunc i64 %254 to i32
  %256 = load i32, i32* %7, align 4
  %257 = call i32 @mp_aframe_set_silence(i32* %251, i32 %255, i32 %256)
  %258 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %259 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %271, label %262

262:                                              ; preds = %248
  %263 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %264 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %267 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = trunc i64 %268 to i32
  %270 = call i32 @mp_aframe_set_size(i32* %265, i32 %269)
  br label %271

271:                                              ; preds = %262, %248
  br label %272

272:                                              ; preds = %271, %233
  %273 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %274 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 1
  %277 = load i32, i32* %276, align 4
  %278 = load i64, i64* @MP_FRAME_AUDIO, align 8
  %279 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %280 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %279, i32 0, i32 2
  %281 = load i32*, i32** %280, align 8
  %282 = call { i64, i32* } @MAKE_FRAME(i64 %278, i32* %281)
  %283 = bitcast %struct.mp_frame* %8 to { i64, i32* }*
  %284 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %283, i32 0, i32 0
  %285 = extractvalue { i64, i32* } %282, 0
  store i64 %285, i64* %284, align 8
  %286 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %283, i32 0, i32 1
  %287 = extractvalue { i64, i32* } %282, 1
  store i32* %287, i32** %286, align 8
  %288 = bitcast %struct.mp_frame* %8 to { i64, i32* }*
  %289 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %288, i32 0, i32 1
  %292 = load i32*, i32** %291, align 8
  %293 = call i32 @mp_pin_in_write(i32 %277, i64 %290, i32* %292)
  %294 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %295 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %294, i32 0, i32 2
  store i32* null, i32** %295, align 8
  %296 = load %struct.fixed_aframe_size_priv*, %struct.fixed_aframe_size_priv** %3, align 8
  %297 = getelementptr inbounds %struct.fixed_aframe_size_priv, %struct.fixed_aframe_size_priv* %296, i32 0, i32 1
  store i64 0, i64* %297, align 8
  br label %305

298:                                              ; preds = %225
  %299 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %300 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @mp_pin_out_request_data_next(i32 %303)
  br label %305

305:                                              ; preds = %19, %61, %122, %127, %169, %298, %272
  ret void
}

declare dso_local i32 @mp_pin_in_needs_data(i32) #1

declare dso_local i32 @mp_aframe_get_size(i32*) #1

declare dso_local i32 @TA_FREEP(i32**) #1

declare dso_local { i64, i32* } @mp_pin_out_read(i32) #1

declare dso_local i32 @mp_pin_in_write(i32, i64, i32*) #1

declare dso_local i32 @mp_pin_out_repeat_eof(i32) #1

declare dso_local i32 @mp_aframe_config_equals(i32*, i32*) #1

declare dso_local i32 @mp_pin_out_unread(i32, i64, i32*) #1

declare dso_local i32 @MP_ERR(%struct.mp_filter*, i8*) #1

declare dso_local i32 @mp_filter_internal_mark_failed(%struct.mp_filter*) #1

declare dso_local i32* @mp_aframe_create(...) #1

declare dso_local i32 @mp_aframe_config_copy(i32*, i32*) #1

declare dso_local i32 @mp_aframe_copy_attributes(i32*, i32*) #1

declare dso_local i64 @mp_aframe_pool_allocate(i32, i32*, i64) #1

declare dso_local i32 @MPMIN(i32, i64) #1

declare dso_local i32 @mp_aframe_copy_samples(i32*, i64, i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_aframe_skip_samples(i32*, i32) #1

declare dso_local i32 @mp_aframe_set_silence(i32*, i32, i32) #1

declare dso_local i32 @mp_aframe_set_size(i32*, i32) #1

declare dso_local { i64, i32* } @MAKE_FRAME(i64, i32*) #1

declare dso_local i32 @mp_pin_out_request_data_next(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
