; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_util.c_load_resource_into_memory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_util.c_load_resource_into_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_resource_into_memory(i32 %0, i32 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @SizeofResource(i32 %11, i32 %12)
  %14 = load i64*, i64** %9, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = call i32 (...) @GetLastError()
  %20 = call i32 @HRESULT_FROM_WIN32(i32 %19)
  store i32 %20, i32* %5, align 4
  br label %42

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @LoadResource(i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 @HRESULT_FROM_WIN32(i32 %28)
  store i32 %29, i32* %5, align 4
  br label %42

30:                                               ; preds = %21
  %31 = load i32, i32* %10, align 4
  %32 = call i8* @LockResource(i32 %31)
  %33 = load i8**, i8*** %8, align 8
  store i8* %32, i8** %33, align 8
  %34 = load i8**, i8*** %8, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = call i32 (...) @GetLastError()
  %39 = call i32 @HRESULT_FROM_WIN32(i32 %38)
  store i32 %39, i32* %5, align 4
  br label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @S_OK, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %37, %27, %18
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @SizeofResource(i32, i32) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @LoadResource(i32, i32) #1

declare dso_local i8* @LockResource(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
