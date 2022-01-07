; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_concat.c_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_concat.c_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i64, %struct.priv* }
%struct.priv = type { i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stream*, i8*, i32)* @fill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_buffer(%struct.stream* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.priv*, align 8
  %8 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.stream*, %struct.stream** %4, align 8
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 1
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %7, align 8
  br label %12

12:                                               ; preds = %3, %57
  %13 = load %struct.priv*, %struct.priv** %7, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.priv*, %struct.priv** %7, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @stream_read_partial(i32 %20, i8* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %12
  %27 = load %struct.priv*, %struct.priv** %7, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.priv*, %struct.priv** %7, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = icmp eq i64 %29, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26, %12
  %37 = load i32, i32* %8, align 4
  ret i32 %37

38:                                               ; preds = %26
  %39 = load %struct.priv*, %struct.priv** %7, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.stream*, %struct.stream** %4, align 8
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load %struct.priv*, %struct.priv** %7, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.priv*, %struct.priv** %7, align 8
  %52 = getelementptr inbounds %struct.priv, %struct.priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @stream_seek(i32 %55, i32 0)
  br label %57

57:                                               ; preds = %47, %38
  br label %12
}

declare dso_local i32 @stream_read_partial(i32, i8*, i32) #1

declare dso_local i32 @stream_seek(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
