; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_index_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_index_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.wined3d_buffer* }
%struct.wined3d_buffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.wined3d_cs_set_index_buffer = type { %struct.wined3d_buffer*, i32, i32 }

@STATE_INDEXBUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_set_index_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_set_index_buffer(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_set_index_buffer*, align 8
  %6 = alloca %struct.wined3d_buffer*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.wined3d_cs_set_index_buffer*
  store %struct.wined3d_cs_set_index_buffer* %8, %struct.wined3d_cs_set_index_buffer** %5, align 8
  %9 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %11, align 8
  store %struct.wined3d_buffer* %12, %struct.wined3d_buffer** %6, align 8
  %13 = load %struct.wined3d_cs_set_index_buffer*, %struct.wined3d_cs_set_index_buffer** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_cs_set_index_buffer, %struct.wined3d_cs_set_index_buffer* %13, i32 0, i32 0
  %15 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %14, align 8
  %16 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %17 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store %struct.wined3d_buffer* %15, %struct.wined3d_buffer** %18, align 8
  %19 = load %struct.wined3d_cs_set_index_buffer*, %struct.wined3d_cs_set_index_buffer** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_cs_set_index_buffer, %struct.wined3d_cs_set_index_buffer* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %23 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.wined3d_cs_set_index_buffer*, %struct.wined3d_cs_set_index_buffer** %5, align 8
  %26 = getelementptr inbounds %struct.wined3d_cs_set_index_buffer, %struct.wined3d_cs_set_index_buffer* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %29 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.wined3d_cs_set_index_buffer*, %struct.wined3d_cs_set_index_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.wined3d_cs_set_index_buffer, %struct.wined3d_cs_set_index_buffer* %31, i32 0, i32 0
  %33 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %32, align 8
  %34 = icmp ne %struct.wined3d_buffer* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load %struct.wined3d_cs_set_index_buffer*, %struct.wined3d_cs_set_index_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.wined3d_cs_set_index_buffer, %struct.wined3d_cs_set_index_buffer* %36, i32 0, i32 0
  %38 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %37, align 8
  %39 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @InterlockedIncrement(i32* %40)
  br label %42

42:                                               ; preds = %35, %2
  %43 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %44 = icmp ne %struct.wined3d_buffer* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @InterlockedDecrement(i32* %48)
  br label %50

50:                                               ; preds = %45, %42
  %51 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %52 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @STATE_INDEXBUFFER, align 4
  %55 = call i32 @device_invalidate_state(i32 %53, i32 %54)
  ret void
}

declare dso_local i32 @InterlockedIncrement(i32*) #1

declare dso_local i32 @InterlockedDecrement(i32*) #1

declare dso_local i32 @device_invalidate_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
