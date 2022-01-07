; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_close_lavrr.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_close_lavrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*)* @close_lavrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_lavrr(%struct.priv* %0) #0 {
  %2 = alloca %struct.priv*, align 8
  store %struct.priv* %0, %struct.priv** %2, align 8
  %3 = load %struct.priv*, %struct.priv** %2, align 8
  %4 = getelementptr inbounds %struct.priv, %struct.priv* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.priv*, %struct.priv** %2, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @avresample_close(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.priv*, %struct.priv** %2, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 4
  %15 = call i32 @avresample_free(i64* %14)
  %16 = load %struct.priv*, %struct.priv** %2, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.priv*, %struct.priv** %2, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @avresample_close(i64 %23)
  br label %25

25:                                               ; preds = %20, %12
  %26 = load %struct.priv*, %struct.priv** %2, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 3
  %28 = call i32 @avresample_free(i64* %27)
  %29 = load %struct.priv*, %struct.priv** %2, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 2
  %31 = call i32 @TA_FREEP(i32* %30)
  %32 = load %struct.priv*, %struct.priv** %2, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 1
  %34 = call i32 @TA_FREEP(i32* %33)
  %35 = load %struct.priv*, %struct.priv** %2, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 0
  %37 = call i32 @TA_FREEP(i32* %36)
  ret void
}

declare dso_local i32 @avresample_close(i64) #1

declare dso_local i32 @avresample_free(i64*) #1

declare dso_local i32 @TA_FREEP(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
