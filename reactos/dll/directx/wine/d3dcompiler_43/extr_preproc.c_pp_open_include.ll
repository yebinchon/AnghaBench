; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_preproc.c_pp_open_include.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_preproc.c_pp_open_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pp_open_include(i8* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i8* @wpp_lookup(i8* %12, i32 %13, i8* %14)
  store i8* %15, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %38

18:                                               ; preds = %4
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @wpp_open(i8* %19, i32 %20)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load i8**, i8*** %9, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %10, align 8
  %29 = load i8**, i8*** %9, align 8
  store i8* %28, i8** %29, align 8
  br label %33

30:                                               ; preds = %24
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @free(i8* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i8*, i8** %11, align 8
  store i8* %34, i8** %5, align 8
  br label %38

35:                                               ; preds = %18
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @free(i8* %36)
  store i8* null, i8** %5, align 8
  br label %38

38:                                               ; preds = %35, %33, %17
  %39 = load i8*, i8** %5, align 8
  ret i8* %39
}

declare dso_local i8* @wpp_lookup(i8*, i32, i8*) #1

declare dso_local i8* @wpp_open(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
