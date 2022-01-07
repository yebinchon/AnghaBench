; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_process_user.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_process_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_frame = type { i32 }
%struct.mp_filter = type { i32*, %struct.mp_user_filter* }
%struct.mp_user_filter = type { i8*, i8*, i32, i32, double, double, i64, %struct.TYPE_7__*, %struct.chain* }
%struct.TYPE_7__ = type { i32* }
%struct.chain = type { %struct.mp_user_filter*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mp_filter_command = type { i64, i32 }

@.str = private unnamed_addr constant [77 x i8] c"Cannot convert decoder/filter output to any format supported by the output.\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Disabling filter %s because it has failed.\0A\00", align 1
@MP_EOF_FRAME = common dso_local global %struct.mp_frame zeroinitializer, align 4
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@MP_FILTER_COMMAND_IS_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"[%s] (%sabled)\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @process_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_user(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.mp_user_filter*, align 8
  %4 = alloca %struct.chain*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mp_frame, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.mp_frame, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.mp_filter_command, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %11 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %12 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %11, i32 0, i32 1
  %13 = load %struct.mp_user_filter*, %struct.mp_user_filter** %12, align 8
  store %struct.mp_user_filter* %13, %struct.mp_user_filter** %3, align 8
  %14 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %15 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %14, i32 0, i32 8
  %16 = load %struct.chain*, %struct.chain** %15, align 8
  store %struct.chain* %16, %struct.chain** %4, align 8
  %17 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %18 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %17, i32 0, i32 7
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %21 = call i32 @mp_filter_set_error_handler(%struct.TYPE_7__* %19, %struct.mp_filter* %20)
  %22 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %23 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %28 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %32 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i8* [ %29, %26 ], [ %33, %30 ]
  store i8* %35, i8** %5, align 8
  %36 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %37 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @assert(i8* %38)
  %40 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %41 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %77, label %44

44:                                               ; preds = %34
  %45 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %46 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %45, i32 0, i32 7
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = call i64 @mp_filter_has_failed(%struct.TYPE_7__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %52 = load %struct.chain*, %struct.chain** %4, align 8
  %53 = getelementptr inbounds %struct.chain, %struct.chain* %52, i32 0, i32 0
  %54 = load %struct.mp_user_filter*, %struct.mp_user_filter** %53, align 8
  %55 = icmp eq %struct.mp_user_filter* %51, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load %struct.chain*, %struct.chain** %4, align 8
  %58 = call i32 @MP_FATAL(%struct.chain* %57, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.chain*, %struct.chain** %4, align 8
  %60 = getelementptr inbounds %struct.chain, %struct.chain* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.chain*, %struct.chain** %4, align 8
  %63 = getelementptr inbounds %struct.chain, %struct.chain* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @mp_filter_wakeup(i32 %64)
  br label %74

66:                                               ; preds = %50
  %67 = load %struct.chain*, %struct.chain** %4, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @MP_ERR(%struct.chain* %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  %70 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %71 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %70, i32 0, i32 7
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = call i32 @mp_filter_reset(%struct.TYPE_7__* %72)
  br label %74

74:                                               ; preds = %66, %56
  %75 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %76 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %44, %34
  %78 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %79 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %125

82:                                               ; preds = %77
  %83 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %84 = load %struct.chain*, %struct.chain** %4, align 8
  %85 = getelementptr inbounds %struct.chain, %struct.chain* %84, i32 0, i32 0
  %86 = load %struct.mp_user_filter*, %struct.mp_user_filter** %85, align 8
  %87 = icmp eq %struct.mp_user_filter* %83, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %82
  %89 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %90 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @mp_pin_in_needs_data(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %88
  %97 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %98 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %96
  %102 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %103 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.mp_frame, %struct.mp_frame* @MP_EOF_FRAME, i32 0, i32 0), align 4
  %108 = call i32 @mp_pin_in_write(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %101, %96
  %110 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %111 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %110, i32 0, i32 3
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %88
  br label %249

113:                                              ; preds = %82
  %114 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %115 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %120 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @mp_pin_transfer_data(i32 %118, i32 %123)
  br label %249

125:                                              ; preds = %77
  %126 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %127 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %126, i32 0, i32 7
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %134 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @mp_pin_can_transfer_data(i32 %132, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %173

140:                                              ; preds = %125
  %141 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %142 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @mp_pin_out_read(i32 %145)
  %147 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %6, i32 0, i32 0
  store i32 %146, i32* %147, align 4
  %148 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %149 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %6, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @check_in_format_change(%struct.mp_user_filter* %148, i32 %150)
  %152 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %6, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call double @mp_frame_get_pts(i32 %153)
  store double %154, double* %7, align 8
  %155 = load double, double* %7, align 8
  %156 = load double, double* @MP_NOPTS_VALUE, align 8
  %157 = fcmp une double %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %140
  %159 = load double, double* %7, align 8
  %160 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %161 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %160, i32 0, i32 4
  store double %159, double* %161, align 8
  br label %162

162:                                              ; preds = %158, %140
  %163 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %164 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %163, i32 0, i32 7
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %6, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @mp_pin_in_write(i32 %169, i32 %171)
  br label %173

173:                                              ; preds = %162, %125
  %174 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %175 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %180 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %179, i32 0, i32 7
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @mp_pin_can_transfer_data(i32 %178, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %249

188:                                              ; preds = %173
  %189 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %190 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %189, i32 0, i32 7
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @mp_pin_out_read(i32 %195)
  %197 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %8, i32 0, i32 0
  store i32 %196, i32* %197, align 4
  %198 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %8, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call double @mp_frame_get_pts(i32 %199)
  store double %200, double* %9, align 8
  %201 = load double, double* %9, align 8
  %202 = load double, double* @MP_NOPTS_VALUE, align 8
  %203 = fcmp une double %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %188
  %205 = load double, double* %9, align 8
  %206 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %207 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %206, i32 0, i32 5
  store double %205, double* %207, align 8
  br label %208

208:                                              ; preds = %204, %188
  %209 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %210 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %8, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @mp_pin_in_write(i32 %213, i32 %215)
  %217 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %10, i32 0, i32 0
  store i64 0, i64* %217, align 8
  %218 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %10, i32 0, i32 1
  %219 = load i32, i32* @MP_FILTER_COMMAND_IS_ACTIVE, align 4
  store i32 %219, i32* %218, align 8
  %220 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %221 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %220, i32 0, i32 7
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  %223 = call i64 @mp_filter_command(%struct.TYPE_7__* %222, %struct.mp_filter_command* %10)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %248

225:                                              ; preds = %208
  %226 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %227 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %226, i32 0, i32 6
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %10, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %228, %230
  br i1 %231, label %232, label %248

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %10, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %236 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %235, i32 0, i32 6
  store i64 %234, i64* %236, align 8
  %237 = load %struct.chain*, %struct.chain** %4, align 8
  %238 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %239 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %238, i32 0, i32 1
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  %242 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %241, i32 0, i32 6
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %247 = call i32 @MP_VERBOSE(%struct.chain* %237, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %240, i8* %246)
  br label %248

248:                                              ; preds = %232, %225, %208
  br label %249

249:                                              ; preds = %112, %113, %248, %173
  ret void
}

declare dso_local i32 @mp_filter_set_error_handler(%struct.TYPE_7__*, %struct.mp_filter*) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @mp_filter_has_failed(%struct.TYPE_7__*) #1

declare dso_local i32 @MP_FATAL(%struct.chain*, i8*) #1

declare dso_local i32 @mp_filter_wakeup(i32) #1

declare dso_local i32 @MP_ERR(%struct.chain*, i8*, i8*) #1

declare dso_local i32 @mp_filter_reset(%struct.TYPE_7__*) #1

declare dso_local i64 @mp_pin_in_needs_data(i32) #1

declare dso_local i32 @mp_pin_in_write(i32, i32) #1

declare dso_local i32 @mp_pin_transfer_data(i32, i32) #1

declare dso_local i64 @mp_pin_can_transfer_data(i32, i32) #1

declare dso_local i32 @mp_pin_out_read(i32) #1

declare dso_local i32 @check_in_format_change(%struct.mp_user_filter*, i32) #1

declare dso_local double @mp_frame_get_pts(i32) #1

declare dso_local i64 @mp_filter_command(%struct.TYPE_7__*, %struct.mp_filter_command*) #1

declare dso_local i32 @MP_VERBOSE(%struct.chain*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
