; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_filter_sdh.c_append.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_filter_sdh.c_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }
%struct.buffer = type { i64, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, %struct.buffer*, i8)* @append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append(%struct.sd* %0, %struct.buffer* %1, i8 signext %2) #0 {
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca i8, align 1
  store %struct.sd* %0, %struct.sd** %4, align 8
  store %struct.buffer* %1, %struct.buffer** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load %struct.buffer*, %struct.buffer** %5, align 8
  %8 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load %struct.buffer*, %struct.buffer** %5, align 8
  %13 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.buffer*, %struct.buffer** %5, align 8
  %16 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %14, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %11
  %21 = load i8, i8* %6, align 1
  %22 = load %struct.buffer*, %struct.buffer** %5, align 8
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.buffer*, %struct.buffer** %5, align 8
  %26 = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds i8, i8* %24, i64 %27
  store i8 %21, i8* %29, align 1
  br label %46

30:                                               ; preds = %11, %3
  %31 = load i8, i8* %6, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i8, i8* %6, align 1
  %36 = load %struct.buffer*, %struct.buffer** %5, align 8
  %37 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.buffer*, %struct.buffer** %5, align 8
  %40 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %38, i64 %43
  store i8 %35, i8* %44, align 1
  br label %45

45:                                               ; preds = %34, %30
  br label %46

46:                                               ; preds = %45, %20
  %47 = load i8, i8* %6, align 1
  %48 = sext i8 %47 to i32
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
