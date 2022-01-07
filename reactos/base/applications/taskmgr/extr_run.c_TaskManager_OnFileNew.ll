; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_run.c_TaskManager_OnFileNew.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_run.c_TaskManager_OnFileNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hInst = common dso_local global i32 0, align 4
@IDS_CREATENEWTASK = common dso_local global i32 0, align 4
@IDS_CREATENEWTASK_DESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i32] [i32 83, i32 72, i32 69, i32 76, i32 76, i32 51, i32 50, i32 46, i32 68, i32 76, i32 76, i32 0], align 4
@IDI_TASKMANAGER = common dso_local global i32 0, align 4
@hMainWnd = common dso_local global i32 0, align 4
@RFF_CALCDIRECTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TaskManager_OnFileNew() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32 (i32, i32, i32*, i32*, i32*, i32)*, align 8
  %3 = alloca [40 x i32], align 16
  %4 = alloca [256 x i32], align 16
  %5 = alloca i32, align 4
  %6 = load i32, i32* @hInst, align 4
  %7 = load i32, i32* @IDS_CREATENEWTASK, align 4
  %8 = getelementptr inbounds [40 x i32], [40 x i32]* %3, i64 0, i64 0
  %9 = call i32 @LoadStringW(i32 %6, i32 %7, i32* %8, i32 40)
  %10 = load i32, i32* @hInst, align 4
  %11 = load i32, i32* @IDS_CREATENEWTASK_DESC, align 4
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %13 = call i32 @LoadStringW(i32 %10, i32 %11, i32* %12, i32 256)
  %14 = call i32 @LoadLibraryW(i8* bitcast ([12 x i32]* @.str to i8*))
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i64 @GetProcAddress(i32 %15, i32 61)
  %17 = inttoptr i64 %16 to i32 (i32, i32, i32*, i32*, i32*, i32)*
  store i32 (i32, i32, i32*, i32*, i32*, i32)* %17, i32 (i32, i32, i32*, i32*, i32*, i32)** %2, align 8
  %18 = load i32 (i32, i32, i32*, i32*, i32*, i32)*, i32 (i32, i32, i32*, i32*, i32*, i32)** %2, align 8
  %19 = icmp ne i32 (i32, i32, i32*, i32*, i32*, i32)* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %0
  %21 = load i32, i32* @hInst, align 4
  %22 = load i32, i32* @IDI_TASKMANAGER, align 4
  %23 = call i32 @MAKEINTRESOURCEW(i32 %22)
  %24 = call i32 @LoadIconW(i32 %21, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32 (i32, i32, i32*, i32*, i32*, i32)*, i32 (i32, i32, i32*, i32*, i32*, i32)** %2, align 8
  %26 = load i32, i32* @hMainWnd, align 4
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds [40 x i32], [40 x i32]* %3, i64 0, i64 0
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %30 = load i32, i32* @RFF_CALCDIRECTORY, align 4
  %31 = call i32 %25(i32 %26, i32 %27, i32* null, i32* %28, i32* %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @DeleteObject(i32 %32)
  br label %34

34:                                               ; preds = %20, %0
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @FreeLibrary(i32 %35)
  ret void
}

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @LoadLibraryW(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i32) #1

declare dso_local i32 @LoadIconW(i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @FreeLibrary(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
