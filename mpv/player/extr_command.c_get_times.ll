; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_get_times.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_get_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.sd_times = type { double, double }
%struct.TYPE_2__ = type { double, %struct.track*** }
%struct.track = type { %struct.dec_sub* }
%struct.dec_sub = type { i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@STREAM_SUB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ double, double } (i8*, %struct.m_property*, i32, i8*)* @get_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { double, double } @get_times(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.sd_times, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sd_times, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca %struct.track*, align 8
  %13 = alloca %struct.dec_sub*, align 8
  %14 = alloca double, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %10, i32 0, i32 0
  %16 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %16, double* %15, align 8
  %17 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %10, i32 0, i32 1
  %18 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %18, double* %17, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %11, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.track***, %struct.track**** %22, align 8
  %24 = getelementptr inbounds %struct.track**, %struct.track*** %23, i64 0
  %25 = load %struct.track**, %struct.track*** %24, align 8
  %26 = load i64, i64* @STREAM_SUB, align 8
  %27 = getelementptr inbounds %struct.track*, %struct.track** %25, i64 %26
  %28 = load %struct.track*, %struct.track** %27, align 8
  store %struct.track* %28, %struct.track** %12, align 8
  %29 = load %struct.track*, %struct.track** %12, align 8
  %30 = icmp ne %struct.track* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load %struct.track*, %struct.track** %12, align 8
  %33 = getelementptr inbounds %struct.track, %struct.track* %32, i32 0, i32 0
  %34 = load %struct.dec_sub*, %struct.dec_sub** %33, align 8
  br label %36

35:                                               ; preds = %4
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi %struct.dec_sub* [ %34, %31 ], [ null, %35 ]
  store %struct.dec_sub* %37, %struct.dec_sub** %13, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load double, double* %39, align 8
  store double %40, double* %14, align 8
  %41 = load %struct.dec_sub*, %struct.dec_sub** %13, align 8
  %42 = icmp ne %struct.dec_sub* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load double, double* %14, align 8
  %45 = load double, double* @MP_NOPTS_VALUE, align 8
  %46 = fcmp oeq double %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %36
  %48 = bitcast %struct.sd_times* %5 to i8*
  %49 = bitcast %struct.sd_times* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 16, i1 false)
  br label %59

50:                                               ; preds = %43
  %51 = load %struct.dec_sub*, %struct.dec_sub** %13, align 8
  %52 = load double, double* %14, align 8
  %53 = call { double, double } @sub_get_times(%struct.dec_sub* %51, double %52)
  %54 = bitcast %struct.sd_times* %5 to { double, double }*
  %55 = getelementptr inbounds { double, double }, { double, double }* %54, i32 0, i32 0
  %56 = extractvalue { double, double } %53, 0
  store double %56, double* %55, align 8
  %57 = getelementptr inbounds { double, double }, { double, double }* %54, i32 0, i32 1
  %58 = extractvalue { double, double } %53, 1
  store double %58, double* %57, align 8
  br label %59

59:                                               ; preds = %50, %47
  %60 = bitcast %struct.sd_times* %5 to { double, double }*
  %61 = load { double, double }, { double, double }* %60, align 8
  ret { double, double } %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local { double, double } @sub_get_times(%struct.dec_sub*, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
