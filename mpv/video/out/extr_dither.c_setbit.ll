; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_dither.c_setbit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_dither.c_setbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32*, i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*, i64)* @setbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setbit(%struct.ctx* %0, i64 %1) #0 {
  %3 = alloca %struct.ctx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.ctx* %0, %struct.ctx** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ctx*, %struct.ctx** %3, align 8
  %10 = getelementptr inbounds %struct.ctx, %struct.ctx* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %88

17:                                               ; preds = %2
  %18 = load %struct.ctx*, %struct.ctx** %3, align 8
  %19 = getelementptr inbounds %struct.ctx, %struct.ctx* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 1, i32* %22, align 4
  %23 = load %struct.ctx*, %struct.ctx** %3, align 8
  %24 = getelementptr inbounds %struct.ctx, %struct.ctx* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %5, align 8
  %26 = load %struct.ctx*, %struct.ctx** %3, align 8
  %27 = getelementptr inbounds %struct.ctx, %struct.ctx* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.ctx*, %struct.ctx** %3, align 8
  %30 = getelementptr inbounds %struct.ctx, %struct.ctx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  store i32* %33, i32** %6, align 8
  %34 = load %struct.ctx*, %struct.ctx** %3, align 8
  %35 = getelementptr inbounds %struct.ctx, %struct.ctx* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.ctx*, %struct.ctx** %3, align 8
  %38 = load %struct.ctx*, %struct.ctx** %3, align 8
  %39 = getelementptr inbounds %struct.ctx, %struct.ctx* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ctx*, %struct.ctx** %3, align 8
  %42 = getelementptr inbounds %struct.ctx, %struct.ctx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %40, %43
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %4, align 8
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @WRAP_SIZE2(%struct.ctx* %37, i32 %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %36, i64 %50
  store i32* %51, i32** %7, align 8
  %52 = load %struct.ctx*, %struct.ctx** %3, align 8
  %53 = getelementptr inbounds %struct.ctx, %struct.ctx* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.ctx*, %struct.ctx** %3, align 8
  %56 = getelementptr inbounds %struct.ctx, %struct.ctx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32* %59, i32** %8, align 8
  br label %60

60:                                               ; preds = %64, %17
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ult i32* %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %7, align 8
  %67 = load i32, i32* %65, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %5, align 8
  %70 = load i32, i32* %68, align 4
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %68, align 4
  br label %60

72:                                               ; preds = %60
  %73 = load %struct.ctx*, %struct.ctx** %3, align 8
  %74 = getelementptr inbounds %struct.ctx, %struct.ctx* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %7, align 8
  br label %76

76:                                               ; preds = %80, %72
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = icmp ult i32* %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %7, align 8
  %83 = load i32, i32* %81, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %5, align 8
  %86 = load i32, i32* %84, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %84, align 4
  br label %76

88:                                               ; preds = %16, %76
  ret void
}

declare dso_local i32 @WRAP_SIZE2(%struct.ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
