; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_update_cpu_limits.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_update_cpu_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i64, i64, i64, i32 }

@update_cpu_limits.buf = internal global i8* null, align 8
@update_cpu_limits.buf_size = internal global i64 0, align 8
@.str = private unnamed_addr constant [87 x i8] c"Cannot refresh cgroup %s cpu limit by reading '%s'. Will not update its limit anymore.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64*, %struct.cgroup*)* @update_cpu_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cpu_limits(i8** %0, i64* %1, %struct.cgroup* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.cgroup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.cgroup* %2, %struct.cgroup** %6, align 8
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %121

15:                                               ; preds = %3
  store i32 -1, i32* %7, align 4
  %16 = load i64*, i64** %5, align 8
  %17 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %18 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %17, i32 0, i32 0
  %19 = icmp eq i64* %16, %18
  br i1 %19, label %20, label %83

20:                                               ; preds = %15
  %21 = load i8*, i8** @update_cpu_limits.buf, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = call i32 (...) @get_system_cpus()
  %25 = mul nsw i32 6, %24
  %26 = add i32 100, %25
  %27 = zext i32 %26 to i64
  store i64 %27, i64* @update_cpu_limits.buf_size, align 8
  %28 = load i64, i64* @update_cpu_limits.buf_size, align 8
  %29 = add i64 %28, 1
  %30 = call i8* @mallocz(i64 %29)
  store i8* %30, i8** @update_cpu_limits.buf, align 8
  br label %31

31:                                               ; preds = %23, %20
  %32 = load i8**, i8*** %4, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** @update_cpu_limits.buf, align 8
  %35 = load i64, i64* @update_cpu_limits.buf_size, align 8
  %36 = call i32 @read_file(i8* %33, i8* %34, i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %82, label %39

39:                                               ; preds = %31
  %40 = load i8*, i8** @update_cpu_limits.buf, align 8
  store i8* %40, i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %41

41:                                               ; preds = %71, %51, %39
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = call i64 @cpuset_str2ull(i8** %8)
  store i64 %46, i64* %10, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 44
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %41

56:                                               ; preds = %45
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 45
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  %64 = call i64 @cpuset_str2ull(i8** %8)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %10, align 8
  %67 = sub i64 %65, %66
  %68 = add i64 %67, 1
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %61, %56
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  br label %41

74:                                               ; preds = %41
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @likely(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i64, i64* %9, align 8
  %80 = load i64*, i64** %5, align 8
  store i64 %79, i64* %80, align 8
  br label %81

81:                                               ; preds = %78, %74
  br label %82

82:                                               ; preds = %81, %31
  br label %106

83:                                               ; preds = %15
  %84 = load i64*, i64** %5, align 8
  %85 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %86 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %85, i32 0, i32 1
  %87 = icmp eq i64* %84, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i8**, i8*** %4, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = load i64*, i64** %5, align 8
  %92 = call i32 @read_single_number_file(i8* %90, i64* %91)
  store i32 %92, i32* %7, align 4
  br label %105

93:                                               ; preds = %83
  %94 = load i64*, i64** %5, align 8
  %95 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %96 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %95, i32 0, i32 2
  %97 = icmp eq i64* %94, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i8**, i8*** %4, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load i64*, i64** %5, align 8
  %102 = call i32 @read_single_number_file(i8* %100, i64* %101)
  store i32 %102, i32* %7, align 4
  br label %104

103:                                              ; preds = %93
  store i32 -1, i32* %7, align 4
  br label %104

104:                                              ; preds = %103, %98
  br label %105

105:                                              ; preds = %104, %88
  br label %106

106:                                              ; preds = %105, %82
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %111 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i8**, i8*** %4, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @error(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %112, i8* %114)
  %116 = load i8**, i8*** %4, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @freez(i8* %117)
  %119 = load i8**, i8*** %4, align 8
  store i8* null, i8** %119, align 8
  br label %120

120:                                              ; preds = %109, %106
  br label %121

121:                                              ; preds = %120, %3
  ret void
}

declare dso_local i32 @get_system_cpus(...) #1

declare dso_local i8* @mallocz(i64) #1

declare dso_local i32 @read_file(i8*, i8*, i64) #1

declare dso_local i64 @cpuset_str2ull(i8**) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @read_single_number_file(i8*, i64*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @freez(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
