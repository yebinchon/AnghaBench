; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_get_sync_samples.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_get_sync_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i32, i64, double, double, double, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.MPOpts* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.MPOpts = type { double, i32 }
%struct.mp_chmap = type { i32 }

@STATUS_SYNCING = common dso_local global i64 0, align 8
@STATUS_FILLING = common dso_local global i8* null, align 8
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@STATUS_EOF = common dso_local global i64 0, align 8
@STATUS_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Failed audio resync.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*, i32*)* @get_sync_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sync_samples(%struct.MPContext* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.MPOpts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mp_chmap, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 10
  %18 = load %struct.MPOpts*, %struct.MPOpts** %17, align 8
  store %struct.MPOpts* %18, %struct.MPOpts** %6, align 8
  %19 = load i32*, i32** %5, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %21 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @STATUS_SYNCING, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %159

26:                                               ; preds = %2
  %27 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ao_get_format(i32 %29, i32* %7, i32* %8, %struct.mp_chmap* %9)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %33 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %31, %34
  %36 = sitofp i32 %35 to double
  store double %36, double* %10, align 8
  %37 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %38 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %26
  %42 = load i8*, i8** @STATUS_FILLING, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %45 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  store i32 1, i32* %3, align 4
  br label %159

46:                                               ; preds = %26
  %47 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %48 = call double @written_audio_pts(%struct.MPContext* %47)
  store double %48, double* %11, align 8
  %49 = load double, double* %11, align 8
  %50 = load double, double* @MP_NOPTS_VALUE, align 8
  %51 = fcmp oeq double %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %54 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %53, i32 0, i32 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mp_audio_buffer_samples(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %159

61:                                               ; preds = %52, %46
  %62 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %63 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %62, i32 0, i32 7
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %68 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %67, i32 0, i32 7
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %66
  %74 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %75 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @STATUS_EOF, align 8
  %78 = icmp ne i64 %76, %77
  br label %79

79:                                               ; preds = %73, %66, %61
  %80 = phi i1 [ false, %66 ], [ false, %61 ], [ %78, %73 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %12, align 4
  %82 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %82, double* %13, align 8
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %79
  %86 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %87 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @STATUS_READY, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %159

92:                                               ; preds = %85
  %93 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %94 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %93, i32 0, i32 3
  %95 = load double, double* %94, align 8
  %96 = load double, double* @MP_NOPTS_VALUE, align 8
  %97 = fcmp une double %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %100 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %99, i32 0, i32 3
  %101 = load double, double* %100, align 8
  %102 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  %103 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %102, i32 0, i32 0
  %104 = load double, double* %103, align 8
  %105 = fsub double %101, %104
  store double %105, double* %13, align 8
  br label %106

106:                                              ; preds = %98, %92
  br label %121

107:                                              ; preds = %79
  %108 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %109 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %114 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %113, i32 0, i32 4
  %115 = load double, double* %114, align 8
  store double %115, double* %13, align 8
  br label %120

116:                                              ; preds = %107
  %117 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %118 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %117, i32 0, i32 5
  %119 = load double, double* %118, align 8
  store double %119, double* %13, align 8
  br label %120

120:                                              ; preds = %116, %112
  br label %121

121:                                              ; preds = %120, %106
  %122 = load double, double* %13, align 8
  %123 = load double, double* @MP_NOPTS_VALUE, align 8
  %124 = fcmp oeq double %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i8*, i8** @STATUS_FILLING, align 8
  %127 = ptrtoint i8* %126 to i64
  %128 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %129 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  store i32 1, i32* %3, align 4
  br label %159

130:                                              ; preds = %121
  %131 = load double, double* %11, align 8
  %132 = load double, double* %13, align 8
  %133 = fsub double %131, %132
  store double %133, double* %14, align 8
  %134 = load double, double* %11, align 8
  %135 = load double, double* @MP_NOPTS_VALUE, align 8
  %136 = fcmp oeq double %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %139 = call i32 @MP_WARN(%struct.MPContext* %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %140 = load i8*, i8** @STATUS_FILLING, align 8
  %141 = ptrtoint i8* %140 to i64
  %142 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %143 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  store i32 1, i32* %3, align 4
  br label %159

144:                                              ; preds = %130
  %145 = load double, double* %14, align 8
  %146 = call double @MPCLAMP(double %145, i32 -3600, i32 3600)
  store double %146, double* %14, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @af_format_sample_alignment(i32 %147)
  store i32 %148, i32* %15, align 4
  %149 = load double, double* %14, align 8
  %150 = fneg double %149
  %151 = load double, double* %10, align 8
  %152 = fmul double %150, %151
  %153 = fptosi double %152 to i32
  %154 = load i32, i32* %15, align 4
  %155 = sdiv i32 %153, %154
  %156 = load i32, i32* %15, align 4
  %157 = mul nsw i32 %155, %156
  %158 = load i32*, i32** %5, align 8
  store i32 %157, i32* %158, align 4
  store i32 1, i32* %3, align 4
  br label %159

159:                                              ; preds = %144, %137, %125, %91, %60, %41, %25
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @ao_get_format(i32, i32*, i32*, %struct.mp_chmap*) #1

declare dso_local double @written_audio_pts(%struct.MPContext*) #1

declare dso_local i32 @mp_audio_buffer_samples(i32) #1

declare dso_local i32 @MP_WARN(%struct.MPContext*, i8*) #1

declare dso_local double @MPCLAMP(double, i32, i32) #1

declare dso_local i32 @af_format_sample_alignment(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
