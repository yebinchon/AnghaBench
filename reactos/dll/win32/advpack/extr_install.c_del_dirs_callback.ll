; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_del_dirs_callback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_del_dirs_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@MAX_INF_STRING_LENGTH = common dso_local global i32 0, align 4
@ADN_DEL_IF_EMPTY = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i8*)* @del_dirs_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @del_dirs_callback(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load i64, i64* @S_OK, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @SetupFindFirstLineW(i32 %15, i32 %16, i32* null, i32* %7)
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %42, %3
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %27 = call i32 @SetupGetLineTextW(i32* %7, i32* null, i32* null, i32* null, i32* %25, i32 %26, i32* %9)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32 4, i32* %13, align 4
  br label %38

30:                                               ; preds = %21
  %31 = load i32, i32* @ADN_DEL_IF_EMPTY, align 4
  %32 = call i64 @DelNodeW(i32* %25, i32 %31)
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i64, i64* @E_FAIL, align 8
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %35, %30
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %13, align 4
  switch i32 %40, label %46 [
    i32 0, label %41
    i32 4, label %42
  ]

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %38
  %43 = call i64 @SetupFindNextLine(i32* %7, i32* %7)
  store i64 %43, i64* %10, align 8
  br label %18

44:                                               ; preds = %18
  %45 = load i64, i64* %8, align 8
  ret i64 %45

46:                                               ; preds = %38
  unreachable
}

declare dso_local i64 @SetupFindFirstLineW(i32, i32, i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SetupGetLineTextW(i32*, i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @DelNodeW(i32*, i32) #1

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
