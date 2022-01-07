; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_for.c_ReadFileContents.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_for.c_ReadFileContents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Cannot allocate memory for Contents!\0A\00", align 1
@CMDLINE_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Cannot reallocate memory for Contents!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @ReadFileContents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ReadFileContents(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1000, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i32* @cmd_alloc(i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %69

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @CMDLINE_LENGTH, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @_fgetts(i32* %22, i32 %23, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @_tcslen(i32* %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %51, %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load i32*, i32** %8, align 8
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32* @cmd_realloc(i32* %38, i32 %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %36
  %48 = call i32 @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @cmd_free(i32* %49)
  store i32* null, i32** %3, align 8
  br label %69

51:                                               ; preds = %36
  br label %30

52:                                               ; preds = %30
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @_tcscpy(i32* %56, i32* %57)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %21

62:                                               ; preds = %21
  %63 = call i32 @_T(i8 signext 0)
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  %68 = load i32*, i32** %8, align 8
  store i32* %68, i32** %3, align 8
  br label %69

69:                                               ; preds = %62, %47, %18
  %70 = load i32*, i32** %3, align 8
  ret i32* %70
}

declare dso_local i32* @cmd_alloc(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @_fgetts(i32*, i32, i32*) #1

declare dso_local i32 @_tcslen(i32*) #1

declare dso_local i32* @cmd_realloc(i32*, i32) #1

declare dso_local i32 @cmd_free(i32*) #1

declare dso_local i32 @_tcscpy(i32*, i32*) #1

declare dso_local i32 @_T(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
