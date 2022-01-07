; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_update_memory_limits.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_update_memory_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32, i32, i32 }

@.str = private unnamed_addr constant [80 x i8] c"Cannot create cgroup %s chart variable '%s'. Will not update its limit anymore.\00", align 1
@CGROUP_OPTIONS_IS_UNIFIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"Cannot refresh cgroup %s memory limit by reading '%s'. Will not update its limit anymore.\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"max\0A\00\00", align 1
@UINT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32**, i64*, i8*, %struct.cgroup*)* @update_memory_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_memory_limits(i8** %0, i32** %1, i64* %2, i8* %3, %struct.cgroup* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cgroup*, align 8
  %12 = alloca [31 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.cgroup* %4, %struct.cgroup** %11, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %134

18:                                               ; preds = %5
  %19 = load i32**, i32*** %8, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %18
  %27 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %28 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = call i32* @rrdsetvar_custom_chart_variable_create(i32 %29, i8* %30)
  %32 = load i32**, i32*** %8, align 8
  store i32* %31, i32** %32, align 8
  %33 = load i32**, i32*** %8, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %26
  %37 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %38 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @error(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %39, i8* %40)
  %42 = load i8**, i8*** %7, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @freez(i8* %43)
  %45 = load i8**, i8*** %7, align 8
  store i8* null, i8** %45, align 8
  br label %46

46:                                               ; preds = %36, %26
  br label %47

47:                                               ; preds = %46, %18
  %48 = load i8**, i8*** %7, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %133

51:                                               ; preds = %47
  %52 = load i32**, i32*** %8, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %133

55:                                               ; preds = %51
  %56 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %57 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CGROUP_OPTIONS_IS_UNIFIED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %88, label %62

62:                                               ; preds = %55
  %63 = load i8**, i8*** %7, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = call i64 @read_single_number_file(i8* %64, i64* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %70 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i8**, i8*** %7, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @error(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %71, i8* %73)
  %75 = load i8**, i8*** %7, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @freez(i8* %76)
  %78 = load i8**, i8*** %7, align 8
  store i8* null, i8** %78, align 8
  br label %87

79:                                               ; preds = %62
  %80 = load i32**, i32*** %8, align 8
  %81 = load i32*, i32** %80, align 8
  %82 = load i64*, i64** %9, align 8
  %83 = load i64, i64* %82, align 8
  %84 = udiv i64 %83, 1048576
  %85 = trunc i64 %84 to i32
  %86 = call i32 @rrdsetvar_custom_chart_variable_set(i32* %81, i32 %85)
  store i32 1, i32* %6, align 4
  br label %135

87:                                               ; preds = %68
  br label %132

88:                                               ; preds = %55
  %89 = load i8**, i8*** %7, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds [31 x i8], [31 x i8]* %12, i64 0, i64 0
  %92 = call i32 @read_file(i8* %90, i8* %91, i32 30)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %88
  %96 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %97 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i8**, i8*** %7, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @error(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %98, i8* %100)
  %102 = load i8**, i8*** %7, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @freez(i8* %103)
  %105 = load i8**, i8*** %7, align 8
  store i8* null, i8** %105, align 8
  store i32 0, i32* %6, align 4
  br label %135

106:                                              ; preds = %88
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = getelementptr inbounds [31 x i8], [31 x i8]* %12, i64 0, i64 0
  %109 = call i64 @strsame(i8* %107, i8* %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load i64, i64* @UINT64_MAX, align 8
  %113 = load i64*, i64** %9, align 8
  store i64 %112, i64* %113, align 8
  %114 = load i32**, i32*** %8, align 8
  %115 = load i32*, i32** %114, align 8
  %116 = load i64*, i64** %9, align 8
  %117 = load i64, i64* %116, align 8
  %118 = udiv i64 %117, 1048576
  %119 = trunc i64 %118 to i32
  %120 = call i32 @rrdsetvar_custom_chart_variable_set(i32* %115, i32 %119)
  store i32 1, i32* %6, align 4
  br label %135

121:                                              ; preds = %106
  %122 = getelementptr inbounds [31 x i8], [31 x i8]* %12, i64 0, i64 0
  %123 = call i64 @str2ull(i8* %122)
  %124 = load i64*, i64** %9, align 8
  store i64 %123, i64* %124, align 8
  %125 = load i32**, i32*** %8, align 8
  %126 = load i32*, i32** %125, align 8
  %127 = load i64*, i64** %9, align 8
  %128 = load i64, i64* %127, align 8
  %129 = udiv i64 %128, 1048576
  %130 = trunc i64 %129 to i32
  %131 = call i32 @rrdsetvar_custom_chart_variable_set(i32* %126, i32 %130)
  store i32 1, i32* %6, align 4
  br label %135

132:                                              ; preds = %87
  br label %133

133:                                              ; preds = %132, %51, %47
  br label %134

134:                                              ; preds = %133, %5
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %134, %121, %111, %95, %79
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @rrdsetvar_custom_chart_variable_create(i32, i8*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i64 @read_single_number_file(i8*, i64*) #1

declare dso_local i32 @rrdsetvar_custom_chart_variable_set(i32*, i32) #1

declare dso_local i32 @read_file(i8*, i8*, i32) #1

declare dso_local i64 @strsame(i8*, i8*) #1

declare dso_local i64 @str2ull(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
