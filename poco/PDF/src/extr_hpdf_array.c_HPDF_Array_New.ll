; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_array.c_HPDF_Array_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_array.c_HPDF_Array_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c" HPDF_Array_New\0A\00", align 1
@HPDF_OCLASS_ARRAY = common dso_local global i32 0, align 4
@HPDF_DEF_ITEMS_PER_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @HPDF_Array_New(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %4 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = call %struct.TYPE_14__* @HPDF_GetMem(%struct.TYPE_13__* %5, i32 4)
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %3, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = icmp ne %struct.TYPE_14__* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = call i32 @HPDF_MemSet(%struct.TYPE_14__* %10, i32 0, i32 4)
  %12 = load i32, i32* @HPDF_OCLASS_ARRAY, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %18, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %25 = load i32, i32* @HPDF_DEF_ITEMS_PER_BLOCK, align 4
  %26 = call i32 @HPDF_List_New(%struct.TYPE_13__* %24, i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %9
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = call i32 @HPDF_FreeMem(%struct.TYPE_13__* %34, %struct.TYPE_14__* %35)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %37

37:                                               ; preds = %33, %9
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %39
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_14__* @HPDF_GetMem(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @HPDF_MemSet(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @HPDF_List_New(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @HPDF_FreeMem(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
