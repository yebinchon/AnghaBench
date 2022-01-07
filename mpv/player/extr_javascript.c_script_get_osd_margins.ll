; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_get_osd_margins.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_get_osd_margins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_osd_res = type { double, double, double, double }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @script_get_osd_margins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script_get_osd_margins(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mp_osd_res, align 8
  %4 = alloca [5 x i8*], align 16
  %5 = alloca [4 x double], align 16
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.TYPE_4__* @jctx(i32* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  call void @osd_get_vo_res(%struct.mp_osd_res* sret %3, i32 %11)
  %12 = bitcast [5 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false)
  %13 = bitcast i8* %12 to [5 x i8*]*
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %14, align 16
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %15, align 8
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %17, align 8
  %18 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %19 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 0
  %20 = load double, double* %19, align 8
  store double %20, double* %18, align 8
  %21 = getelementptr inbounds double, double* %18, i64 1
  %22 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 1
  %23 = load double, double* %22, align 8
  store double %23, double* %21, align 8
  %24 = getelementptr inbounds double, double* %21, i64 1
  %25 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 2
  %26 = load double, double* %25, align 8
  store double %26, double* %24, align 8
  %27 = getelementptr inbounds double, double* %24, i64 1
  %28 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 3
  %29 = load double, double* %28, align 8
  store double %29, double* %27, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %32 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %33 = call i32 @push_nums_obj(i32* %30, i8** %31, double* %32)
  ret void
}

declare dso_local void @osd_get_vo_res(%struct.mp_osd_res* sret, i32) #1

declare dso_local %struct.TYPE_4__* @jctx(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @push_nums_obj(i32*, i8**, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
