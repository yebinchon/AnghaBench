; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_set_line_number.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_set_line_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vector = type { i32 }
%struct.symt_function = type { i64 }
%struct.symt_ht = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"%s %lx %s %u\0A\00", align 1
@SymTagFunction = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module*, i64, %struct.vector*, i32, i32)* @dwarf2_set_line_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_set_line_number(%struct.module* %0, i64 %1, %struct.vector* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.module*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.symt_function*, align 8
  %12 = alloca %struct.symt_ht*, align 8
  %13 = alloca i32*, align 8
  store %struct.module* %0, %struct.module** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.vector* %2, %struct.vector** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load %struct.vector*, %struct.vector** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sub i32 %18, 1
  %20 = call i32* @vector_at(%struct.vector* %17, i32 %19)
  store i32* %20, i32** %13, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %5
  br label %62

23:                                               ; preds = %16
  %24 = load %struct.module*, %struct.module** %6, align 8
  %25 = getelementptr inbounds %struct.module, %struct.module* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @debugstr_w(i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.module*, %struct.module** %6, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @source_get(%struct.module* %30, i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %29, i32 %33, i32 %34)
  %36 = load %struct.module*, %struct.module** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call %struct.symt_ht* @symt_find_nearest(%struct.module* %36, i64 %37)
  store %struct.symt_ht* %38, %struct.symt_ht** %12, align 8
  %39 = icmp ne %struct.symt_ht* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %23
  %41 = load %struct.symt_ht*, %struct.symt_ht** %12, align 8
  %42 = getelementptr inbounds %struct.symt_ht, %struct.symt_ht* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SymTagFunction, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %23
  br label %62

48:                                               ; preds = %40
  %49 = load %struct.symt_ht*, %struct.symt_ht** %12, align 8
  %50 = bitcast %struct.symt_ht* %49 to %struct.symt_function*
  store %struct.symt_function* %50, %struct.symt_function** %11, align 8
  %51 = load %struct.module*, %struct.module** %6, align 8
  %52 = load %struct.symt_function*, %struct.symt_function** %11, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.symt_function*, %struct.symt_function** %11, align 8
  %58 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %56, %59
  %61 = call i32 @symt_add_func_line(%struct.module* %51, %struct.symt_function* %52, i32 %54, i32 %55, i64 %60)
  br label %62

62:                                               ; preds = %48, %47, %22
  ret void
}

declare dso_local i32* @vector_at(%struct.vector*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @source_get(%struct.module*, i32) #1

declare dso_local %struct.symt_ht* @symt_find_nearest(%struct.module*, i64) #1

declare dso_local i32 @symt_add_func_line(%struct.module*, %struct.symt_function*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
