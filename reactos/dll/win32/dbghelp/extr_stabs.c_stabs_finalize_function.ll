; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_finalize_function.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_finalize_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.symt_function = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.location = type { i64, i32 }

@loc_absolute = common dso_local global i32 0, align 4
@SymTagFuncDebugStart = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module*, %struct.symt_function*, i64)* @stabs_finalize_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stabs_finalize_function(%struct.module* %0, %struct.symt_function* %1, i64 %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.symt_function*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.location, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store %struct.symt_function* %1, %struct.symt_function** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.symt_function*, %struct.symt_function** %5, align 8
  %10 = icmp ne %struct.symt_function* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %48

12:                                               ; preds = %3
  %13 = load %struct.module*, %struct.module** %4, align 8
  %14 = load %struct.symt_function*, %struct.symt_function** %5, align 8
  %15 = call i32 @symt_normalize_function(%struct.module* %13, %struct.symt_function* %14)
  %16 = load %struct.module*, %struct.module** %4, align 8
  %17 = load %struct.symt_function*, %struct.symt_function** %5, align 8
  %18 = load %struct.symt_function*, %struct.symt_function** %5, align 8
  %19 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @symt_fill_func_line_info(%struct.module* %16, %struct.symt_function* %17, i64 %20, %struct.TYPE_4__* %7)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %12
  %24 = load %struct.module*, %struct.module** %4, align 8
  %25 = call i64 @symt_get_func_line_next(%struct.module* %24, %struct.TYPE_4__* %7)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load i32, i32* @loc_absolute, align 4
  %29 = getelementptr inbounds %struct.location, %struct.location* %8, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.symt_function*, %struct.symt_function** %5, align 8
  %33 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = getelementptr inbounds %struct.location, %struct.location* %8, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load %struct.module*, %struct.module** %4, align 8
  %38 = load %struct.symt_function*, %struct.symt_function** %5, align 8
  %39 = load i32, i32* @SymTagFuncDebugStart, align 4
  %40 = call i32 @symt_add_function_point(%struct.module* %37, %struct.symt_function* %38, i32 %39, %struct.location* %8, i32* null)
  br label %41

41:                                               ; preds = %27, %23, %12
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.symt_function*, %struct.symt_function** %5, align 8
  %47 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %11, %44, %41
  ret void
}

declare dso_local i32 @symt_normalize_function(%struct.module*, %struct.symt_function*) #1

declare dso_local i64 @symt_fill_func_line_info(%struct.module*, %struct.symt_function*, i64, %struct.TYPE_4__*) #1

declare dso_local i64 @symt_get_func_line_next(%struct.module*, %struct.TYPE_4__*) #1

declare dso_local i32 @symt_add_function_point(%struct.module*, %struct.symt_function*, i32, %struct.location*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
