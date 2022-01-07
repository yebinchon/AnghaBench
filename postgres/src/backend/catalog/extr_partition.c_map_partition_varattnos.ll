; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_partition.c_map_partition_varattnos.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_partition.c_map_partition_varattnos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @map_partition_varattnos(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** @NIL, align 8
  %15 = icmp ne i32* %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.TYPE_5__* @RelationGetDescr(i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.TYPE_5__* @RelationGetDescr(i32 %19)
  %21 = call i32* @convert_tuples_by_name_map(%struct.TYPE_5__* %18, %struct.TYPE_5__* %20)
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.TYPE_5__* @RelationGetDescr(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.TYPE_6__* @RelationGetForm(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @map_variable_attnos(i32* %22, i32 %23, i32 0, i32* %24, i32 %28, i32 %32, i32* %11)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %6, align 8
  br label %35

35:                                               ; preds = %16, %5
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32*, i32** %6, align 8
  ret i32* %42
}

declare dso_local i32* @convert_tuples_by_name_map(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @RelationGetDescr(i32) #1

declare dso_local i64 @map_variable_attnos(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @RelationGetForm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
