; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_standard.c_kuhl_m_standard_cd.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_standard.c_kuhl_m_standard_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i32] [i32 67, i32 117, i32 114, i32 58, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [32 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 102, i32 105, i32 108, i32 101, i32 95, i32 103, i32 101, i32 116, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 68, i32 105, i32 114, i32 101, i32 99, i32 116, i32 111, i32 114, i32 121, i32 0], align 4
@.str.3 = private unnamed_addr constant [9 x i32] [i32 78, i32 101, i32 119, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [20 x i32] [i32 83, i32 101, i32 116, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 68, i32 105, i32 114, i32 101, i32 99, i32 116, i32 111, i32 114, i32 121, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_standard_cd(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %6 = call i64 @kull_m_file_getCurrentDirectory(i32** %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 (i8*, ...) @kprintf(i8* bitcast ([6 x i32]* @.str to i8*))
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.1 to i8*), i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @LocalFree(i32* %16)
  br label %20

18:                                               ; preds = %2
  %19 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([32 x i32]* @.str.2 to i8*))
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i32**, i32*** %4, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @SetCurrentDirectory(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = call i64 @kull_m_file_getCurrentDirectory(i32** %5)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 (i8*, ...) @kprintf(i8* bitcast ([9 x i32]* @.str.3 to i8*), i32* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @LocalFree(i32* %35)
  br label %39

37:                                               ; preds = %29
  %38 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([32 x i32]* @.str.2 to i8*))
  br label %39

39:                                               ; preds = %37, %32
  br label %42

40:                                               ; preds = %23
  %41 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([20 x i32]* @.str.4 to i8*))
  br label %42

42:                                               ; preds = %40, %39
  br label %43

43:                                               ; preds = %42, %20
  %44 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %44
}

declare dso_local i64 @kull_m_file_getCurrentDirectory(i32**) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i64 @SetCurrentDirectory(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
