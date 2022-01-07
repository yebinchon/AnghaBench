; ModuleID = '/home/carl/AnghaBench/reactos/base/system/diskpart/extr_interpreter.c_InterpretScript.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/diskpart/extr_interpreter.c_InterpretScript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ARGS_COUNT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @InterpretScript(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @MAX_ARGS_COUNT, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32*, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load i64, i64* @TRUE, align 8
  store i64 %12, i64* %6, align 8
  %13 = mul nuw i64 8, %9
  %14 = trunc i64 %13 to i32
  %15 = call i32 @memset(i32** %11, i32 0, i32 %14)
  %16 = load i32*, i32** %2, align 8
  store i32* %16, i32** %7, align 8
  br label %17

17:                                               ; preds = %50, %1
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @iswspace(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %21
  %31 = load i32*, i32** %7, align 8
  store i32 0, i32* %31, align 4
  %32 = load i64, i64* @TRUE, align 8
  store i64 %32, i64* %6, align 8
  br label %50

33:                                               ; preds = %26
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @FALSE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MAX_ARGS_COUNT, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %11, i64 %44
  store i32* %42, i32** %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %41, %37, %33
  %49 = load i64, i64* @FALSE, align 8
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %48, %30
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %7, align 8
  br label %17

53:                                               ; preds = %17
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @InterpretCmd(i32 %54, i32** %11)
  %56 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %56)
  ret i64 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i64 @iswspace(i32) #2

declare dso_local i64 @InterpretCmd(i32, i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
