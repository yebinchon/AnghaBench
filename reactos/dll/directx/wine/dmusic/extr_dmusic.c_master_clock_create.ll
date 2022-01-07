; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_dmusic.c_master_clock_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_dmusic.c_master_clock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.master_clock = type { i32, double, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { double }

@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@master_clock_vtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__**)* @master_clock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @master_clock_create(%struct.TYPE_7__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__**, align 8
  %4 = alloca %struct.master_clock*, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %3, align 8
  %6 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %7 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__** %6)
  %8 = call %struct.master_clock* @heap_alloc_zero(i32 24)
  store %struct.master_clock* %8, %struct.master_clock** %4, align 8
  %9 = icmp ne %struct.master_clock* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %11, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.master_clock*, %struct.master_clock** %4, align 8
  %14 = getelementptr inbounds %struct.master_clock, %struct.master_clock* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32* @master_clock_vtbl, i32** %15, align 8
  %16 = load %struct.master_clock*, %struct.master_clock** %4, align 8
  %17 = getelementptr inbounds %struct.master_clock, %struct.master_clock* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = call i32 @QueryPerformanceFrequency(%struct.TYPE_6__* %5)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = fdiv double 1.000000e+07, %20
  %22 = load %struct.master_clock*, %struct.master_clock** %4, align 8
  %23 = getelementptr inbounds %struct.master_clock, %struct.master_clock* %22, i32 0, i32 1
  store double %21, double* %23, align 8
  %24 = load %struct.master_clock*, %struct.master_clock** %4, align 8
  %25 = getelementptr inbounds %struct.master_clock, %struct.master_clock* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %26, align 8
  %27 = load i32, i32* @S_OK, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %12, %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_7__**) #1

declare dso_local %struct.master_clock* @heap_alloc_zero(i32) #1

declare dso_local i32 @QueryPerformanceFrequency(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
