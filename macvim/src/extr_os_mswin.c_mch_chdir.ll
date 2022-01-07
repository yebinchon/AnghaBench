; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_mswin.c_mch_chdir.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_mswin.c_mch_chdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUL = common dso_local global i8 0, align 1
@p_verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"chdir(%s)\00", align 1
@VER_PLATFORM_WIN32_NT = common dso_local global i64 0, align 8
@enc_codepage = common dso_local global i32 0, align 4
@g_PlatformId = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_chdir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = load i8, i8* @NUL, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %58

12:                                               ; preds = %1
  %13 = load i32, i32* @p_verbose, align 4
  %14 = icmp sge i32 %13, 5
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = call i32 (...) @verbose_enter()
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @smsg(i32* bitcast ([10 x i8]* @.str to i32*), i8* %17)
  %19 = call i32 (...) @verbose_leave()
  br label %20

20:                                               ; preds = %15, %12
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @isalpha(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 58
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = call signext i8 @TOLOWER_ASC(i8 signext %35)
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %37, 97
  %39 = add nsw i32 %38, 1
  %40 = trunc i32 %39 to i8
  %41 = call i64 @_chdrive(i8 signext %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8* %45, i8** %3, align 8
  br label %46

46:                                               ; preds = %43, %32
  br label %47

47:                                               ; preds = %46, %26, %20
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @NUL, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %58

55:                                               ; preds = %47
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @chdir(i8* %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %54, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @verbose_enter(...) #1

declare dso_local i32 @smsg(i32*, i8*) #1

declare dso_local i32 @verbose_leave(...) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i64 @_chdrive(i8 signext) #1

declare dso_local signext i8 @TOLOWER_ASC(i8 signext) #1

declare dso_local i32 @chdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
