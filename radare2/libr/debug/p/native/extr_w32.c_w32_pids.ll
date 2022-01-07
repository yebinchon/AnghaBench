; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_w32_pids.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_w32_pids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@TH32CS_SNAPPROCESS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"w32_pids/CreateToolhelp32Snapshot\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"w32_pids/Process32First\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @w32_pids(i32 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 12, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @TH32CS_SNAPPROCESS, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @CreateToolhelp32Snapshot(i32 %14, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = call i32 @r_sys_perror(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  store i32* %22, i32** %3, align 8
  br label %64

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @Process32First(i64 %24, %struct.TYPE_5__* %7)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = call i32 @r_sys_perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @CloseHandle(i64 %29)
  %31 = load i32*, i32** %5, align 8
  store i32* %31, i32** %3, align 8
  br label %64

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %56, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %41, %36, %33
  %47 = call i32* @build_debug_pid(%struct.TYPE_5__* %7)
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @r_list_append(i32* %51, i32* %52)
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %41
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @Process32Next(i64 %57, %struct.TYPE_5__* %7)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %33, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @CloseHandle(i64 %61)
  %63 = load i32*, i32** %5, align 8
  store i32* %63, i32** %3, align 8
  br label %64

64:                                               ; preds = %60, %27, %20
  %65 = load i32*, i32** %3, align 8
  ret i32* %65
}

declare dso_local i64 @CreateToolhelp32Snapshot(i32, i32) #1

declare dso_local i32 @r_sys_perror(i8*) #1

declare dso_local i32 @Process32First(i64, %struct.TYPE_5__*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32* @build_debug_pid(%struct.TYPE_5__*) #1

declare dso_local i32 @r_list_append(i32*, i32*) #1

declare dso_local i64 @Process32Next(i64, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
