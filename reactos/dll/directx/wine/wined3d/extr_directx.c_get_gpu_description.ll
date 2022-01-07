; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_get_gpu_description.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_get_gpu_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpu_description = type { i32, i32 }

@gpu_description_table = common dso_local global %struct.gpu_description* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpu_description* (i32, i32)* @get_gpu_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpu_description* @get_gpu_description(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.gpu_description*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.gpu_description*, %struct.gpu_description** @gpu_description_table, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.gpu_description* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %7
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.gpu_description*, %struct.gpu_description** @gpu_description_table, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.gpu_description, %struct.gpu_description* %14, i64 %16
  %18 = getelementptr inbounds %struct.gpu_description, %struct.gpu_description* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %13, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.gpu_description*, %struct.gpu_description** @gpu_description_table, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.gpu_description, %struct.gpu_description* %23, i64 %25
  %27 = getelementptr inbounds %struct.gpu_description, %struct.gpu_description* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %22, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.gpu_description*, %struct.gpu_description** @gpu_description_table, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.gpu_description, %struct.gpu_description* %31, i64 %33
  store %struct.gpu_description* %34, %struct.gpu_description** %3, align 8
  br label %40

35:                                               ; preds = %21, %12
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %7

39:                                               ; preds = %7
  store %struct.gpu_description* null, %struct.gpu_description** %3, align 8
  br label %40

40:                                               ; preds = %39, %30
  %41 = load %struct.gpu_description*, %struct.gpu_description** %3, align 8
  ret %struct.gpu_description* %41
}

declare dso_local i32 @ARRAY_SIZE(%struct.gpu_description*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
