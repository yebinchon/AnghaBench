; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_ssepfx.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_ssepfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ud*)* @decode_ssepfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_ssepfx(%struct.ud* %0) #0 {
  %2 = alloca %struct.ud*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %2, align 8
  %5 = load %struct.ud*, %struct.ud** %2, align 8
  %6 = getelementptr inbounds %struct.ud, %struct.ud* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.ud*, %struct.ud** %2, align 8
  %12 = getelementptr inbounds %struct.ud, %struct.ud* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 15
  %17 = add nsw i32 %16, 1
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %3, align 4
  %19 = load %struct.ud*, %struct.ud** %2, align 8
  %20 = getelementptr inbounds %struct.ud, %struct.ud* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load %struct.ud*, %struct.ud** %2, align 8
  %35 = getelementptr inbounds %struct.ud, %struct.ud* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %33
  %45 = load %struct.ud*, %struct.ud** %2, align 8
  %46 = getelementptr inbounds %struct.ud, %struct.ud* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 102
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.ud*, %struct.ud** %2, align 8
  %51 = getelementptr inbounds %struct.ud, %struct.ud* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %52, %33, %30
  %54 = load %struct.ud*, %struct.ud** %2, align 8
  %55 = load %struct.ud*, %struct.ud** %2, align 8
  %56 = getelementptr inbounds %struct.ud, %struct.ud* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @decode_ext(%struct.ud* %54, i64 %63)
  ret i32 %64
}

declare dso_local i32 @decode_ext(%struct.ud*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
