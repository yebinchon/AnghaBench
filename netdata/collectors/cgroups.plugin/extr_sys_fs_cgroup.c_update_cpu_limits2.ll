; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_update_cpu_limits2.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_update_cpu_limits2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i8*, i32, i32, i32, i32 }

@update_cpu_limits2.ff = internal global i32* null, align 8
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"CGROUP: file '%s' should have 1 lines.\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"max\0A\00\00", align 1
@D_CGROUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"CPU limits values: %llu %llu %llu\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"Cannot refresh cgroup %s cpu limit by reading '%s'. Will not update its limit anymore.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup*)* @update_cpu_limits2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cpu_limits2(%struct.cgroup* %0) #0 {
  %2 = alloca %struct.cgroup*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %2, align 8
  %5 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %6 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %106

9:                                                ; preds = %1
  %10 = load i32*, i32** @update_cpu_limits2.ff, align 8
  %11 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %12 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %15 = call i32* @procfile_reopen(i32* %10, i8* %13, i32* null, i32 %14)
  store i32* %15, i32** @update_cpu_limits2.ff, align 8
  %16 = load i32*, i32** @update_cpu_limits2.ff, align 8
  %17 = icmp ne i32* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %9
  br label %90

23:                                               ; preds = %9
  %24 = load i32*, i32** @update_cpu_limits2.ff, align 8
  %25 = call i32* @procfile_readall(i32* %24)
  store i32* %25, i32** @update_cpu_limits2.ff, align 8
  %26 = load i32*, i32** @update_cpu_limits2.ff, align 8
  %27 = icmp ne i32* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %90

33:                                               ; preds = %23
  %34 = load i32*, i32** @update_cpu_limits2.ff, align 8
  %35 = call i64 @procfile_lines(i32* %34)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp ult i64 %36, 1
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %43 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %44)
  br label %106

46:                                               ; preds = %33
  %47 = load i32*, i32** @update_cpu_limits2.ff, align 8
  %48 = call i32 @procfile_lineword(i32* %47, i32 0, i32 1)
  %49 = call i8* @str2ull(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %52 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = call i32 (...) @get_system_cpus()
  %54 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %55 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = load i32*, i32** @update_cpu_limits2.ff, align 8
  %58 = call i32 @procfile_lineword(i32* %57, i32 0, i32 0)
  %59 = call i64 @strsame(i8* %56, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %46
  %62 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %63 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %66 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %64, %67
  %69 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %70 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  br label %78

71:                                               ; preds = %46
  %72 = load i32*, i32** @update_cpu_limits2.ff, align 8
  %73 = call i32 @procfile_lineword(i32* %72, i32 0, i32 0)
  %74 = call i8* @str2ull(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %77 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %71, %61
  %79 = load i32, i32* @D_CGROUP, align 4
  %80 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %81 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %84 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %87 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @debug(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %85, i32 %88)
  br label %106

90:                                               ; preds = %32, %22
  %91 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %92 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %97 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i8* %95, i8* %98)
  %100 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %101 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @freez(i8* %102)
  %104 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %105 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %104, i32 0, i32 0
  store i8* null, i8** %105, align 8
  br label %106

106:                                              ; preds = %41, %78, %90, %1
  ret void
}

declare dso_local i32* @procfile_reopen(i32*, i8*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i64 @procfile_lines(i32*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i8* @str2ull(i32) #1

declare dso_local i32 @procfile_lineword(i32*, i32, i32) #1

declare dso_local i32 @get_system_cpus(...) #1

declare dso_local i64 @strsame(i8*, i32) #1

declare dso_local i32 @debug(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @freez(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
