; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_get_osd_size.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_get_osd_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_osd_res = type { double, double, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"aspect\00", align 1
@__const.script_get_osd_size.names = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @script_get_osd_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script_get_osd_size(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mp_osd_res, align 8
  %4 = alloca double, align 8
  %5 = alloca [4 x i8*], align 16
  %6 = alloca [3 x double], align 16
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.TYPE_4__* @jctx(i32* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  call void @osd_get_vo_res(%struct.mp_osd_res* sret %3, i32 %12)
  %13 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = fmul double 1.000000e+00, %14
  %16 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = call double @MPMAX(double %17, i32 1)
  %19 = fdiv double %15, %18
  %20 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 1, %26 ]
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %19, %29
  store double %30, double* %4, align 8
  %31 = bitcast [4 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 bitcast ([4 x i8*]* @__const.script_get_osd_size.names to i8*), i64 32, i1 false)
  %32 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %33 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 0
  %34 = load double, double* %33, align 8
  store double %34, double* %32, align 8
  %35 = getelementptr inbounds double, double* %32, i64 1
  %36 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 1
  %37 = load double, double* %36, align 8
  store double %37, double* %35, align 8
  %38 = getelementptr inbounds double, double* %35, i64 1
  %39 = load double, double* %4, align 8
  store double %39, double* %38, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %42 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %43 = call i32 @push_nums_obj(i32* %40, i8** %41, double* %42)
  ret void
}

declare dso_local void @osd_get_vo_res(%struct.mp_osd_res* sret, i32) #1

declare dso_local %struct.TYPE_4__* @jctx(i32*) #1

declare dso_local double @MPMAX(double, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @push_nums_obj(i32*, i8**, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
