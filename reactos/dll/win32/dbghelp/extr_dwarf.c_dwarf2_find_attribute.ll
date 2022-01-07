; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_find_attribute.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_find_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_15__* }
%struct.attribute = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }

@attr_direct = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DW_AT_abstract_origin = common dso_local global i64 0, align 8
@DW_AT_specification = common dso_local global i64 0, align 8
@DW_AT_sibling = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"two references %lx and %lx\0A\00", align 1
@attr_abstract_origin = common dso_local global i32 0, align 4
@attr_specification = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Should have found the debug info entry\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32, %struct.attribute*)* @dwarf2_find_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwarf2_find_attribute(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32 %2, %struct.attribute* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.attribute*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.attribute* %3, %struct.attribute** %9, align 8
  store i32 0, i32* %11, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %13, align 8
  %14 = load i32, i32* @attr_direct, align 4
  %15 = load %struct.attribute*, %struct.attribute** %9, align 8
  %16 = getelementptr inbounds %struct.attribute, %struct.attribute* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %127, %4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = icmp ne %struct.TYPE_14__* %18, null
  br i1 %19, label %20, label %128

20:                                               ; preds = %17
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %13, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %12, align 8
  br label %26

26:                                               ; preds = %95, %20
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %28 = icmp ne %struct.TYPE_15__* %27, null
  br i1 %28, label %29, label %101

29:                                               ; preds = %26
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.attribute*, %struct.attribute** %9, align 8
  %46 = call i32 @dwarf2_fill_attr(%struct.TYPE_13__* %36, %struct.TYPE_15__* %37, i32 %44, %struct.attribute* %45)
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %5, align 4
  br label %130

48:                                               ; preds = %29
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* @DW_AT_abstract_origin, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* @DW_AT_specification, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %55, %48
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @DW_AT_sibling, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %94

66:                                               ; preds = %62
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %68 = icmp ne %struct.TYPE_15__* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %69, %66
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %13, align 8
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %11, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = zext i32 %82 to i64
  %84 = load i64, i64* @DW_AT_abstract_origin, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* @attr_abstract_origin, align 4
  br label %90

88:                                               ; preds = %77
  %89 = load i32, i32* @attr_specification, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = load %struct.attribute*, %struct.attribute** %9, align 8
  %93 = getelementptr inbounds %struct.attribute, %struct.attribute* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %62, %55
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %10, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  store %struct.TYPE_15__* %100, %struct.TYPE_15__** %12, align 8
  br label %26

101:                                              ; preds = %26
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %103 = icmp ne %struct.TYPE_15__* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  br label %128

105:                                              ; preds = %101
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.attribute*, %struct.attribute** %9, align 8
  %116 = call i32 @dwarf2_fill_attr(%struct.TYPE_13__* %106, %struct.TYPE_15__* %107, i32 %114, %struct.attribute* %115)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load %struct.attribute*, %struct.attribute** %9, align 8
  %120 = getelementptr inbounds %struct.attribute, %struct.attribute* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call %struct.TYPE_14__* @sparse_array_find(i32* %118, i32 %122)
  store %struct.TYPE_14__* %123, %struct.TYPE_14__** %7, align 8
  %124 = icmp ne %struct.TYPE_14__* %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %105
  %126 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %105
  br label %17

128:                                              ; preds = %104, %17
  %129 = load i32, i32* @FALSE, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %35
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @dwarf2_fill_attr(%struct.TYPE_13__*, %struct.TYPE_15__*, i32, %struct.attribute*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local %struct.TYPE_14__* @sparse_array_find(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
