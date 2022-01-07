; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_sysdm.c_AddNetIdPage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_sysdm.c_AddNetIdPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"netid.dll\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"CreateNetIDPropertyPage\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @AddNetIdPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @AddNetIdPage(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32* (...)*, align 8
  store i32* %0, i32** %2, align 8
  %6 = call i32 @TEXT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = call i32* @LoadLibrary(i32 %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %37

10:                                               ; preds = %1
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @GetProcAddress(i32* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %13 = inttoptr i64 %12 to i32* (...)*
  store i32* (...)* %13, i32* (...)** %5, align 8
  %14 = load i32* (...)*, i32* (...)** %5, align 8
  %15 = icmp ne i32* (...)* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = load i32* (...)*, i32* (...)** %5, align 8
  %18 = call i32* (...) %17()
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %33

22:                                               ; preds = %16
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = ptrtoint i32* %24 to i32
  %26 = call i32 @PropSheetAddPage(i32* %23, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @DestroyPropertySheetPage(i32* %29)
  br label %33

31:                                               ; preds = %22
  br label %36

32:                                               ; preds = %10
  br label %33

33:                                               ; preds = %32, %28, %21
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @FreeLibrary(i32* %34)
  store i32* null, i32** %4, align 8
  br label %36

36:                                               ; preds = %33, %31
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32*, i32** %4, align 8
  ret i32* %38
}

declare dso_local i32* @LoadLibrary(i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i64 @GetProcAddress(i32*, i8*) #1

declare dso_local i32 @PropSheetAddPage(i32*, i32) #1

declare dso_local i32 @DestroyPropertySheetPage(i32*) #1

declare dso_local i32 @FreeLibrary(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
