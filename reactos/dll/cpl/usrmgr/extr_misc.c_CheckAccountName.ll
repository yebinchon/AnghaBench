; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/usrmgr/extr_misc.c_CheckAccountName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/usrmgr/extr_misc.c_CheckAccountName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"\22*+,/\\:;<=>?[]|\00", align 1
@.str.1 = private unnamed_addr constant [115 x i8] c"The account name you entered is invalid! An account name must not contain the following characters: *+,/:;<=>?[\\]|\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckAccountName(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [256 x i32], align 16
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @_tcslen(i32* %13)
  store i64 %14, i64* %9, align 8
  br label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %19 = call i64 @GetDlgItemText(i32 %16, i32 %17, i32* %18, i32 256)
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %15, %12
  %21 = load i64, i64* %9, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  br label %30

28:                                               ; preds = %23
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32* [ %27, %26 ], [ %29, %28 ]
  %32 = call i32 @TEXT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %33 = call i32* @_tcspbrk(i32* %31, i32 %32)
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @TEXT(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @TEXT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @MB_OK, align 4
  %40 = load i32, i32* @MB_ICONERROR, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @MessageBox(i32 %36, i32 %37, i32 %38, i32 %41)
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %30, %20
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %35
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @_tcslen(i32*) #1

declare dso_local i64 @GetDlgItemText(i32, i32, i32*, i32) #1

declare dso_local i32* @_tcspbrk(i32*, i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @MessageBox(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
