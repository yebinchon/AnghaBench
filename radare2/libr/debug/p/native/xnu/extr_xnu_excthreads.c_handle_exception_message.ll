; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/xnu/extr_xnu_excthreads.c_handle_exception_message.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/xnu/extr_xnu_excthreads.c_handle_exception_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@R_DEBUG_REASON_UNKNOWN = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@R_DEBUG_REASON_SEGFAULT = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to suspend task bad access\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"EXC_BAD_ACCESS\0A\00", align 1
@R_DEBUG_REASON_ILLEGAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to suspend task bad instruction\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"EXC_BAD_INSTRUCTION\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"EXC_ARITHMETIC\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"EXC_EMULATION\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"EXC_SOFTWARE\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"failed to suspend task breakpoint\0A\00", align 1
@R_DEBUG_REASON_BREAKPOINT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"UNKNOWN\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"failed to deallocate task port\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"failed to deallocated task port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32*)* @handle_exception_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_exception_message(i32* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @R_DEBUG_REASON_UNKNOWN, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @KERN_SUCCESS, align 4
  %11 = load i32*, i32** %6, align 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %66 [
    i32 132, label %15
    i32 131, label %31
    i32 133, label %47
    i32 129, label %49
    i32 128, label %51
    i32 130, label %53
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @R_DEBUG_REASON_SEGFAULT, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @KERN_FAILURE, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @task_suspend(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @KERN_SUCCESS, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = call i32 @eprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %15
  %30 = call i32 @eprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %68

31:                                               ; preds = %3
  %32 = load i32, i32* @R_DEBUG_REASON_ILLEGAL, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @KERN_FAILURE, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @task_suspend(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @KERN_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = call i32 @eprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %31
  %46 = call i32 @eprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %68

47:                                               ; preds = %3
  %48 = call i32 @eprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %68

49:                                               ; preds = %3
  %50 = call i32 @eprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %68

51:                                               ; preds = %3
  %52 = call i32 @eprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %68

53:                                               ; preds = %3
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @task_suspend(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @KERN_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = call i32 @eprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %53
  %65 = load i32, i32* @R_DEBUG_REASON_BREAKPOINT, align 4
  store i32 %65, i32* %7, align 4
  br label %68

66:                                               ; preds = %3
  %67 = call i32 @eprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %64, %51, %49, %47, %45, %29
  %69 = call i32 (...) @mach_task_self()
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mach_port_deallocate(i32 %69, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @KERN_SUCCESS, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = call i32 @eprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %68
  %81 = call i32 (...) @mach_task_self()
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @mach_port_deallocate(i32 %81, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @KERN_SUCCESS, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = call i32 @eprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %80
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @task_suspend(i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @mach_port_deallocate(i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
