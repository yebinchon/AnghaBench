; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-win-crash-handler.c_init_sym_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-win-crash-handler.c_init_sym_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_handler_data = type { %struct.TYPE_2__*, i32, i32 (i32)*, i32 (i32, i32*, i32)*, i32 (i32)* }
%struct.TYPE_2__ = type { i32, i32 }

@SYMOPT_UNDNAME = common dso_local global i32 0, align 4
@SYMOPT_FAIL_CRITICAL_ERRORS = common dso_local global i32 0, align 4
@SYMOPT_LOAD_ANYTHING = common dso_local global i32 0, align 4
@sym_initialize_called = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exception_handler_data*)* @init_sym_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sym_info(%struct.exception_handler_data* %0) #0 {
  %2 = alloca %struct.exception_handler_data*, align 8
  store %struct.exception_handler_data* %0, %struct.exception_handler_data** %2, align 8
  %3 = load %struct.exception_handler_data*, %struct.exception_handler_data** %2, align 8
  %4 = getelementptr inbounds %struct.exception_handler_data, %struct.exception_handler_data* %3, i32 0, i32 4
  %5 = load i32 (i32)*, i32 (i32)** %4, align 8
  %6 = load i32, i32* @SYMOPT_UNDNAME, align 4
  %7 = load i32, i32* @SYMOPT_FAIL_CRITICAL_ERRORS, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SYMOPT_LOAD_ANYTHING, align 4
  %10 = or i32 %8, %9
  %11 = call i32 %5(i32 %10)
  %12 = load i32, i32* @sym_initialize_called, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.exception_handler_data*, %struct.exception_handler_data** %2, align 8
  %16 = getelementptr inbounds %struct.exception_handler_data, %struct.exception_handler_data* %15, i32 0, i32 3
  %17 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %16, align 8
  %18 = load %struct.exception_handler_data*, %struct.exception_handler_data** %2, align 8
  %19 = getelementptr inbounds %struct.exception_handler_data, %struct.exception_handler_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %17(i32 %20, i32* null, i32 1)
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.exception_handler_data*, %struct.exception_handler_data** %2, align 8
  %24 = getelementptr inbounds %struct.exception_handler_data, %struct.exception_handler_data* %23, i32 0, i32 2
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = load %struct.exception_handler_data*, %struct.exception_handler_data** %2, align 8
  %27 = getelementptr inbounds %struct.exception_handler_data, %struct.exception_handler_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %25(i32 %28)
  br label %30

30:                                               ; preds = %22, %14
  %31 = load i32, i32* @LPTR, align 4
  %32 = call %struct.TYPE_2__* @LocalAlloc(i32 %31, i32 264)
  %33 = load %struct.exception_handler_data*, %struct.exception_handler_data** %2, align 8
  %34 = getelementptr inbounds %struct.exception_handler_data, %struct.exception_handler_data* %33, i32 0, i32 0
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %34, align 8
  %35 = load %struct.exception_handler_data*, %struct.exception_handler_data** %2, align 8
  %36 = getelementptr inbounds %struct.exception_handler_data, %struct.exception_handler_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 4, i32* %38, align 4
  %39 = load %struct.exception_handler_data*, %struct.exception_handler_data** %2, align 8
  %40 = getelementptr inbounds %struct.exception_handler_data, %struct.exception_handler_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 256, i32* %42, align 4
  ret void
}

declare dso_local %struct.TYPE_2__* @LocalAlloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
