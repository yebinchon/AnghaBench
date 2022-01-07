; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_run_command.c_system_error_message.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_run_command.c_system_error_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }
%struct.buffer = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"disallowed by script-security setting\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"external program fork failed\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"external program did not exit normally\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"external program exited normally\00", align 1
@OPENVPN_EXECVE_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"could not execute external program\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"external program exited with error status: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.gc_arena*)* @system_error_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @system_error_message(i32 %0, %struct.gc_arena* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gc_arena*, align 8
  %5 = alloca %struct.buffer, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.gc_arena* %1, %struct.gc_arena** %4, align 8
  %7 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %8 = call i64 @alloc_buf_gc(i32 256, %struct.gc_arena* %7)
  %9 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %15 [
    i32 128, label %11
    i32 129, label %13
  ]

11:                                               ; preds = %2
  %12 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %40

13:                                               ; preds = %2
  %14 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %40

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @WIFEXITED(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %39

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @WEXITSTATUS(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %38

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @OPENVPN_EXECVE_FAILURE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %32
  br label %38

38:                                               ; preds = %37, %26
  br label %39

39:                                               ; preds = %38, %19
  br label %40

40:                                               ; preds = %39, %13, %11
  %41 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  ret i8* %43
}

declare dso_local i64 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, ...) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
