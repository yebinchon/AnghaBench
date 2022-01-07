; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_managed_log.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_managed_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_stat = type { i32, i8*, i8* }

@debug_enabled = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Cannot process %s/proc/%d/io (command '%s')\00", align 1
@netdata_configured_host_prefix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Cannot process %s/proc/%d/status (command '%s')\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Cannot process %s/proc/%d/cmdline (command '%s')\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Cannot process entries in %s/proc/%d/fd (command '%s')\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"unhandled error for pid %d, command '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pid_stat*, i32, i32)* @managed_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @managed_log(%struct.pid_stat* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pid_stat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pid_stat* %0, %struct.pid_stat** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %104

13:                                               ; preds = %3
  %14 = load i64, i64* @debug_enabled, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @ENOENT, align 8
  %19 = icmp ne i64 %17, %18
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ true, %13 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %103

25:                                               ; preds = %20
  %26 = load i64, i64* @debug_enabled, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %30 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %28, %25
  %37 = phi i1 [ true, %25 ], [ %35, %28 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %102

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %44 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %93 [
    i32 130, label %48
    i32 128, label %59
    i32 132, label %70
    i32 131, label %81
    i32 129, label %92
  ]

48:                                               ; preds = %41
  %49 = load i32, i32* @netdata_configured_host_prefix, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %53 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %56 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %51, i8* %54, i8* %57)
  br label %101

59:                                               ; preds = %41
  %60 = load i32, i32* @netdata_configured_host_prefix, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %64 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %67 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %65, i8* %68)
  br label %101

70:                                               ; preds = %41
  %71 = load i32, i32* @netdata_configured_host_prefix, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %75 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %78 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %73, i8* %76, i8* %79)
  br label %101

81:                                               ; preds = %41
  %82 = load i32, i32* @netdata_configured_host_prefix, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %86 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %89 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %84, i8* %87, i8* %90)
  br label %101

92:                                               ; preds = %41
  br label %101

93:                                               ; preds = %41
  %94 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %95 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %98 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %96, i8* %99)
  br label %101

101:                                              ; preds = %93, %92, %81, %70, %59, %48
  br label %102

102:                                              ; preds = %101, %36
  br label %103

103:                                              ; preds = %102, %20
  store i64 0, i64* @errno, align 8
  br label %120

104:                                              ; preds = %3
  %105 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %106 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = and i32 %107, %108
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load i32, i32* %5, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.pid_stat*, %struct.pid_stat** %4, align 8
  %116 = getelementptr inbounds %struct.pid_stat, %struct.pid_stat* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %112, %104
  br label %120

120:                                              ; preds = %119, %103
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @error(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
