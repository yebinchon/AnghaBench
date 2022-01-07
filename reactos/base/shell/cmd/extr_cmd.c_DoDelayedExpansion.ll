; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmd.c_DoDelayedExpansion.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmd.c_DoDelayedExpansion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMDLINE_LENGTH = common dso_local global i32 0, align 4
@bDelayedExpansion = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DoDelayedExpansion(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32, i32* @CMDLINE_LENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @CMDLINE_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @SubstituteForVars(i32* %15, i32* %11)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load i32, i32* @bDelayedExpansion, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = call i32 @_T(i8 signext 33)
  %24 = call i32 @_tcschr(i32* %11, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %19
  %27 = call i32* @cmd_dup(i32* %11)
  store i32* %27, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %35

28:                                               ; preds = %22
  %29 = call i32 @_T(i8 signext 33)
  %30 = call i32 @SubstituteVars(i32* %11, i32* %14, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32* null, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %35

33:                                               ; preds = %28
  %34 = call i32* @cmd_dup(i32* %14)
  store i32* %34, i32** %2, align 8
  store i32 1, i32* %7, align 4
  br label %35

35:                                               ; preds = %33, %32, %26, %18
  %36 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %36)
  %37 = load i32*, i32** %2, align 8
  ret i32* %37
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SubstituteForVars(i32*, i32*) #2

declare dso_local i32 @_tcschr(i32*, i32) #2

declare dso_local i32 @_T(i8 signext) #2

declare dso_local i32* @cmd_dup(i32*) #2

declare dso_local i32 @SubstituteVars(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
