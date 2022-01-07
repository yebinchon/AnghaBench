; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_png.c_png_build_8bit_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_png.c_png_build_8bit_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64**, i32)* @png_build_8bit_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_build_8bit_table(i32 %0, i64** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i64** %1, i64*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @png_malloc(i32 %9, i32 256)
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64**, i64*** %5, align 8
  store i64* %11, i64** %12, align 8
  store i64* %11, i64** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @png_gamma_significant(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %28, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %18, 256
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @png_gamma_8bit_correct(i32 %21, i32 %22)
  %24 = load i64*, i64** %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  store i64 %23, i64* %27, align 8
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %17

31:                                               ; preds = %17
  br label %48

32:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp ult i32 %34, 256
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 255
  %39 = zext i32 %38 to i64
  %40 = load i64*, i64** %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 %39, i64* %43, align 8
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %33

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %31
  ret void
}

declare dso_local i64 @png_malloc(i32, i32) #1

declare dso_local i64 @png_gamma_significant(i32) #1

declare dso_local i64 @png_gamma_8bit_correct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
