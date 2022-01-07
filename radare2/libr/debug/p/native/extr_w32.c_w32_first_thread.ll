; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_w32_first_thread.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_w32_first_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@TH32CS_SNAPTHREAD = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"w32_thread_list: invalid handle\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"w32_thread_list: no thread first\0A\00", align 1
@THREAD_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"w32_first_thread/OpenThread\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Could not find an active thread for pid %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @w32_first_thread(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %3, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 12, i32* %7, align 4
  %8 = load i32, i32* @TH32CS_SNAPTHREAD, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @CreateToolhelp32Snapshot(i32 %8, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %56

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @Thread32First(i64 %17, %struct.TYPE_4__* %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @CloseHandle(i64 %21)
  %23 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %56

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %45, %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load i32, i32* @THREAD_ALL_ACCESS, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @w32_OpenThread(i32 %31, i32 0, i32 %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = call i32 @r_sys_perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %50

39:                                               ; preds = %30
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @CloseHandle(i64 %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %2, align 4
  br label %56

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @Thread32Next(i64 %46, %struct.TYPE_4__* %6)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %25, label %49

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @CloseHandle(i64 %53)
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %39, %20, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @CreateToolhelp32Snapshot(i32, i32) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @Thread32First(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @w32_OpenThread(i32, i32, i32) #1

declare dso_local i32 @r_sys_perror(i8*) #1

declare dso_local i64 @Thread32Next(i64, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
