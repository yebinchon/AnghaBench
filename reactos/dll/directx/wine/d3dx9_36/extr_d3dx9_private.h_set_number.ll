; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_d3dx9_private.h_set_number.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_d3dx9_private.h_set_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32)* @set_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_number(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 4
  br label %41

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %38 [
    i32 129, label %20
    i32 130, label %26
    i32 128, label %32
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call float @get_float(i32 %21, i8* %22)
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to float*
  store float %23, float* %25, align 4
  br label %41

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @get_bool(i32 %27, i8* %28)
  %30 = load i8*, i8** %5, align 8
  %31 = bitcast i8* %30 to i32*
  store i32 %29, i32* %31, align 4
  br label %41

32:                                               ; preds = %18
  %33 = load i32, i32* %8, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @get_int(i32 %33, i8* %34)
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to i32*
  store i32 %35, i32* %37, align 4
  br label %41

38:                                               ; preds = %18
  %39 = load i8*, i8** %5, align 8
  %40 = bitcast i8* %39 to i32*
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %12, %38, %32, %26, %20
  ret void
}

declare dso_local float @get_float(i32, i8*) #1

declare dso_local i32 @get_bool(i32, i8*) #1

declare dso_local i32 @get_int(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
