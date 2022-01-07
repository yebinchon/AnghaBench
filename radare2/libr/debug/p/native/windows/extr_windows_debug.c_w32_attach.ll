; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c_w32_attach.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c_w32_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__, %struct.TYPE_24__* }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_22__ = type { i32 }

@w32_PROCESS_ALL_ACCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@W32_ATTACH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DebugActiveProcess\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @w32_attach(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %6, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %3, align 4
  br label %106

23:                                               ; preds = %2
  %24 = load i32, i32* @w32_PROCESS_ALL_ACCESS, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @w32_OpenProcess(i32 %24, i32 %25, i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %106

31:                                               ; preds = %23
  %32 = load i32, i32* @W32_ATTACH, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  store i32 %32, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  store i32 %39, i32* %45, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %47, align 8
  %49 = call i32 @w32dbg_wrap_wait_ret(%struct.TYPE_24__* %48)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %31
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %60, align 8
  %62 = call i32 @w32dbgw_err(%struct.TYPE_24__* %61)
  %63 = call i32 @r_sys_perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @CloseHandle(i64 %64)
  store i32 -1, i32* %3, align 4
  br label %106

66:                                               ; preds = %31
  %67 = call %struct.TYPE_20__* (...) @r_list_new()
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %8, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %69 = icmp ne %struct.TYPE_20__* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @CloseHandle(i64 %71)
  store i32 -1, i32* %3, align 4
  br label %106

73:                                               ; preds = %66
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %77 = call %struct.TYPE_20__* @w32_thread_list(%struct.TYPE_23__* %74, i32 %75, %struct.TYPE_20__* %76)
  store %struct.TYPE_20__* %77, %struct.TYPE_20__** %8, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %84 = call i32 @r_list_free(%struct.TYPE_20__* %83)
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @CloseHandle(i64 %85)
  store i32 -1, i32* %3, align 4
  br label %106

87:                                               ; preds = %73
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.TYPE_22__*
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %9, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %97 = call i32 @r_list_free(%struct.TYPE_20__* %96)
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  store i64 %98, i64* %101, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @w32_dbg_wait(%struct.TYPE_23__* %102, i32 %103)
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %87, %82, %70, %58, %30, %18
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i64 @w32_OpenProcess(i32, i32, i32) #1

declare dso_local i32 @w32dbg_wrap_wait_ret(%struct.TYPE_24__*) #1

declare dso_local i32 @w32dbgw_err(%struct.TYPE_24__*) #1

declare dso_local i32 @r_sys_perror(i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local %struct.TYPE_20__* @r_list_new(...) #1

declare dso_local %struct.TYPE_20__* @w32_thread_list(%struct.TYPE_23__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @r_list_free(%struct.TYPE_20__*) #1

declare dso_local i32 @w32_dbg_wait(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
