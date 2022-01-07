; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_daemon.c_become_daemon.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_daemon.c_become_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"cannot fork\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot become session leader.\00", align 1
@pidfile = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Cannot truncate pidfile '%s'.\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Cannot write pidfile '%s'.\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to open pidfile '%s'.\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Cannot become user '%s'. Continuing as we are.\00", align 1
@D_SYSTEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Successfully became user '%s'.\00", align 1
@netdata_configured_cache_dir = common dso_local global i32 0, align 4
@netdata_configured_varlib_dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @become_daemon(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [100 x i8], align 16
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %2
  %12 = call i32 (...) @fork()
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @exit(i32 0) #3
  unreachable

23:                                               ; preds = %18
  %24 = call i64 (...) @setsid()
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @exit(i32 2) #3
  unreachable

29:                                               ; preds = %23
  %30 = call i32 (...) @fork()
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @exit(i32 0) #3
  unreachable

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %2
  store i32 -1, i32* %6, align 4
  %43 = load i8*, i8** @pidfile, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %42
  %48 = load i8*, i8** @pidfile, align 8
  %49 = load i32, i32* @O_WRONLY, align 4
  %50 = load i32, i32* @O_CREAT, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @open(i8* %48, i32 %51, i32 420)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @ftruncate(i32 %56, i32 0)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** @pidfile, align 8
  %61 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %64 = call i32 (...) @getpid()
  %65 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %68 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %69 = call i32 @strlen(i8* %68)
  %70 = call i64 @write(i32 %66, i8* %67, i32 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp sle i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load i8*, i8** @pidfile, align 8
  %75 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %62
  br label %80

77:                                               ; preds = %47
  %78 = load i8*, i8** @pidfile, align 8
  %79 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %77, %76
  br label %81

81:                                               ; preds = %80, %42
  %82 = call i32 @umask(i32 7)
  %83 = call i32 (...) @oom_score_adj()
  %84 = call i32 (...) @sched_setscheduler_set()
  %85 = load i8*, i8** %4, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %105

87:                                               ; preds = %81
  %88 = load i8*, i8** %4, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load i8*, i8** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i64 @become_user(i8* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* %98)
  br label %104

100:                                              ; preds = %92
  %101 = load i32, i32* @D_SYSTEM, align 4
  %102 = load i8*, i8** %4, align 8
  %103 = call i32 @debug(i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %100, %97
  br label %114

105:                                              ; preds = %87, %81
  %106 = load i32, i32* @netdata_configured_cache_dir, align 4
  %107 = call i32 (...) @getuid()
  %108 = call i32 (...) @getgid()
  %109 = call i32 @create_needed_dir(i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* @netdata_configured_varlib_dir, align 4
  %111 = call i32 (...) @getuid()
  %112 = call i32 (...) @getgid()
  %113 = call i32 @create_needed_dir(i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %105, %104
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, -1
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @close(i32 %118)
  br label %120

120:                                              ; preds = %117, %114
  ret i32 0
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @setsid(...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @ftruncate(i32, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @oom_score_adj(...) #1

declare dso_local i32 @sched_setscheduler_set(...) #1

declare dso_local i64 @become_user(i8*, i32) #1

declare dso_local i32 @debug(i32, i8*, i8*) #1

declare dso_local i32 @create_needed_dir(i32, i32, i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
