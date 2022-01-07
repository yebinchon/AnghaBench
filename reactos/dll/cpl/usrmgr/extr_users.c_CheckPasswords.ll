; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/usrmgr/extr_users.c_CheckPasswords.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/usrmgr/extr_users.c_CheckPasswords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PWLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"The passwords you entered are not the same!\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @CheckPasswords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckPasswords(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @PWLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @PWLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PWLEN, align 4
  %24 = call i64 @GetDlgItemText(i32 %21, i32 %22, i32* %17, i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PWLEN, align 4
  %28 = call i64 @GetDlgItemText(i32 %25, i32 %26, i32* %20, i32 %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = call i64 @_tcscmp(i32* %17, i32* %20)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32, %3
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @TEXT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @TEXT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @MB_OK, align 4
  %40 = load i32, i32* @MB_ICONERROR, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @MessageBox(i32 %36, i32 %37, i32 %38, i32 %41)
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %46

46:                                               ; preds = %44, %35
  %47 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetDlgItemText(i32, i32, i32*, i32) #2

declare dso_local i64 @_tcscmp(i32*, i32*) #2

declare dso_local i32 @MessageBox(i32, i32, i32, i32) #2

declare dso_local i32 @TEXT(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
