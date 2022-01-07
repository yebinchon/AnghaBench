; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_namespace.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64* }
%struct.TYPE_12__ = type { i64 }
%struct.vector = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s, for %s\0A\00", align 1
@sc_void = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_12__*)* @dwarf2_parse_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_parse_namespace(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.vector*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call i32 @dwarf2_debug_ctx(%struct.TYPE_11__* %14)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = call i32 @dwarf2_debug_di(%struct.TYPE_12__* %16)
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @sc_void, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = call %struct.vector* @dwarf2_get_di_children(%struct.TYPE_11__* %27, %struct.TYPE_12__* %28)
  store %struct.vector* %29, %struct.vector** %5, align 8
  %30 = load %struct.vector*, %struct.vector** %5, align 8
  %31 = icmp ne %struct.vector* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.vector*, %struct.vector** %5, align 8
  %36 = call i32 @vector_length(%struct.vector* %35)
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.vector*, %struct.vector** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @vector_at(%struct.vector* %39, i32 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_12__**
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %6, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = call i32 @dwarf2_load_one_entry(%struct.TYPE_11__* %44, %struct.TYPE_12__* %45)
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %33

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %12, %50, %13
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @dwarf2_debug_ctx(%struct.TYPE_11__*) #1

declare dso_local i32 @dwarf2_debug_di(%struct.TYPE_12__*) #1

declare dso_local %struct.vector* @dwarf2_get_di_children(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @vector_length(%struct.vector*) #1

declare dso_local i64 @vector_at(%struct.vector*, i32) #1

declare dso_local i32 @dwarf2_load_one_entry(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
