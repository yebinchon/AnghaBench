; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_mszip.c_fdi_Ziphuft_free.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_mszip.c_fdi_Ziphuft_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Ziphuft = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.Ziphuft* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.Ziphuft*)* @fdi_Ziphuft_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdi_Ziphuft_free(i32 %0, %struct.Ziphuft* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Ziphuft*, align 8
  %5 = alloca %struct.Ziphuft*, align 8
  %6 = alloca %struct.Ziphuft*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.Ziphuft* %1, %struct.Ziphuft** %4, align 8
  %7 = load %struct.Ziphuft*, %struct.Ziphuft** %4, align 8
  store %struct.Ziphuft* %7, %struct.Ziphuft** %5, align 8
  br label %8

8:                                                ; preds = %11, %2
  %9 = load %struct.Ziphuft*, %struct.Ziphuft** %5, align 8
  %10 = icmp ne %struct.Ziphuft* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load %struct.Ziphuft*, %struct.Ziphuft** %5, align 8
  %13 = getelementptr inbounds %struct.Ziphuft, %struct.Ziphuft* %12, i32 -1
  store %struct.Ziphuft* %13, %struct.Ziphuft** %5, align 8
  %14 = getelementptr inbounds %struct.Ziphuft, %struct.Ziphuft* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.Ziphuft*, %struct.Ziphuft** %15, align 8
  store %struct.Ziphuft* %16, %struct.Ziphuft** %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.Ziphuft*, %struct.Ziphuft** %5, align 8
  %19 = call i32 @PFDI_FREE(i32 %17, %struct.Ziphuft* %18)
  %20 = load %struct.Ziphuft*, %struct.Ziphuft** %6, align 8
  store %struct.Ziphuft* %20, %struct.Ziphuft** %5, align 8
  br label %8

21:                                               ; preds = %8
  ret void
}

declare dso_local i32 @PFDI_FREE(i32, %struct.Ziphuft*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
