; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_reset_decoder.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_reset_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i32, %struct.TYPE_2__*, i8*, i8*, i32*, i32, i64, i64, i64, i64, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@MP_NOPTS_VALUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*)* @reset_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_decoder(%struct.priv* %0) #0 {
  %2 = alloca %struct.priv*, align 8
  store %struct.priv* %0, %struct.priv** %2, align 8
  %3 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %4 = load %struct.priv*, %struct.priv** %2, align 8
  %5 = getelementptr inbounds %struct.priv, %struct.priv* %4, i32 0, i32 14
  store i8* %3, i8** %5, align 8
  %6 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %7 = load %struct.priv*, %struct.priv** %2, align 8
  %8 = getelementptr inbounds %struct.priv, %struct.priv* %7, i32 0, i32 13
  store i8* %6, i8** %8, align 8
  %9 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %10 = load %struct.priv*, %struct.priv** %2, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 12
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %13 = load %struct.priv*, %struct.priv** %2, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 11
  store i8* %12, i8** %14, align 8
  %15 = load %struct.priv*, %struct.priv** %2, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 10
  store i64 0, i64* %16, align 8
  %17 = load %struct.priv*, %struct.priv** %2, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 9
  store i64 0, i64* %18, align 8
  %19 = load %struct.priv*, %struct.priv** %2, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 8
  store i64 0, i64* %20, align 8
  %21 = load %struct.priv*, %struct.priv** %2, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 7
  store i64 0, i64* %22, align 8
  %23 = load %struct.priv*, %struct.priv** %2, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 6
  %25 = call i32 @mp_frame_unref(i32* %24)
  %26 = load %struct.priv*, %struct.priv** %2, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.priv*, %struct.priv** %2, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.priv*, %struct.priv** %2, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @talloc_free(i32* %32)
  %34 = load %struct.priv*, %struct.priv** %2, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 5
  store i32* null, i32** %35, align 8
  %36 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %37 = load %struct.priv*, %struct.priv** %2, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.priv*, %struct.priv** %2, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 4
  store i8* %36, i8** %40, align 8
  %41 = load %struct.priv*, %struct.priv** %2, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %1
  %46 = load %struct.priv*, %struct.priv** %2, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mp_filter_reset(i32 %50)
  br label %52

52:                                               ; preds = %45, %1
  ret void
}

declare dso_local i32 @mp_frame_unref(i32*) #1

declare dso_local i32 @talloc_free(i32*) #1

declare dso_local i32 @mp_filter_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
