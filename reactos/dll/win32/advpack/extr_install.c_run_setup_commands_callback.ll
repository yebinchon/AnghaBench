; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_run_setup_commands_callback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_run_setup_commands_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@S_OK = common dso_local global i64 0, align 8
@MAX_INF_STRING_LENGTH = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i8*)* @run_setup_commands_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @run_setup_commands_callback(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %7, align 8
  %17 = load i64, i64* @S_OK, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @SetupFindFirstLineW(i32 %18, i32 %19, i32* null, i32* %8)
  store i64 %20, i64* %11, align 8
  br label %21

21:                                               ; preds = %47, %3
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %12, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %29 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %30 = call i32 @SetupGetLineTextW(i32* %8, i32* null, i32* null, i32* null, i32* %28, i32 %29, i32* %10)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store i32 4, i32* %14, align 4
  br label %43

33:                                               ; preds = %24
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @launch_exe(i32* %28, i32 %36, i32* null)
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* @E_FAIL, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %40, %33
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %14, align 4
  switch i32 %45, label %51 [
    i32 0, label %46
    i32 4, label %47
  ]

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %43
  %48 = call i64 @SetupFindNextLine(i32* %8, i32* %8)
  store i64 %48, i64* %11, align 8
  br label %21

49:                                               ; preds = %21
  %50 = load i64, i64* %9, align 8
  ret i64 %50

51:                                               ; preds = %43
  unreachable
}

declare dso_local i64 @SetupFindFirstLineW(i32, i32, i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SetupGetLineTextW(i32*, i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @launch_exe(i32*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @SetupFindNextLine(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
