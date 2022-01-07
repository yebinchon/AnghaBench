; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_constant_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_constant_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.wined3d_buffer*** }
%struct.wined3d_buffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_cs_set_constant_buffer = type { i64, i64, %struct.wined3d_buffer* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_set_constant_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_set_constant_buffer(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_set_constant_buffer*, align 8
  %6 = alloca %struct.wined3d_buffer*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.wined3d_cs_set_constant_buffer*
  store %struct.wined3d_cs_set_constant_buffer* %8, %struct.wined3d_cs_set_constant_buffer** %5, align 8
  %9 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.wined3d_buffer***, %struct.wined3d_buffer**** %11, align 8
  %13 = load %struct.wined3d_cs_set_constant_buffer*, %struct.wined3d_cs_set_constant_buffer** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_cs_set_constant_buffer, %struct.wined3d_cs_set_constant_buffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.wined3d_buffer**, %struct.wined3d_buffer*** %12, i64 %15
  %17 = load %struct.wined3d_buffer**, %struct.wined3d_buffer*** %16, align 8
  %18 = load %struct.wined3d_cs_set_constant_buffer*, %struct.wined3d_cs_set_constant_buffer** %5, align 8
  %19 = getelementptr inbounds %struct.wined3d_cs_set_constant_buffer, %struct.wined3d_cs_set_constant_buffer* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.wined3d_buffer*, %struct.wined3d_buffer** %17, i64 %20
  %22 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %21, align 8
  store %struct.wined3d_buffer* %22, %struct.wined3d_buffer** %6, align 8
  %23 = load %struct.wined3d_cs_set_constant_buffer*, %struct.wined3d_cs_set_constant_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.wined3d_cs_set_constant_buffer, %struct.wined3d_cs_set_constant_buffer* %23, i32 0, i32 2
  %25 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %24, align 8
  %26 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %27 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.wined3d_buffer***, %struct.wined3d_buffer**** %28, align 8
  %30 = load %struct.wined3d_cs_set_constant_buffer*, %struct.wined3d_cs_set_constant_buffer** %5, align 8
  %31 = getelementptr inbounds %struct.wined3d_cs_set_constant_buffer, %struct.wined3d_cs_set_constant_buffer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.wined3d_buffer**, %struct.wined3d_buffer*** %29, i64 %32
  %34 = load %struct.wined3d_buffer**, %struct.wined3d_buffer*** %33, align 8
  %35 = load %struct.wined3d_cs_set_constant_buffer*, %struct.wined3d_cs_set_constant_buffer** %5, align 8
  %36 = getelementptr inbounds %struct.wined3d_cs_set_constant_buffer, %struct.wined3d_cs_set_constant_buffer* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.wined3d_buffer*, %struct.wined3d_buffer** %34, i64 %37
  store %struct.wined3d_buffer* %25, %struct.wined3d_buffer** %38, align 8
  %39 = load %struct.wined3d_cs_set_constant_buffer*, %struct.wined3d_cs_set_constant_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.wined3d_cs_set_constant_buffer, %struct.wined3d_cs_set_constant_buffer* %39, i32 0, i32 2
  %41 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %40, align 8
  %42 = icmp ne %struct.wined3d_buffer* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %2
  %44 = load %struct.wined3d_cs_set_constant_buffer*, %struct.wined3d_cs_set_constant_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.wined3d_cs_set_constant_buffer, %struct.wined3d_cs_set_constant_buffer* %44, i32 0, i32 2
  %46 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %45, align 8
  %47 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @InterlockedIncrement(i32* %48)
  br label %50

50:                                               ; preds = %43, %2
  %51 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %52 = icmp ne %struct.wined3d_buffer* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %55 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @InterlockedDecrement(i32* %56)
  br label %58

58:                                               ; preds = %53, %50
  %59 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %60 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.wined3d_cs_set_constant_buffer*, %struct.wined3d_cs_set_constant_buffer** %5, align 8
  %63 = getelementptr inbounds %struct.wined3d_cs_set_constant_buffer, %struct.wined3d_cs_set_constant_buffer* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @STATE_CONSTANT_BUFFER(i64 %64)
  %66 = call i32 @device_invalidate_state(i32 %61, i32 %65)
  ret void
}

declare dso_local i32 @InterlockedIncrement(i32*) #1

declare dso_local i32 @InterlockedDecrement(i32*) #1

declare dso_local i32 @device_invalidate_state(i32, i32) #1

declare dso_local i32 @STATE_CONSTANT_BUFFER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
