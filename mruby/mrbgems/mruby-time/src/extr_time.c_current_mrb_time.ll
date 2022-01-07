; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-time/src/extr_time.c_current_mrb_time.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-time/src/extr_time.c_current_mrb_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_time = type { i32, i64, i64, i32 }
%struct.timeval = type { i64, i64 }

@MRB_TIMEZONE_LOCAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@TIME_UTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mrb_time* (i32*)* @current_mrb_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mrb_time* @current_mrb_time(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mrb_time, align 8
  %4 = alloca %struct.mrb_time*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timeval, align 8
  store i32* %0, i32** %2, align 8
  %8 = bitcast %struct.mrb_time* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = call i32 @gettimeofday(%struct.timeval* %7, i32* null)
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @mrb_malloc(i32* %14, i32 32)
  %16 = inttoptr i64 %15 to %struct.mrb_time*
  store %struct.mrb_time* %16, %struct.mrb_time** %4, align 8
  %17 = load %struct.mrb_time*, %struct.mrb_time** %4, align 8
  %18 = bitcast %struct.mrb_time* %17 to i8*
  %19 = bitcast %struct.mrb_time* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 32, i1 false)
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.mrb_time*, %struct.mrb_time** %4, align 8
  %22 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.mrb_time*, %struct.mrb_time** %4, align 8
  %25 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* @MRB_TIMEZONE_LOCAL, align 4
  %27 = load %struct.mrb_time*, %struct.mrb_time** %4, align 8
  %28 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = load %struct.mrb_time*, %struct.mrb_time** %4, align 8
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @time_update_datetime(i32* %29, %struct.mrb_time* %30, i32 %31)
  %33 = load %struct.mrb_time*, %struct.mrb_time** %4, align 8
  ret %struct.mrb_time* %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #2

declare dso_local i64 @mrb_malloc(i32*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @time_update_datetime(i32*, %struct.mrb_time*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
