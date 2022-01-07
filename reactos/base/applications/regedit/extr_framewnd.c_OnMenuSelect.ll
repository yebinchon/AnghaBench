; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_framewnd.c_OnMenuSelect.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_framewnd.c_OnMenuSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@MF_POPUP = common dso_local global i32 0, align 4
@hInst = common dso_local global i32 0, align 4
@hStatusBar = common dso_local global i32 0, align 4
@SB_SETTEXTW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64)* @OnMenuSelect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OnMenuSelect(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [100 x i32], align 16
  %10 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 0
  %12 = call i32 @wcscpy(i32* %11, i8* bitcast ([1 x i32]* @.str to i8*))
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MF_POPUP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @GetMenu(i32 %19)
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 5, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %22
  br label %27

27:                                               ; preds = %26, %17
  br label %28

28:                                               ; preds = %27, %4
  %29 = load i32, i32* @hInst, align 4
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 0
  %32 = call i64 @LoadStringW(i32 %29, i32 %30, i32* %31, i32 100)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 0
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i32* @wcschr(i32* %36, i32 10)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32*, i32** %10, align 8
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %34
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i32, i32* @hStatusBar, align 4
  %45 = load i32, i32* @SB_SETTEXTW, align 4
  %46 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 0
  %47 = ptrtoint i32* %46 to i32
  %48 = call i32 @SendMessageW(i32 %44, i32 %45, i32 0, i32 %47)
  ret void
}

declare dso_local i32 @wcscpy(i32*, i8*) #1

declare dso_local i64 @GetMenu(i32) #1

declare dso_local i64 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32* @wcschr(i32*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
