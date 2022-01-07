; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cleanup_all_cgroups.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cleanup_all_cgroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32, i32, i64, %struct.cgroup*, i32, i32, i64 }

@cgroup_root = common dso_local global %struct.cgroup* null, align 8
@CGROUP_OPTIONS_DISABLED_DUPLICATE = common dso_local global i32 0, align 4
@D_CGROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"Enabling duplicate of cgroup '%s' with id '%s', because the original with id '%s' stopped.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_all_cgroups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_all_cgroups() #0 {
  %1 = alloca %struct.cgroup*, align 8
  %2 = alloca %struct.cgroup*, align 8
  %3 = alloca %struct.cgroup*, align 8
  %4 = load %struct.cgroup*, %struct.cgroup** @cgroup_root, align 8
  store %struct.cgroup* %4, %struct.cgroup** %1, align 8
  store %struct.cgroup* null, %struct.cgroup** %2, align 8
  br label %5

5:                                                ; preds = %111, %0
  %6 = load %struct.cgroup*, %struct.cgroup** %1, align 8
  %7 = icmp ne %struct.cgroup* %6, null
  br i1 %7, label %8, label %112

8:                                                ; preds = %5
  %9 = load %struct.cgroup*, %struct.cgroup** %1, align 8
  %10 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %106, label %13

13:                                               ; preds = %8
  %14 = load %struct.cgroup*, %struct.cgroup** @cgroup_root, align 8
  store %struct.cgroup* %14, %struct.cgroup** %3, align 8
  br label %15

15:                                               ; preds = %77, %13
  %16 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %17 = icmp ne %struct.cgroup* %16, null
  br i1 %17, label %18, label %81

18:                                               ; preds = %15
  %19 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %20 = load %struct.cgroup*, %struct.cgroup** %1, align 8
  %21 = icmp ne %struct.cgroup* %19, %20
  br i1 %21, label %22, label %76

22:                                               ; preds = %18
  %23 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %24 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %22
  %28 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %29 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %76, label %32

32:                                               ; preds = %27
  %33 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %34 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CGROUP_OPTIONS_DISABLED_DUPLICATE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %32
  %40 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %41 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.cgroup*, %struct.cgroup** %1, align 8
  %44 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %39
  %48 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %49 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cgroup*, %struct.cgroup** %1, align 8
  %52 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strcmp(i32 %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @D_CGROUP, align 4
  %58 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %59 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %62 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.cgroup*, %struct.cgroup** %1, align 8
  %65 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @debug(i32 %57, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63, i32 %66)
  %68 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %69 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i32, i32* @CGROUP_OPTIONS_DISABLED_DUPLICATE, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %73 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %81

76:                                               ; preds = %47, %39, %32, %27, %22, %18
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %79 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %78, i32 0, i32 3
  %80 = load %struct.cgroup*, %struct.cgroup** %79, align 8
  store %struct.cgroup* %80, %struct.cgroup** %3, align 8
  br label %15

81:                                               ; preds = %56, %15
  %82 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %83 = icmp ne %struct.cgroup* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load %struct.cgroup*, %struct.cgroup** %1, align 8
  %86 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %85, i32 0, i32 3
  %87 = load %struct.cgroup*, %struct.cgroup** %86, align 8
  store %struct.cgroup* %87, %struct.cgroup** @cgroup_root, align 8
  br label %94

88:                                               ; preds = %81
  %89 = load %struct.cgroup*, %struct.cgroup** %1, align 8
  %90 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %89, i32 0, i32 3
  %91 = load %struct.cgroup*, %struct.cgroup** %90, align 8
  %92 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %93 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %92, i32 0, i32 3
  store %struct.cgroup* %91, %struct.cgroup** %93, align 8
  br label %94

94:                                               ; preds = %88, %84
  %95 = load %struct.cgroup*, %struct.cgroup** %1, align 8
  %96 = call i32 @cgroup_free(%struct.cgroup* %95)
  %97 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %98 = icmp ne %struct.cgroup* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = load %struct.cgroup*, %struct.cgroup** @cgroup_root, align 8
  store %struct.cgroup* %100, %struct.cgroup** %1, align 8
  br label %105

101:                                              ; preds = %94
  %102 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %103 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %102, i32 0, i32 3
  %104 = load %struct.cgroup*, %struct.cgroup** %103, align 8
  store %struct.cgroup* %104, %struct.cgroup** %1, align 8
  br label %105

105:                                              ; preds = %101, %99
  br label %111

106:                                              ; preds = %8
  %107 = load %struct.cgroup*, %struct.cgroup** %1, align 8
  store %struct.cgroup* %107, %struct.cgroup** %2, align 8
  %108 = load %struct.cgroup*, %struct.cgroup** %1, align 8
  %109 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %108, i32 0, i32 3
  %110 = load %struct.cgroup*, %struct.cgroup** %109, align 8
  store %struct.cgroup* %110, %struct.cgroup** %1, align 8
  br label %111

111:                                              ; preds = %106, %105
  br label %5

112:                                              ; preds = %5
  ret void
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @debug(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @cgroup_free(%struct.cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
