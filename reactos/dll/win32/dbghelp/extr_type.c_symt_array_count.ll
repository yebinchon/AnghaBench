; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_array_count.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_array_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.symt_array = type { i32, i32, i32 }

@TI_GET_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, %struct.symt_array*)* @symt_array_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symt_array_count(%struct.module* %0, %struct.symt_array* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.symt_array*, align 8
  %6 = alloca i64, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store %struct.symt_array* %1, %struct.symt_array** %5, align 8
  %7 = load %struct.symt_array*, %struct.symt_array** %5, align 8
  %8 = getelementptr inbounds %struct.symt_array, %struct.symt_array* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load %struct.module*, %struct.module** %4, align 8
  %13 = load %struct.symt_array*, %struct.symt_array** %5, align 8
  %14 = getelementptr inbounds %struct.symt_array, %struct.symt_array* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TI_GET_LENGTH, align 4
  %17 = call i64 @symt_get_info(%struct.module* %12, i32 %15, i32 %16, i64* %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.symt_array*, %struct.symt_array** %5, align 8
  %24 = getelementptr inbounds %struct.symt_array, %struct.symt_array* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 0, %25
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  %29 = sdiv i32 %26, %28
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %19, %11
  store i32 0, i32* %3, align 4
  br label %40

31:                                               ; preds = %2
  %32 = load %struct.symt_array*, %struct.symt_array** %5, align 8
  %33 = getelementptr inbounds %struct.symt_array, %struct.symt_array* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.symt_array*, %struct.symt_array** %5, align 8
  %36 = getelementptr inbounds %struct.symt_array, %struct.symt_array* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %31, %30, %22
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @symt_get_info(%struct.module*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
