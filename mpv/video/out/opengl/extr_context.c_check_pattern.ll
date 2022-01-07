; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context.c_check_pattern.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context.c_check_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [54 x i8] c"wrong pattern, expected %d got %d (hit: %d, mis: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*, i32)* @check_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_pattern(%struct.priv* %0, i32 %1) #0 {
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.priv* %0, %struct.priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.priv*, %struct.priv** %3, align 8
  %7 = getelementptr inbounds %struct.priv, %struct.priv* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.priv*, %struct.priv** %3, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load %struct.priv*, %struct.priv** %3, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.priv*, %struct.priv** %3, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.priv*, %struct.priv** %3, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %19
  %32 = load %struct.priv*, %struct.priv** %3, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %51

36:                                               ; preds = %2
  %37 = load %struct.priv*, %struct.priv** %3, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.priv*, %struct.priv** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.priv*, %struct.priv** %3, align 8
  %45 = getelementptr inbounds %struct.priv, %struct.priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.priv*, %struct.priv** %3, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @MP_WARN(%struct.priv* %41, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @MP_WARN(%struct.priv*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
