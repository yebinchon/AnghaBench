; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_uninstal.c_batfile_thisversion.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_uninstal.c_batfile_thisversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZE = common dso_local global i32 0, align 4
@VIM_VERSION_NODOT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @batfile_thisversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batfile_thisversion(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @BUFSIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @VIM_VERSION_NODOT, align 4
  %14 = call i32 @strlen(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %68

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %64, %20
  %22 = load i32, i32* @BUFSIZE, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32* @fgets(i8* %12, i32 %22, i32* %23)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %65

26:                                               ; preds = %21
  store i8* %12, i8** %6, align 8
  br label %27

27:                                               ; preds = %57, %26
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @VIM_VERSION_NODOT, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @strnicmp(i8* %33, i32 %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @isdigit(i8 signext %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %38
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @isalpha(i8 signext %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %8, align 4
  br label %60

56:                                               ; preds = %46, %38, %32
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  br label %27

60:                                               ; preds = %54, %27
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %65

64:                                               ; preds = %60
  br label %21

65:                                               ; preds = %63, %21
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @fclose(i32* %66)
  br label %68

68:                                               ; preds = %65, %1
  %69 = load i32, i32* %8, align 4
  %70 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %70)
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strnicmp(i8*, i32, i32) #2

declare dso_local i32 @isdigit(i8 signext) #2

declare dso_local i32 @isalpha(i8 signext) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
