; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_lavc.c_encode.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_lavc.c_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { double, i32, %struct.TYPE_8__, i32, %struct.encode_lavc_context*, %struct.priv* }
%struct.TYPE_8__ = type { i32 }
%struct.encode_lavc_context = type { double, i32 }
%struct.priv = type { double, i32, i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32*, i64, i32, i8**, i32 }

@AV_NUM_DATA_POINTERS = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"audio frame pts went backwards (%d <- %d), autofixed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*, double, i8**)* @encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode(%struct.ao* %0, double %1, i8** %2) #0 {
  %4 = alloca %struct.ao*, align 8
  %5 = alloca double, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.priv*, align 8
  %8 = alloca %struct.encode_lavc_context*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ao* %0, %struct.ao** %4, align 8
  store double %1, double* %5, align 8
  store i8** %2, i8*** %6, align 8
  %15 = load %struct.ao*, %struct.ao** %4, align 8
  %16 = getelementptr inbounds %struct.ao, %struct.ao* %15, i32 0, i32 5
  %17 = load %struct.priv*, %struct.priv** %16, align 8
  store %struct.priv* %17, %struct.priv** %7, align 8
  %18 = load %struct.ao*, %struct.ao** %4, align 8
  %19 = getelementptr inbounds %struct.ao, %struct.ao* %18, i32 0, i32 4
  %20 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %19, align 8
  store %struct.encode_lavc_context* %20, %struct.encode_lavc_context** %8, align 8
  %21 = load %struct.priv*, %struct.priv** %7, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %9, align 8
  %26 = load %struct.priv*, %struct.priv** %7, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = load %struct.priv*, %struct.priv** %7, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sitofp i32 %31 to double
  %33 = fmul double %28, %32
  %34 = load %struct.ao*, %struct.ao** %4, align 8
  %35 = getelementptr inbounds %struct.ao, %struct.ao* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = fdiv double %33, %36
  store double %37, double* %10, align 8
  %38 = load %struct.priv*, %struct.priv** %7, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 0
  %40 = load double, double* %39, align 8
  %41 = fadd double %40, 1.000000e+00
  store double %41, double* %39, align 8
  %42 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %8, align 8
  %43 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %42, i32 0, i32 1
  %44 = call i32 @pthread_mutex_lock(i32* %43)
  %45 = load i8**, i8*** %6, align 8
  %46 = icmp ne i8** %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %3
  %48 = load double, double* %10, align 8
  %49 = load double, double* %5, align 8
  %50 = fsub double %48, %49
  %51 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %8, align 8
  %52 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %51, i32 0, i32 0
  store double %50, double* %52, align 8
  br label %53

53:                                               ; preds = %47, %3
  %54 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %8, align 8
  %55 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %54, i32 0, i32 1
  %56 = call i32 @pthread_mutex_unlock(i32* %55)
  %57 = load i8**, i8*** %6, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %59, label %194

59:                                               ; preds = %53
  %60 = call %struct.TYPE_9__* (...) @av_frame_alloc()
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %11, align 8
  %61 = load %struct.ao*, %struct.ao** %4, align 8
  %62 = getelementptr inbounds %struct.ao, %struct.ao* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @af_to_avformat(i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load %struct.priv*, %struct.priv** %7, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ao*, %struct.ao** %4, align 8
  %73 = getelementptr inbounds %struct.ao, %struct.ao* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @af_fmt_is_planar(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %59
  %78 = load %struct.ao*, %struct.ao** %4, align 8
  %79 = getelementptr inbounds %struct.ao, %struct.ao* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  br label %83

82:                                               ; preds = %59
  br label %83

83:                                               ; preds = %82, %77
  %84 = phi i32 [ %81, %77 ], [ 1, %82 ]
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @AV_NUM_DATA_POINTERS, align 8
  %88 = icmp ule i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %108, %83
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %12, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load i8**, i8*** %6, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 4
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  store i8* %101, i8** %107, align 8
  br label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %91

111:                                              ; preds = %91
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ao*, %struct.ao** %4, align 8
  %116 = getelementptr inbounds %struct.ao, %struct.ao* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %114, %117
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 %118, i32* %122, align 4
  %123 = load double, double* %5, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @av_inv_q(i32 %126)
  %128 = call double @av_q2d(i32 %127)
  %129 = fmul double %123, %128
  %130 = call i64 @rint(double %129)
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.priv*, %struct.priv** %7, align 8
  %140 = getelementptr inbounds %struct.priv, %struct.priv* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @av_rescale_q(i64 %135, i32 %138, i32 %141)
  store i64 %142, i64* %14, align 8
  %143 = load %struct.priv*, %struct.priv** %7, align 8
  %144 = getelementptr inbounds %struct.priv, %struct.priv* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %179

148:                                              ; preds = %111
  %149 = load i64, i64* %14, align 8
  %150 = load %struct.priv*, %struct.priv** %7, align 8
  %151 = getelementptr inbounds %struct.priv, %struct.priv* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp sle i64 %149, %152
  br i1 %153, label %154, label %179

154:                                              ; preds = %148
  %155 = load %struct.ao*, %struct.ao** %4, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = load %struct.priv*, %struct.priv** %7, align 8
  %161 = getelementptr inbounds %struct.priv, %struct.priv* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 @MP_WARN(%struct.ao* %155, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %159, i32 %163)
  %165 = load %struct.priv*, %struct.priv** %7, align 8
  %166 = getelementptr inbounds %struct.priv, %struct.priv* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %14, align 8
  %169 = load i64, i64* %14, align 8
  %170 = load %struct.priv*, %struct.priv** %7, align 8
  %171 = getelementptr inbounds %struct.priv, %struct.priv* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @av_rescale_q(i64 %169, i32 %172, i32 %175)
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %154, %148, %111
  %180 = load i64, i64* %14, align 8
  %181 = load %struct.priv*, %struct.priv** %7, align 8
  %182 = getelementptr inbounds %struct.priv, %struct.priv* %181, i32 0, i32 2
  store i64 %180, i64* %182, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 8
  %188 = load %struct.priv*, %struct.priv** %7, align 8
  %189 = getelementptr inbounds %struct.priv, %struct.priv* %188, i32 0, i32 3
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %192 = call i32 @encoder_encode(%struct.TYPE_11__* %190, %struct.TYPE_9__* %191)
  %193 = call i32 @av_frame_free(%struct.TYPE_9__** %11)
  br label %199

194:                                              ; preds = %53
  %195 = load %struct.priv*, %struct.priv** %7, align 8
  %196 = getelementptr inbounds %struct.priv, %struct.priv* %195, i32 0, i32 3
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = call i32 @encoder_encode(%struct.TYPE_11__* %197, %struct.TYPE_9__* null)
  br label %199

199:                                              ; preds = %194, %179
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_9__* @av_frame_alloc(...) #1

declare dso_local i32 @af_to_avformat(i32) #1

declare dso_local i64 @af_fmt_is_planar(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @rint(double) #1

declare dso_local double @av_q2d(i32) #1

declare dso_local i32 @av_inv_q(i32) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @MP_WARN(%struct.ao*, i8*, i32, i32) #1

declare dso_local i32 @encoder_encode(%struct.TYPE_11__*, %struct.TYPE_9__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
