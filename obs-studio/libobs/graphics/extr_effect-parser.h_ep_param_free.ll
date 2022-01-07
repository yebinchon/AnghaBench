; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.h_ep_param_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.h_ep_param_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep_param = type { %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, %struct.ep_param* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep_param*)* @ep_param_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_param_free(%struct.ep_param* %0) #0 {
  %2 = alloca %struct.ep_param*, align 8
  %3 = alloca i64, align 8
  store %struct.ep_param* %0, %struct.ep_param** %2, align 8
  %4 = load %struct.ep_param*, %struct.ep_param** %2, align 8
  %5 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @bfree(i32 %6)
  %8 = load %struct.ep_param*, %struct.ep_param** %2, align 8
  %9 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bfree(i32 %10)
  %12 = load %struct.ep_param*, %struct.ep_param** %2, align 8
  %13 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %12, i32 0, i32 2
  %14 = bitcast %struct.TYPE_2__* %13 to { i64, %struct.ep_param* }*
  %15 = getelementptr inbounds { i64, %struct.ep_param* }, { i64, %struct.ep_param* }* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, %struct.ep_param* }, { i64, %struct.ep_param* }* %14, i32 0, i32 1
  %18 = load %struct.ep_param*, %struct.ep_param** %17, align 8
  %19 = call i32 @da_free(i64 %16, %struct.ep_param* %18)
  %20 = load %struct.ep_param*, %struct.ep_param** %2, align 8
  %21 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %20, i32 0, i32 1
  %22 = bitcast %struct.TYPE_2__* %21 to { i64, %struct.ep_param* }*
  %23 = getelementptr inbounds { i64, %struct.ep_param* }, { i64, %struct.ep_param* }* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, %struct.ep_param* }, { i64, %struct.ep_param* }* %22, i32 0, i32 1
  %26 = load %struct.ep_param*, %struct.ep_param** %25, align 8
  %27 = call i32 @da_free(i64 %24, %struct.ep_param* %26)
  store i64 0, i64* %3, align 8
  br label %28

28:                                               ; preds = %42, %1
  %29 = load i64, i64* %3, align 8
  %30 = load %struct.ep_param*, %struct.ep_param** %2, align 8
  %31 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %29, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.ep_param*, %struct.ep_param** %2, align 8
  %37 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.ep_param*, %struct.ep_param** %38, align 8
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %39, i64 %40
  call void @ep_param_free(%struct.ep_param* %41)
  br label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %3, align 8
  br label %28

45:                                               ; preds = %28
  %46 = load %struct.ep_param*, %struct.ep_param** %2, align 8
  %47 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %46, i32 0, i32 0
  %48 = bitcast %struct.TYPE_2__* %47 to { i64, %struct.ep_param* }*
  %49 = getelementptr inbounds { i64, %struct.ep_param* }, { i64, %struct.ep_param* }* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds { i64, %struct.ep_param* }, { i64, %struct.ep_param* }* %48, i32 0, i32 1
  %52 = load %struct.ep_param*, %struct.ep_param** %51, align 8
  %53 = call i32 @da_free(i64 %50, %struct.ep_param* %52)
  ret void
}

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @da_free(i64, %struct.ep_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
