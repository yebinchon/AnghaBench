; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup2_read_blkio.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroup2_read_blkio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkio = type { i64, i64, i32, i64, i64, i32 }

@CONFIG_BOOLEAN_AUTO = common dso_local global i64 0, align 8
@cgroup2_read_blkio.ff = internal global i32* null, align 8
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@cgroups_check = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CGROUP: file '%s' should have 1+ lines.\00", align 1
@netdata_zero_metrics_enabled = common dso_local global i64 0, align 8
@CONFIG_BOOLEAN_YES = common dso_local global i64 0, align 8
@cgroup_recheck_zero_blkio_every_iterations = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkio*, i32)* @cgroup2_read_blkio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup2_read_blkio(%struct.blkio* %0, i32 %1) #0 {
  %3 = alloca %struct.blkio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.blkio* %0, %struct.blkio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.blkio*, %struct.blkio** %3, align 8
  %8 = getelementptr inbounds %struct.blkio, %struct.blkio* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.blkio*, %struct.blkio** %3, align 8
  %14 = getelementptr inbounds %struct.blkio, %struct.blkio* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i1 [ false, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.blkio*, %struct.blkio** %3, align 8
  %24 = getelementptr inbounds %struct.blkio, %struct.blkio* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  br label %149

27:                                               ; preds = %17
  %28 = load %struct.blkio*, %struct.blkio** %3, align 8
  %29 = getelementptr inbounds %struct.blkio, %struct.blkio* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %149

33:                                               ; preds = %27
  %34 = load i32*, i32** @cgroup2_read_blkio.ff, align 8
  %35 = load %struct.blkio*, %struct.blkio** %3, align 8
  %36 = getelementptr inbounds %struct.blkio, %struct.blkio* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %39 = call i32* @procfile_reopen(i32* %34, i32 %37, i32* null, i32 %38)
  store i32* %39, i32** @cgroup2_read_blkio.ff, align 8
  %40 = load i32*, i32** @cgroup2_read_blkio.ff, align 8
  %41 = icmp ne i32* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load %struct.blkio*, %struct.blkio** %3, align 8
  %48 = getelementptr inbounds %struct.blkio, %struct.blkio* %47, i32 0, i32 2
  store i32 0, i32* %48, align 8
  store i32 1, i32* @cgroups_check, align 4
  br label %149

49:                                               ; preds = %33
  %50 = load i32*, i32** @cgroup2_read_blkio.ff, align 8
  %51 = call i32* @procfile_readall(i32* %50)
  store i32* %51, i32** @cgroup2_read_blkio.ff, align 8
  %52 = load i32*, i32** @cgroup2_read_blkio.ff, align 8
  %53 = icmp ne i32* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load %struct.blkio*, %struct.blkio** %3, align 8
  %60 = getelementptr inbounds %struct.blkio, %struct.blkio* %59, i32 0, i32 2
  store i32 0, i32* %60, align 8
  store i32 1, i32* @cgroups_check, align 4
  br label %149

61:                                               ; preds = %49
  %62 = load i32*, i32** @cgroup2_read_blkio.ff, align 8
  %63 = call i64 @procfile_lines(i32* %62)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ult i64 %64, 1
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.blkio*, %struct.blkio** %3, align 8
  %71 = getelementptr inbounds %struct.blkio, %struct.blkio* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.blkio*, %struct.blkio** %3, align 8
  %75 = getelementptr inbounds %struct.blkio, %struct.blkio* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  br label %149

76:                                               ; preds = %61
  %77 = load %struct.blkio*, %struct.blkio** %3, align 8
  %78 = getelementptr inbounds %struct.blkio, %struct.blkio* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.blkio*, %struct.blkio** %3, align 8
  %80 = getelementptr inbounds %struct.blkio, %struct.blkio* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  store i64 0, i64* %5, align 8
  br label %81

81:                                               ; preds = %106, %76
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %109

85:                                               ; preds = %81
  %86 = load i32*, i32** @cgroup2_read_blkio.ff, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i32, i32* %4, align 4
  %89 = add i32 2, %88
  %90 = call i32 @procfile_lineword(i32* %86, i64 %87, i32 %89)
  %91 = call i64 @str2ull(i32 %90)
  %92 = load %struct.blkio*, %struct.blkio** %3, align 8
  %93 = getelementptr inbounds %struct.blkio, %struct.blkio* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %91
  store i64 %95, i64* %93, align 8
  %96 = load i32*, i32** @cgroup2_read_blkio.ff, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load i32, i32* %4, align 4
  %99 = add i32 4, %98
  %100 = call i32 @procfile_lineword(i32* %96, i64 %97, i32 %99)
  %101 = call i64 @str2ull(i32 %100)
  %102 = load %struct.blkio*, %struct.blkio** %3, align 8
  %103 = getelementptr inbounds %struct.blkio, %struct.blkio* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %101
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %85
  %107 = load i64, i64* %5, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %5, align 8
  br label %81

109:                                              ; preds = %81
  %110 = load %struct.blkio*, %struct.blkio** %3, align 8
  %111 = getelementptr inbounds %struct.blkio, %struct.blkio* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = load %struct.blkio*, %struct.blkio** %3, align 8
  %113 = getelementptr inbounds %struct.blkio, %struct.blkio* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CONFIG_BOOLEAN_AUTO, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %148

120:                                              ; preds = %109
  %121 = load %struct.blkio*, %struct.blkio** %3, align 8
  %122 = getelementptr inbounds %struct.blkio, %struct.blkio* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %120
  %126 = load %struct.blkio*, %struct.blkio** %3, align 8
  %127 = getelementptr inbounds %struct.blkio, %struct.blkio* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %125
  %131 = load i64, i64* @netdata_zero_metrics_enabled, align 8
  %132 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %133 = icmp eq i64 %131, %132
  br label %134

134:                                              ; preds = %130, %125, %120
  %135 = phi i1 [ true, %125 ], [ true, %120 ], [ %133, %130 ]
  %136 = zext i1 %135 to i32
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %141 = load %struct.blkio*, %struct.blkio** %3, align 8
  %142 = getelementptr inbounds %struct.blkio, %struct.blkio* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  br label %147

143:                                              ; preds = %134
  %144 = load i64, i64* @cgroup_recheck_zero_blkio_every_iterations, align 8
  %145 = load %struct.blkio*, %struct.blkio** %3, align 8
  %146 = getelementptr inbounds %struct.blkio, %struct.blkio* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %143, %139
  br label %148

148:                                              ; preds = %147, %109
  br label %149

149:                                              ; preds = %22, %46, %58, %69, %148, %27
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @procfile_reopen(i32*, i32, i32*, i32) #1

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i64 @procfile_lines(i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i64 @str2ull(i32) #1

declare dso_local i32 @procfile_lineword(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
