; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_get_address.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_get_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }
%struct.symt_data = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.symt_function = type { i32 }
%struct.symt_public = type { i32 }
%struct.symt_hierarchy_point = type { %struct.TYPE_6__, %struct.symt* }
%struct.TYPE_6__ = type { i32 }
%struct.symt_thunk = type { i32 }
%struct.symt_compiland = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unsupported sym-tag %s for get-address\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symt_get_address(%struct.symt* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.symt*, align 8
  %5 = alloca i32*, align 8
  store %struct.symt* %0, %struct.symt** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.symt*, %struct.symt** %4, align 8
  %7 = getelementptr inbounds %struct.symt, %struct.symt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %74 [
    i32 134, label %9
    i32 131, label %25
    i32 129, label %31
    i32 132, label %37
    i32 133, label %37
    i32 130, label %37
    i32 128, label %62
    i32 135, label %68
  ]

9:                                                ; preds = %2
  %10 = load %struct.symt*, %struct.symt** %4, align 8
  %11 = bitcast %struct.symt* %10 to %struct.symt_data*
  %12 = getelementptr inbounds %struct.symt_data, %struct.symt_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %22 [
    i32 136, label %14
    i32 137, label %14
  ]

14:                                               ; preds = %9, %9
  %15 = load %struct.symt*, %struct.symt** %4, align 8
  %16 = bitcast %struct.symt* %15 to %struct.symt_data*
  %17 = getelementptr inbounds %struct.symt_data, %struct.symt_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  br label %24

22:                                               ; preds = %9
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %83

24:                                               ; preds = %14
  br label %81

25:                                               ; preds = %2
  %26 = load %struct.symt*, %struct.symt** %4, align 8
  %27 = bitcast %struct.symt* %26 to %struct.symt_function*
  %28 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %81

31:                                               ; preds = %2
  %32 = load %struct.symt*, %struct.symt** %4, align 8
  %33 = bitcast %struct.symt* %32 to %struct.symt_public*
  %34 = getelementptr inbounds %struct.symt_public, %struct.symt_public* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  br label %81

37:                                               ; preds = %2, %2, %2
  %38 = load %struct.symt*, %struct.symt** %4, align 8
  %39 = bitcast %struct.symt* %38 to %struct.symt_hierarchy_point*
  %40 = getelementptr inbounds %struct.symt_hierarchy_point, %struct.symt_hierarchy_point* %39, i32 0, i32 1
  %41 = load %struct.symt*, %struct.symt** %40, align 8
  %42 = icmp ne %struct.symt* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.symt*, %struct.symt** %4, align 8
  %45 = bitcast %struct.symt* %44 to %struct.symt_hierarchy_point*
  %46 = getelementptr inbounds %struct.symt_hierarchy_point, %struct.symt_hierarchy_point* %45, i32 0, i32 1
  %47 = load %struct.symt*, %struct.symt** %46, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @symt_get_address(%struct.symt* %47, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %43, %37
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %83

53:                                               ; preds = %43
  %54 = load %struct.symt*, %struct.symt** %4, align 8
  %55 = bitcast %struct.symt* %54 to %struct.symt_hierarchy_point*
  %56 = getelementptr inbounds %struct.symt_hierarchy_point, %struct.symt_hierarchy_point* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %81

62:                                               ; preds = %2
  %63 = load %struct.symt*, %struct.symt** %4, align 8
  %64 = bitcast %struct.symt* %63 to %struct.symt_thunk*
  %65 = getelementptr inbounds %struct.symt_thunk, %struct.symt_thunk* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  br label %81

68:                                               ; preds = %2
  %69 = load %struct.symt*, %struct.symt** %4, align 8
  %70 = bitcast %struct.symt* %69 to %struct.symt_compiland*
  %71 = getelementptr inbounds %struct.symt_compiland, %struct.symt_compiland* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  br label %81

74:                                               ; preds = %2
  %75 = load %struct.symt*, %struct.symt** %4, align 8
  %76 = getelementptr inbounds %struct.symt, %struct.symt* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @symt_get_tag_str(i32 %77)
  %79 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %3, align 4
  br label %83

81:                                               ; preds = %68, %62, %53, %31, %25, %24
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %74, %51, %22
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @symt_get_tag_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
