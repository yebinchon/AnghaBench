; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound_convert.c_convert_8_to_24.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound_convert.c_convert_8_to_24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i64, i32, i32)* @convert_8_to_24 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_8_to_24(i8* %0, i8* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  br label %17

17:                                               ; preds = %20, %7
  %18 = load i64, i64* %12, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %15, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to i64*
  store i64* %25, i64** %16, align 8
  %26 = load i64, i64* %15, align 8
  %27 = load i64*, i64** %16, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i64*, i64** %16, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %15, align 8
  %33 = sub nsw i64 %32, 128
  %34 = load i64*, i64** %16, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  store i64 %33, i64* %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8* %39, i8** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @src_advance(i8** %8, i32 %40, i64* %12, i32* %13, i32 %41)
  br label %17

43:                                               ; preds = %17
  ret void
}

declare dso_local i32 @src_advance(i8**, i32, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
