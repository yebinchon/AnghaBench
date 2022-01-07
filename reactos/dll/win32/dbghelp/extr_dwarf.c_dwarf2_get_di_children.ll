; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_get_di_children.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_get_di_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.vector, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.attribute = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@DW_AT_specification = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Should have found the debug info entry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vector* (%struct.TYPE_12__*, %struct.TYPE_13__*)* @dwarf2_get_di_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vector* @dwarf2_get_di_children(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.vector*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.attribute, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  br label %7

7:                                                ; preds = %37, %2
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %9 = icmp ne %struct.TYPE_13__* %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store %struct.vector* %19, %struct.vector** %3, align 8
  br label %39

20:                                               ; preds = %10
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = load i32, i32* @DW_AT_specification, align 4
  %24 = call i32 @dwarf2_find_attribute(%struct.TYPE_12__* %21, %struct.TYPE_13__* %22, i32 %23, %struct.attribute* %6)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %38

27:                                               ; preds = %20
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.attribute, %struct.attribute* %6, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_13__* @sparse_array_find(i32* %29, i32 %32)
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %5, align 8
  %34 = icmp ne %struct.TYPE_13__* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %27
  br label %7

38:                                               ; preds = %26, %7
  store %struct.vector* null, %struct.vector** %3, align 8
  br label %39

39:                                               ; preds = %38, %17
  %40 = load %struct.vector*, %struct.vector** %3, align 8
  ret %struct.vector* %40
}

declare dso_local i32 @dwarf2_find_attribute(%struct.TYPE_12__*, %struct.TYPE_13__*, i32, %struct.attribute*) #1

declare dso_local %struct.TYPE_13__* @sparse_array_find(i32*, i32) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
