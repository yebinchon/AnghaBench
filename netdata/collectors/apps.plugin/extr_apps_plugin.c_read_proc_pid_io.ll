; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_read_proc_pid_io.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_read_proc_pid_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_stat = type { i64, i64, i64, i64, i32, i32, i32, i32 }

@read_proc_pid_io.ff = internal global i32* null, align 8
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s/proc/%d/io\00", align 1
@netdata_configured_host_prefix = common dso_local global i32 0, align 4
@PROCFILE_FLAG_NO_ERROR_ON_FILE_IO = common dso_local global i32 0, align 4
@calls_counter = common dso_local global i32 0, align 4
@io = common dso_local global i32 0, align 4
@global_iterations_counter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pid_stat*, i8*)* @read_proc_pid_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_proc_pid_io(%struct.pid_stat* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pid_stat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.pid_stat* %0, %struct.pid_stat** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %10 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load i32, i32* @FILENAME_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %23 = load i32, i32* @FILENAME_MAX, align 4
  %24 = load i32, i32* @netdata_configured_host_prefix, align 4
  %25 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %26 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snprintfz(i8* %22, i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = call i32 @strdupz(i8* %22)
  %30 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %31 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %32)
  br label %33

33:                                               ; preds = %17, %2
  %34 = load i32*, i32** @read_proc_pid_io.ff, align 8
  %35 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %36 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PROCFILE_FLAG_NO_ERROR_ON_FILE_IO, align 4
  %39 = call i32* @procfile_reopen(i32* %34, i32 %37, i32* null, i32 %38)
  store i32* %39, i32** @read_proc_pid_io.ff, align 8
  %40 = load i32*, i32** @read_proc_pid_io.ff, align 8
  %41 = icmp ne i32* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %115

47:                                               ; preds = %33
  %48 = load i32*, i32** @read_proc_pid_io.ff, align 8
  %49 = call i32* @procfile_readall(i32* %48)
  store i32* %49, i32** @read_proc_pid_io.ff, align 8
  %50 = load i32*, i32** @read_proc_pid_io.ff, align 8
  %51 = icmp ne i32* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %115

57:                                               ; preds = %47
  %58 = load i32, i32* @calls_counter, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @calls_counter, align 4
  %60 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %61 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %64 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = call i32 (...) @now_monotonic_usec()
  %66 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %67 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @io, align 4
  %69 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %70 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i32*, i32** @read_proc_pid_io.ff, align 8
  %73 = call i32 @procfile_lineword(i32* %72, i32 0, i32 1)
  %74 = call i32 @str2kernel_uint_t(i32 %73)
  %75 = call i32 @pid_incremental_rate(i32 %68, i64 %71, i32 %74)
  %76 = load i32, i32* @io, align 4
  %77 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %78 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i32*, i32** @read_proc_pid_io.ff, align 8
  %81 = call i32 @procfile_lineword(i32* %80, i32 1, i32 1)
  %82 = call i32 @str2kernel_uint_t(i32 %81)
  %83 = call i32 @pid_incremental_rate(i32 %76, i64 %79, i32 %82)
  %84 = load i32, i32* @io, align 4
  %85 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %86 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i32*, i32** @read_proc_pid_io.ff, align 8
  %89 = call i32 @procfile_lineword(i32* %88, i32 4, i32 1)
  %90 = call i32 @str2kernel_uint_t(i32 %89)
  %91 = call i32 @pid_incremental_rate(i32 %84, i64 %87, i32 %90)
  %92 = load i32, i32* @io, align 4
  %93 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %94 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32*, i32** @read_proc_pid_io.ff, align 8
  %97 = call i32 @procfile_lineword(i32* %96, i32 5, i32 1)
  %98 = call i32 @str2kernel_uint_t(i32 %97)
  %99 = call i32 @pid_incremental_rate(i32 %92, i64 %95, i32 %98)
  %100 = load i32, i32* @global_iterations_counter, align 4
  %101 = icmp eq i32 %100, 1
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %57
  %106 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %107 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %106, i32 0, i32 3
  store i64 0, i64* %107, align 8
  %108 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %109 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %111 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %113 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %105, %57
  store i32 1, i32* %3, align 4
  br label %124

115:                                              ; preds = %56, %46
  %116 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %117 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %116, i32 0, i32 3
  store i64 0, i64* %117, align 8
  %118 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %119 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %121 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %123 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %115, %114
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @strdupz(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @procfile_reopen(i32*, i32, i32*, i32) #1

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i32 @now_monotonic_usec(...) #1

declare dso_local i32 @pid_incremental_rate(i32, i64, i32) #1

declare dso_local i32 @str2kernel_uint_t(i32) #1

declare dso_local i32 @procfile_lineword(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
