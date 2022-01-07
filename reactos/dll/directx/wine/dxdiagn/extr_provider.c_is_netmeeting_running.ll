; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_is_netmeeting_running.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_is_netmeeting_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_netmeeting_running.conf_exe = internal constant [9 x i8] c"conf.exe\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_netmeeting_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_netmeeting_running() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = call i64* @enumerate_processes(i64* %2)
  store i64* %8, i64** %3, align 8
  %9 = load i64*, i64** %3, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %11, label %48

11:                                               ; preds = %0
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %37, %11
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %2, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load i64*, i64** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @ARRAY_SIZE(i8* %15)
  %26 = call i64 @get_process_name_from_pid(i64 %24, i8* %15, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = call i32 @lstrcmpW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @is_netmeeting_running.conf_exe, i64 0, i64 0), i8* %15)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load i64*, i64** %3, align 8
  %34 = call i32 @HeapFree(i32 %32, i32 0, i64* %33)
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %44

36:                                               ; preds = %28, %20
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %4, align 8
  br label %16

40:                                               ; preds = %16
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i64*, i64** %3, align 8
  %43 = call i32 @HeapFree(i32 %41, i32 0, i64* %42)
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %31
  %45 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %52 [
    i32 0, label %47
    i32 1, label %50
  ]

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47, %0
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %1, align 4
  ret i32 %51

52:                                               ; preds = %44
  unreachable
}

declare dso_local i64* @enumerate_processes(i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @get_process_name_from_pid(i64, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local i32 @GetProcessHeap(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
