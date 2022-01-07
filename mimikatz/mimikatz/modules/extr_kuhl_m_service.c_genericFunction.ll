; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_service.c_genericFunction.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_service.c_genericFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i32] [i32 37, i32 115, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 58, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 79, i32 75, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [18 x i32] [i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 111, i32 112, i32 101, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@.str.3 = private unnamed_addr constant [31 x i32] [i32 77, i32 105, i32 115, i32 115, i32 105, i32 110, i32 103, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 110, i32 97, i32 109, i32 101, i32 32, i32 97, i32 114, i32 103, i32 117, i32 109, i32 101, i32 110, i32 116, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@KULL_M_WIN_BUILD_7 = common dso_local global i64 0, align 8
@MIMIKATZ_NT_BUILD_NUMBER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genericFunction(i64 (i32*)* %0, i32* %1, i32 %2, i32** %3, i64 %4) #0 {
  %6 = alloca i64 (i32*)*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  store i64 (i32*)* %0, i64 (i32*)** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %5
  %14 = load i32*, i32** %7, align 8
  %15 = load i32**, i32*** %9, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 (i8*, ...) @kprintf(i8* bitcast ([19 x i32]* @.str to i8*), i32* %14, i32* %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %33

21:                                               ; preds = %13
  %22 = load i64 (i32*)*, i64 (i32*)** %6, align 8
  %23 = load i32**, i32*** %9, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 %22(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.1 to i8*))
  br label %32

30:                                               ; preds = %21
  %31 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([18 x i32]* @.str.2 to i8*))
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %13
  br label %36

34:                                               ; preds = %5
  %35 = call i32 @PRINT_ERROR(i8* bitcast ([31 x i32]* @.str.3 to i8*))
  br label %36

36:                                               ; preds = %34, %33
  %37 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %37
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
