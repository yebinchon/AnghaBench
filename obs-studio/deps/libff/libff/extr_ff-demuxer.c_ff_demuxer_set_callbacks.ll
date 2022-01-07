; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_ff_demuxer_set_callbacks.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_ff_demuxer_set_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_callbacks = type { i8*, i8*, i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_demuxer_set_callbacks(%struct.ff_callbacks* %0, i8* %1, i32 %2, i32 %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.ff_callbacks*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.ff_callbacks* %0, %struct.ff_callbacks** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.ff_callbacks*, %struct.ff_callbacks** %8, align 8
  %17 = getelementptr inbounds %struct.ff_callbacks, %struct.ff_callbacks* %16, i32 0, i32 5
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.ff_callbacks*, %struct.ff_callbacks** %8, align 8
  %20 = getelementptr inbounds %struct.ff_callbacks, %struct.ff_callbacks* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.ff_callbacks*, %struct.ff_callbacks** %8, align 8
  %23 = getelementptr inbounds %struct.ff_callbacks, %struct.ff_callbacks* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.ff_callbacks*, %struct.ff_callbacks** %8, align 8
  %26 = getelementptr inbounds %struct.ff_callbacks, %struct.ff_callbacks* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load %struct.ff_callbacks*, %struct.ff_callbacks** %8, align 8
  %29 = getelementptr inbounds %struct.ff_callbacks, %struct.ff_callbacks* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load %struct.ff_callbacks*, %struct.ff_callbacks** %8, align 8
  %32 = getelementptr inbounds %struct.ff_callbacks, %struct.ff_callbacks* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
