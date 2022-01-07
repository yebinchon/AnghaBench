; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_get_osd_size.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_get_osd_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }
%struct.mp_osd_res = type { double, double, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_get_osd_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_get_osd_size(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.mp_osd_res, align 8
  %5 = alloca double, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.MPContext* @get_mpctx(i32* %6)
  store %struct.MPContext* %7, %struct.MPContext** %3, align 8
  %8 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  call void @osd_get_vo_res(%struct.mp_osd_res* sret %4, i32 %10)
  %11 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %4, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = fmul double 1.000000e+00, %12
  %14 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %4, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = call double @MPMAX(double %15, i32 1)
  %17 = fdiv double %13, %16
  %18 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %4, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %4, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 1, %24 ]
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %17, %27
  store double %28, double* %5, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %4, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = call i32 @lua_pushnumber(i32* %29, double %31)
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %4, i32 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = call i32 @lua_pushnumber(i32* %33, double %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load double, double* %5, align 8
  %39 = call i32 @lua_pushnumber(i32* %37, double %38)
  ret i32 3
}

declare dso_local %struct.MPContext* @get_mpctx(i32*) #1

declare dso_local void @osd_get_vo_res(%struct.mp_osd_res* sret, i32) #1

declare dso_local double @MPMAX(double, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
