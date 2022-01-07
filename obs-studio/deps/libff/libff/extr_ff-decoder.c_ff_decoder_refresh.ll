; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-decoder.c_ff_decoder_refresh.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-decoder.c_ff_decoder_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_decoder = type { double, x86_fp80, double, i32, double, double, %struct.TYPE_11__, i32, i32, %struct.TYPE_9__, i32, i32, i64, [8 x i8] }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.ff_frame = type { double, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"refresh timer stopping; eof\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"refresh timer aborted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_decoder_refresh(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ff_decoder*, align 8
  %4 = alloca %struct.ff_frame*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.ff_decoder*
  store %struct.ff_decoder* %10, %struct.ff_decoder** %3, align 8
  %11 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %12 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %11, i32 0, i32 12
  %13 = load i64, i64* %12, align 16
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %181

15:                                               ; preds = %1
  %16 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %17 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 16
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %15
  %22 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %23 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %28 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %33 = call i32 @ff_decoder_schedule_refresh(%struct.ff_decoder* %32, i32 1)
  br label %44

34:                                               ; preds = %26
  %35 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %36 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ff_callbacks_frame(i32 %37, %struct.ff_frame* null)
  %39 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %40 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 16
  %42 = load i32, i32* @AV_LOG_INFO, align 4
  %43 = call i32 @av_log(i32* null, i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %184

44:                                               ; preds = %31
  br label %180

45:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  %46 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %47 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %46, i32 0, i32 6
  %48 = call %struct.ff_frame* @ff_circular_queue_peek_read(%struct.TYPE_11__* %47)
  store %struct.ff_frame* %48, %struct.ff_frame** %4, align 8
  %49 = load %struct.ff_frame*, %struct.ff_frame** %4, align 8
  %50 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %49, i32 0, i32 2
  %51 = call %struct.TYPE_10__* @ff_clock_move(i32* %50)
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %8, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %54 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %57 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %56, i32 0, i32 9
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = call i32 @ff_clock_start(%struct.TYPE_10__* %52, i32 %55, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %45
  %62 = call i32 @ff_clock_release(%struct.TYPE_10__** %8)
  %63 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %64 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %63, i32 0, i32 9
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 16
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @AV_LOG_INFO, align 4
  %70 = call i32 @av_log(i32* null, i32 %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %184

71:                                               ; preds = %61
  %72 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %73 = call i32 @ff_decoder_schedule_refresh(%struct.ff_decoder* %72, i32 100)
  %74 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %75 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %74, i32 0, i32 6
  %76 = call i32 @ff_circular_queue_advance_read(%struct.TYPE_11__* %75)
  br label %184

77:                                               ; preds = %45
  %78 = load %struct.ff_frame*, %struct.ff_frame** %4, align 8
  %79 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %78, i32 0, i32 0
  %80 = load double, double* %79, align 8
  %81 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %82 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %81, i32 0, i32 0
  store double %80, double* %82, align 16
  %83 = call x86_fp80 (...) @av_gettime()
  %84 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %85 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %84, i32 0, i32 1
  store x86_fp80 %83, x86_fp80* %85, align 16
  %86 = load %struct.ff_frame*, %struct.ff_frame** %4, align 8
  %87 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %86, i32 0, i32 0
  %88 = load double, double* %87, align 8
  %89 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %90 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %89, i32 0, i32 2
  %91 = load double, double* %90, align 16
  %92 = fsub double %88, %91
  store double %92, double* %5, align 8
  %93 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %94 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %77
  %98 = load double, double* %5, align 8
  %99 = fcmp oge double %98, 1.000000e+00
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %7, align 4
  %101 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %102 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %101, i32 0, i32 3
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %97, %77
  %104 = load double, double* %5, align 8
  %105 = fcmp ole double %104, 0.000000e+00
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106, %103
  %110 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %111 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %110, i32 0, i32 4
  %112 = load double, double* %111, align 16
  store double %112, double* %5, align 8
  br label %113

113:                                              ; preds = %109, %106
  %114 = load double, double* %5, align 8
  %115 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %116 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %115, i32 0, i32 4
  store double %114, double* %116, align 16
  %117 = load %struct.ff_frame*, %struct.ff_frame** %4, align 8
  %118 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %117, i32 0, i32 0
  %119 = load double, double* %118, align 8
  %120 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %121 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %120, i32 0, i32 2
  store double %119, double* %121, align 16
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %126 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %124, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %113
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %131 = load %struct.ff_frame*, %struct.ff_frame** %4, align 8
  %132 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %131, i32 0, i32 0
  %133 = load double, double* %132, align 8
  %134 = load double, double* %5, align 8
  %135 = call double @get_sync_adjusted_pts_diff(%struct.TYPE_10__* %130, double %133, double %134)
  store double %135, double* %5, align 8
  br label %136

136:                                              ; preds = %129, %113
  %137 = load double, double* %5, align 8
  %138 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %139 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %138, i32 0, i32 5
  %140 = load double, double* %139, align 8
  %141 = fadd double %140, %137
  store double %141, double* %139, align 8
  %142 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %143 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %142, i32 0, i32 5
  %144 = load double, double* %143, align 8
  %145 = fpext double %144 to x86_fp80
  %146 = call x86_fp80 (...) @av_gettime()
  %147 = fdiv x86_fp80 %146, 0xK4012F424000000000000
  %148 = fsub x86_fp80 %145, %147
  %149 = fptrunc x86_fp80 %148 to double
  store double %149, double* %6, align 8
  %150 = load double, double* %6, align 8
  %151 = fpext double %150 to x86_fp80
  %152 = fcmp olt x86_fp80 %151, 0xK3FF8A3D70A3D70A3D70A
  br i1 %152, label %153, label %154

153:                                              ; preds = %136
  store double 1.000000e-02, double* %6, align 8
  br label %154

154:                                              ; preds = %153, %136
  %155 = load double, double* %6, align 8
  %156 = load double, double* %5, align 8
  %157 = fcmp ogt double %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load double, double* %5, align 8
  store double %159, double* %6, align 8
  br label %160

160:                                              ; preds = %158, %154
  %161 = call i32 @ff_clock_release(%struct.TYPE_10__** %8)
  %162 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %163 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ff_frame*, %struct.ff_frame** %4, align 8
  %166 = call i32 @ff_callbacks_frame(i32 %164, %struct.ff_frame* %165)
  %167 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %168 = load double, double* %6, align 8
  %169 = fmul double %168, 1.000000e+03
  %170 = fpext double %169 to x86_fp80
  %171 = fadd x86_fp80 %170, 0xK3FFE8000000000000000
  %172 = fptosi x86_fp80 %171 to i32
  %173 = call i32 @ff_decoder_schedule_refresh(%struct.ff_decoder* %167, i32 %172)
  %174 = load %struct.ff_frame*, %struct.ff_frame** %4, align 8
  %175 = getelementptr inbounds %struct.ff_frame, %struct.ff_frame* %174, i32 0, i32 1
  %176 = call i32 @av_frame_free(i32* %175)
  %177 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %178 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %177, i32 0, i32 6
  %179 = call i32 @ff_circular_queue_advance_read(%struct.TYPE_11__* %178)
  br label %180

180:                                              ; preds = %160, %44
  br label %184

181:                                              ; preds = %1
  %182 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %183 = call i32 @ff_decoder_schedule_refresh(%struct.ff_decoder* %182, i32 100)
  br label %184

184:                                              ; preds = %34, %68, %71, %181, %180
  ret void
}

declare dso_local i32 @ff_decoder_schedule_refresh(%struct.ff_decoder*, i32) #1

declare dso_local i32 @ff_callbacks_frame(i32, %struct.ff_frame*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local %struct.ff_frame* @ff_circular_queue_peek_read(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @ff_clock_move(i32*) #1

declare dso_local i32 @ff_clock_start(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @ff_clock_release(%struct.TYPE_10__**) #1

declare dso_local i32 @ff_circular_queue_advance_read(%struct.TYPE_11__*) #1

declare dso_local x86_fp80 @av_gettime(...) #1

declare dso_local double @get_sync_adjusted_pts_diff(%struct.TYPE_10__*, double, double) #1

declare dso_local i32 @av_frame_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
