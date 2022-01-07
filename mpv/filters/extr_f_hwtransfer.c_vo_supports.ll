; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_hwtransfer.c_vo_supports.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_hwtransfer.c_vo_supports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_hwdec_ctx = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_hwdec_ctx*, i32, i32)* @vo_supports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vo_supports(%struct.mp_hwdec_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_hwdec_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mp_hwdec_ctx* %0, %struct.mp_hwdec_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %54

14:                                               ; preds = %3
  %15 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %54

21:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %50, %21
  %23 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %27, %22
  %37 = phi i1 [ false, %22 ], [ %35, %27 ]
  br i1 %37, label %38, label %53

38:                                               ; preds = %36
  %39 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %54

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %22

53:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %48, %20, %13
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
