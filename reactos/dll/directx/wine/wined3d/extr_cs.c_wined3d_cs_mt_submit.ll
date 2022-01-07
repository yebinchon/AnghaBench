; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_mt_submit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_mt_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i32)* @wined3d_cs_mt_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_mt_submit(%struct.wined3d_cs* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i32, align 4
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %6 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i64 (...) @GetCurrentThreadId()
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @wined3d_cs_st_submit(%struct.wined3d_cs* %11, i32 %12)
  br label %23

14:                                               ; preds = %2
  %15 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %16 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %22 = call i32 @wined3d_cs_queue_submit(i32* %20, %struct.wined3d_cs* %21)
  br label %23

23:                                               ; preds = %14, %10
  ret void
}

declare dso_local i64 @GetCurrentThreadId(...) #1

declare dso_local i32 @wined3d_cs_st_submit(%struct.wined3d_cs*, i32) #1

declare dso_local i32 @wined3d_cs_queue_submit(i32*, %struct.wined3d_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
