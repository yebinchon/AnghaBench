; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_mp_find_filter_kernel.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_mp_find_filter_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_kernel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@mp_filter_kernels = common dso_local global %struct.filter_kernel* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.filter_kernel* @mp_find_filter_kernel(i8* %0) #0 {
  %2 = alloca %struct.filter_kernel*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.filter_kernel*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.filter_kernel* null, %struct.filter_kernel** %2, align 8
  br label %31

8:                                                ; preds = %1
  %9 = load %struct.filter_kernel*, %struct.filter_kernel** @mp_filter_kernels, align 8
  store %struct.filter_kernel* %9, %struct.filter_kernel** %4, align 8
  br label %10

10:                                               ; preds = %27, %8
  %11 = load %struct.filter_kernel*, %struct.filter_kernel** %4, align 8
  %12 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load %struct.filter_kernel*, %struct.filter_kernel** %4, align 8
  %18 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strcmp(i64 %20, i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load %struct.filter_kernel*, %struct.filter_kernel** %4, align 8
  store %struct.filter_kernel* %25, %struct.filter_kernel** %2, align 8
  br label %31

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.filter_kernel*, %struct.filter_kernel** %4, align 8
  %29 = getelementptr inbounds %struct.filter_kernel, %struct.filter_kernel* %28, i32 1
  store %struct.filter_kernel* %29, %struct.filter_kernel** %4, align 8
  br label %10

30:                                               ; preds = %10
  store %struct.filter_kernel* null, %struct.filter_kernel** %2, align 8
  br label %31

31:                                               ; preds = %30, %24, %7
  %32 = load %struct.filter_kernel*, %struct.filter_kernel** %2, align 8
  ret %struct.filter_kernel* %32
}

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
