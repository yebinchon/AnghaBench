; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_rsym.c_rsym_finalize_function.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_rsym.c_rsym_finalize_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.symt_function = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.location = type { i64, i32 }

@loc_absolute = common dso_local global i32 0, align 4
@SymTagFuncDebugStart = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module*, %struct.symt_function*)* @rsym_finalize_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsym_finalize_function(%struct.module* %0, %struct.symt_function* %1) #0 {
  %3 = alloca %struct.module*, align 8
  %4 = alloca %struct.symt_function*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.location, align 8
  store %struct.module* %0, %struct.module** %3, align 8
  store %struct.symt_function* %1, %struct.symt_function** %4, align 8
  %7 = load %struct.symt_function*, %struct.symt_function** %4, align 8
  %8 = icmp ne %struct.symt_function* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %39

10:                                               ; preds = %2
  %11 = load %struct.module*, %struct.module** %3, align 8
  %12 = load %struct.symt_function*, %struct.symt_function** %4, align 8
  %13 = call i32 @symt_normalize_function(%struct.module* %11, %struct.symt_function* %12)
  %14 = load %struct.module*, %struct.module** %3, align 8
  %15 = load %struct.symt_function*, %struct.symt_function** %4, align 8
  %16 = load %struct.symt_function*, %struct.symt_function** %4, align 8
  %17 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @symt_fill_func_line_info(%struct.module* %14, %struct.symt_function* %15, i64 %18, %struct.TYPE_4__* %5)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %10
  %22 = load %struct.module*, %struct.module** %3, align 8
  %23 = call i64 @symt_get_func_line_next(%struct.module* %22, %struct.TYPE_4__* %5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32, i32* @loc_absolute, align 4
  %27 = getelementptr inbounds %struct.location, %struct.location* %6, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.symt_function*, %struct.symt_function** %4, align 8
  %31 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = getelementptr inbounds %struct.location, %struct.location* %6, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load %struct.module*, %struct.module** %3, align 8
  %36 = load %struct.symt_function*, %struct.symt_function** %4, align 8
  %37 = load i32, i32* @SymTagFuncDebugStart, align 4
  %38 = call i32 @symt_add_function_point(%struct.module* %35, %struct.symt_function* %36, i32 %37, %struct.location* %6, i32* null)
  br label %39

39:                                               ; preds = %9, %25, %21, %10
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
