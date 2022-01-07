; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_new_pointer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_new_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt_pointer = type { i64, %struct.TYPE_2__, %struct.symt* }
%struct.TYPE_2__ = type { i32 }
%struct.module = type { i32 }
%struct.symt = type { i32 }

@SymTagPointerType = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symt_pointer* @symt_new_pointer(%struct.module* %0, %struct.symt* %1, i64 %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.symt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.symt_pointer*, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store %struct.symt* %1, %struct.symt** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.module*, %struct.module** %4, align 8
  %9 = getelementptr inbounds %struct.module, %struct.module* %8, i32 0, i32 0
  %10 = call %struct.symt_pointer* @pool_alloc(i32* %9, i32 24)
  store %struct.symt_pointer* %10, %struct.symt_pointer** %7, align 8
  %11 = icmp ne %struct.symt_pointer* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load i32, i32* @SymTagPointerType, align 4
  %14 = load %struct.symt_pointer*, %struct.symt_pointer** %7, align 8
  %15 = getelementptr inbounds %struct.symt_pointer, %struct.symt_pointer* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.symt*, %struct.symt** %5, align 8
  %18 = load %struct.symt_pointer*, %struct.symt_pointer** %7, align 8
  %19 = getelementptr inbounds %struct.symt_pointer, %struct.symt_pointer* %18, i32 0, i32 2
  store %struct.symt* %17, %struct.symt** %19, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.symt_pointer*, %struct.symt_pointer** %7, align 8
  %22 = getelementptr inbounds %struct.symt_pointer, %struct.symt_pointer* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.module*, %struct.module** %4, align 8
  %24 = load %struct.symt_pointer*, %struct.symt_pointer** %7, align 8
  %25 = getelementptr inbounds %struct.symt_pointer, %struct.symt_pointer* %24, i32 0, i32 1
  %26 = call i32 @symt_add_type(%struct.module* %23, %struct.TYPE_2__* %25)
  br label %27

27:                                               ; preds = %12, %3
  %28 = load %struct.symt_pointer*, %struct.symt_pointer** %7, align 8
  ret %struct.symt_pointer* %28
}

declare dso_local %struct.symt_pointer* @pool_alloc(i32*, i32) #1

declare dso_local i32 @symt_add_type(%struct.module*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
