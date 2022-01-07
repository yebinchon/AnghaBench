; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_dither.c_getmin.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_dither.c_getmin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32, i64*, i32*, i32, i64* }

@UINT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctx*)* @getmin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getmin(%struct.ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ctx* %0, %struct.ctx** %3, align 8
  %9 = load i64, i64* @UINT64_MAX, align 8
  store i64 %9, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.ctx*, %struct.ctx** %3, align 8
  %11 = getelementptr inbounds %struct.ctx, %struct.ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %54, %1
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %13
  %18 = load %struct.ctx*, %struct.ctx** %3, align 8
  %19 = getelementptr inbounds %struct.ctx, %struct.ctx* %18, i32 0, i32 4
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %54

27:                                               ; preds = %17
  %28 = load %struct.ctx*, %struct.ctx** %3, align 8
  %29 = getelementptr inbounds %struct.ctx, %struct.ctx* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %27
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.ctx*, %struct.ctx** %3, align 8
  %47 = getelementptr inbounds %struct.ctx, %struct.ctx* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = zext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 %45, i32* %52, align 4
  br label %53

53:                                               ; preds = %44, %27
  br label %54

54:                                               ; preds = %53, %26
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %13

57:                                               ; preds = %13
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.ctx*, %struct.ctx** %3, align 8
  %62 = getelementptr inbounds %struct.ctx, %struct.ctx* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %2, align 4
  br label %85

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = udiv i32 %71, 2
  store i32 %72, i32* %2, align 4
  br label %85

73:                                               ; preds = %66
  %74 = load %struct.ctx*, %struct.ctx** %3, align 8
  %75 = getelementptr inbounds %struct.ctx, %struct.ctx* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.ctx*, %struct.ctx** %3, align 8
  %78 = getelementptr inbounds %struct.ctx, %struct.ctx* %77, i32 0, i32 3
  %79 = call i32 @av_lfg_get(i32* %78)
  %80 = load i32, i32* %5, align 4
  %81 = urem i32 %79, %80
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %76, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %73, %70, %60
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @av_lfg_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
