; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_Init_Prefork_Server.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_Init_Prefork_Server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@g_prefork_server = common dso_local global %struct.TYPE_4__* null, align 8
@s_max_busy_workers = common dso_local global i32 0, align 4
@g_fnSelect = common dso_local global i32* null, align 8
@s_ppid = common dso_local global i32 0, align 4
@s_pid = common dso_local global i32 0, align 4
@_SC_PHYS_PAGES = common dso_local global i32 0, align 4
@s_total_pages = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LSAPI_Init_Prefork_Server(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prefork_server, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %87

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 -1, i32* %4, align 4
  br label %87

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 10000
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 10000, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* @s_max_busy_workers, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = sdiv i32 %23, 2
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @s_max_busy_workers, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = call i64 @malloc(i32 24)
  %28 = inttoptr i64 %27 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** @g_prefork_server, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prefork_server, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %87

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prefork_server, align 8
  %34 = call i32 @memset(%struct.TYPE_4__* %33, i32 0, i32 24)
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32*, i32** %6, align 8
  store i32* %38, i32** @g_fnSelect, align 8
  br label %39

39:                                               ; preds = %37, %32
  %40 = call i32 (...) @getppid()
  store i32 %40, i32* @s_ppid, align 4
  %41 = call i32 (...) @getpid()
  store i32 %41, i32* @s_pid, align 4
  %42 = load i32, i32* @s_pid, align 4
  %43 = load i32, i32* @s_pid, align 4
  %44 = call i32 @setpgid(i32 %42, i32 %43)
  %45 = load i32, i32* @_SC_PHYS_PAGES, align 4
  %46 = call i32 @sysconf(i32 %45)
  store i32 %46, i32* @s_total_pages, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prefork_server, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prefork_server, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  br label %59

56:                                               ; preds = %39
  %57 = load i32, i32* %5, align 4
  %58 = sdiv i32 %57, 3
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i32 [ 0, %55 ], [ %58, %56 ]
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prefork_server, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  br label %71

68:                                               ; preds = %59
  %69 = load i32, i32* %5, align 4
  %70 = sdiv i32 %69, 3
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i32 [ %67, %65 ], [ %70, %68 ]
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prefork_server, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prefork_server, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prefork_server, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %71
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prefork_server, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  store i32 300, i32* %84, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prefork_server, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  store i32 3600, i32* %86, align 4
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %31, %14, %10
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @setpgid(i32, i32) #1

declare dso_local i32 @sysconf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
