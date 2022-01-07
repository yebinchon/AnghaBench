; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_symt_get_length.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_symt_get_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.symt = type { i32 }

@TI_GET_LENGTH = common dso_local global i32 0, align 4
@TI_GET_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module*, %struct.symt*, i32*)* @symt_get_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @symt_get_length(%struct.module* %0, %struct.symt* %1, i32* %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.symt*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %4, align 8
  store %struct.symt* %1, %struct.symt** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.module*, %struct.module** %4, align 8
  %9 = load %struct.symt*, %struct.symt** %5, align 8
  %10 = load i32, i32* @TI_GET_LENGTH, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @symt_get_info(%struct.module* %8, %struct.symt* %9, i32 %10, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %37

19:                                               ; preds = %14, %3
  %20 = load %struct.module*, %struct.module** %4, align 8
  %21 = load %struct.symt*, %struct.symt** %5, align 8
  %22 = load i32, i32* @TI_GET_TYPE, align 4
  %23 = call i64 @symt_get_info(%struct.module* %20, %struct.symt* %21, i32 %22, i32* %7)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.module*, %struct.module** %4, align 8
  %27 = load %struct.module*, %struct.module** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.symt* @symt_index2ptr(%struct.module* %27, i32 %28)
  %30 = load i32, i32* @TI_GET_LENGTH, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @symt_get_info(%struct.module* %26, %struct.symt* %29, i32 %30, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %37

35:                                               ; preds = %25, %19
  %36 = load i32*, i32** %6, align 8
  store i32 4096, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %34, %18
  ret void
}

declare dso_local i64 @symt_get_info(%struct.module*, %struct.symt*, i32, i32*) #1

declare dso_local %struct.symt* @symt_index2ptr(%struct.module*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
