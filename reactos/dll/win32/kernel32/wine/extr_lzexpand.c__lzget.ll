; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_lzexpand.c__lzget.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_lzexpand.c__lzget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzstate = type { i32, i32, i32*, i32 }

@GETLEN = common dso_local global i32 0, align 4
@HFILE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lzstate*, i32*)* @_lzget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_lzget(%struct.lzstate* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lzstate*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.lzstate* %0, %struct.lzstate** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.lzstate*, %struct.lzstate** %4, align 8
  %8 = getelementptr inbounds %struct.lzstate, %struct.lzstate* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.lzstate*, %struct.lzstate** %4, align 8
  %11 = getelementptr inbounds %struct.lzstate, %struct.lzstate* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.lzstate*, %struct.lzstate** %4, align 8
  %16 = getelementptr inbounds %struct.lzstate, %struct.lzstate* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.lzstate*, %struct.lzstate** %4, align 8
  %19 = getelementptr inbounds %struct.lzstate, %struct.lzstate* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %17, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  store i32 1, i32* %3, align 4
  br label %55

26:                                               ; preds = %2
  %27 = load %struct.lzstate*, %struct.lzstate** %4, align 8
  %28 = getelementptr inbounds %struct.lzstate, %struct.lzstate* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.lzstate*, %struct.lzstate** %4, align 8
  %31 = getelementptr inbounds %struct.lzstate, %struct.lzstate* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @GETLEN, align 4
  %34 = call i32 @_lread(i32 %29, i32* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @HFILE_ERROR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @HFILE_ERROR, align 4
  store i32 %39, i32* %3, align 4
  br label %55

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %55

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.lzstate*, %struct.lzstate** %4, align 8
  %47 = getelementptr inbounds %struct.lzstate, %struct.lzstate* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.lzstate*, %struct.lzstate** %4, align 8
  %49 = getelementptr inbounds %struct.lzstate, %struct.lzstate* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.lzstate*, %struct.lzstate** %4, align 8
  %51 = getelementptr inbounds %struct.lzstate, %struct.lzstate* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %44, %43, %38, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @_lread(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
