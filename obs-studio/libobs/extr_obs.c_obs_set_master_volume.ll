; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_set_master_volume.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_set_master_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { float }
%struct.calldata = type { i32 }

@obs = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"master_volume\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_set_master_volume(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.calldata, align 4
  store float %0, float* %2, align 4
  %4 = bitcast %struct.calldata* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 4, i1 false)
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %22

8:                                                ; preds = %1
  %9 = load float, float* %2, align 4
  %10 = call i32 @calldata_set_float(%struct.calldata* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), float %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @signal_handler_signal(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.calldata* %3)
  %15 = call i64 @calldata_float(%struct.calldata* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = sitofp i64 %15 to float
  store float %16, float* %2, align 4
  %17 = call i32 @calldata_free(%struct.calldata* %3)
  %18 = load float, float* %2, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store float %18, float* %21, align 4
  br label %22

22:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @calldata_set_float(%struct.calldata*, i8*, float) #2

declare dso_local i32 @signal_handler_signal(i32, i8*, %struct.calldata*) #2

declare dso_local i64 @calldata_float(%struct.calldata*, i8*) #2

declare dso_local i32 @calldata_free(%struct.calldata*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
