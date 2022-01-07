; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-win-crash-handler.c_init_cpu_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-win-crash-handler.c_init_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_handler_data = type { i32 }

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@PROCESSOR_REG_KEY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i32] [i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 111, i32 114, i32 78, i32 97, i32 109, i32 101, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 0], align 4
@CPU_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exception_handler_data*)* @init_cpu_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cpu_info(%struct.exception_handler_data* %0) #0 {
  %2 = alloca %struct.exception_handler_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [1024 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.exception_handler_data* %0, %struct.exception_handler_data** %2, align 8
  %7 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %8 = load i32, i32* @PROCESSOR_REG_KEY, align 4
  %9 = call i64 @RegOpenKeyW(i32 %7, i32 %8, i32* %3)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  store i32 1024, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %16 = ptrtoint i32* %15 to i32
  %17 = call i64 @RegQueryValueExW(i32 %14, i8* bitcast ([20 x i32]* @.str to i8*), i32* null, i32* null, i32 %16, i32* %6)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @ERROR_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.exception_handler_data*, %struct.exception_handler_data** %2, align 8
  %23 = getelementptr inbounds %struct.exception_handler_data, %struct.exception_handler_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %25 = call i32 @dstr_from_wcs(i32* %23, i32* %24)
  br label %31

26:                                               ; preds = %13
  %27 = load %struct.exception_handler_data*, %struct.exception_handler_data** %2, align 8
  %28 = getelementptr inbounds %struct.exception_handler_data, %struct.exception_handler_data* %27, i32 0, i32 0
  %29 = load i32, i32* @CPU_ERROR, align 4
  %30 = call i32 @dstr_copy(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  br label %37

32:                                               ; preds = %1
  %33 = load %struct.exception_handler_data*, %struct.exception_handler_data** %2, align 8
  %34 = getelementptr inbounds %struct.exception_handler_data, %struct.exception_handler_data* %33, i32 0, i32 0
  %35 = load i32, i32* @CPU_ERROR, align 4
  %36 = call i32 @dstr_copy(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %31
  ret void
}

declare dso_local i64 @RegOpenKeyW(i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @dstr_from_wcs(i32*, i32*) #1

declare dso_local i32 @dstr_copy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
