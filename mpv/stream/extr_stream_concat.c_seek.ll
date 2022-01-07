; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_concat.c_seek.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_concat.c_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i64, %struct.priv* }
%struct.priv = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stream*, i64)* @seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seek(%struct.stream* %0, i64 %1) #0 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.stream*, %struct.stream** %3, align 8
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 1
  %13 = load %struct.priv*, %struct.priv** %12, align 8
  store %struct.priv* %13, %struct.priv** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %45, %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.priv*, %struct.priv** %5, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %48

25:                                               ; preds = %20
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.priv*, %struct.priv** %5, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.priv*, %struct.priv** %5, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @stream_get_size(i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %48

41:                                               ; preds = %25
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %42, %43
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %14

48:                                               ; preds = %40, %24, %14
  %49 = load %struct.priv*, %struct.priv** %5, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.priv*, %struct.priv** %5, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %7, align 8
  %60 = sub nsw i64 %58, %59
  %61 = call i32 @stream_seek(i32 %57, i64 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.priv*, %struct.priv** %5, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.priv*, %struct.priv** %5, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @stream_tell(i32 %71)
  %73 = add nsw i64 %62, %72
  %74 = load %struct.stream*, %struct.stream** %3, align 8
  %75 = getelementptr inbounds %struct.stream, %struct.stream* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local i64 @stream_get_size(i32) #1

declare dso_local i32 @stream_seek(i32, i64) #1

declare dso_local i64 @stream_tell(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
