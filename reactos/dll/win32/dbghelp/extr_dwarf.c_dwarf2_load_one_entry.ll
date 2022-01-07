; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_load_one_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_load_one_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__, i32*, i32* }
%struct.TYPE_21__ = type { i32, i32, i32 }

@UdtClass = common dso_local global i32 0, align 4
@UdtStruct = common dso_local global i32 0, align 4
@UdtUnion = common dso_local global i32 0, align 4
@loc_absolute = common dso_local global i32 0, align 4
@Wine_DW_no_register = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unhandled Tag type 0x%lx at %s, for %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_24__*)* @dwarf2_load_one_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_load_one_entry(i32* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %6 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %89 [
    i32 132, label %11
    i32 145, label %15
    i32 138, label %19
    i32 144, label %23
    i32 135, label %28
    i32 131, label %33
    i32 146, label %38
    i32 143, label %42
    i32 128, label %46
    i32 130, label %50
    i32 136, label %54
    i32 142, label %58
    i32 134, label %62
    i32 133, label %66
    i32 129, label %70
    i32 139, label %84
    i32 140, label %88
    i32 141, label %88
    i32 137, label %88
  ]

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %14 = call i32 @dwarf2_parse_typedef(i32* %12, %struct.TYPE_24__* %13)
  br label %103

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %18 = call i32 @dwarf2_parse_base_type(i32* %16, %struct.TYPE_24__* %17)
  br label %103

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %22 = call i32 @dwarf2_parse_pointer_type(i32* %20, %struct.TYPE_24__* %21)
  br label %103

23:                                               ; preds = %2
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %26 = load i32, i32* @UdtClass, align 4
  %27 = call i32 @dwarf2_parse_udt_type(i32* %24, %struct.TYPE_24__* %25, i32 %26)
  br label %103

28:                                               ; preds = %2
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %31 = load i32, i32* @UdtStruct, align 4
  %32 = call i32 @dwarf2_parse_udt_type(i32* %29, %struct.TYPE_24__* %30, i32 %31)
  br label %103

33:                                               ; preds = %2
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %36 = load i32, i32* @UdtUnion, align 4
  %37 = call i32 @dwarf2_parse_udt_type(i32* %34, %struct.TYPE_24__* %35, i32 %36)
  br label %103

38:                                               ; preds = %2
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %41 = call i32 @dwarf2_parse_array_type(i32* %39, %struct.TYPE_24__* %40)
  br label %103

42:                                               ; preds = %2
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %45 = call i32 @dwarf2_parse_const_type(i32* %43, %struct.TYPE_24__* %44)
  br label %103

46:                                               ; preds = %2
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %49 = call i32 @dwarf2_parse_volatile_type(i32* %47, %struct.TYPE_24__* %48)
  br label %103

50:                                               ; preds = %2
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %53 = call i32 @dwarf2_parse_unspecified_type(i32* %51, %struct.TYPE_24__* %52)
  br label %103

54:                                               ; preds = %2
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %57 = call i32 @dwarf2_parse_reference_type(i32* %55, %struct.TYPE_24__* %56)
  br label %103

58:                                               ; preds = %2
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %61 = call i32 @dwarf2_parse_enumeration_type(i32* %59, %struct.TYPE_24__* %60)
  br label %103

62:                                               ; preds = %2
  %63 = load i32*, i32** %3, align 8
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %65 = call i32 @dwarf2_parse_subprogram(i32* %63, %struct.TYPE_24__* %64)
  br label %103

66:                                               ; preds = %2
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %69 = call i32 @dwarf2_parse_subroutine_type(i32* %67, %struct.TYPE_24__* %68)
  br label %103

70:                                               ; preds = %2
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 2
  store i32* %71, i32** %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = load i32, i32* @loc_absolute, align 4
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* @Wine_DW_no_register, align 4
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %83 = call i32 @dwarf2_parse_variable(%struct.TYPE_23__* %5, i32* null, %struct.TYPE_24__* %82)
  br label %103

84:                                               ; preds = %2
  %85 = load i32*, i32** %3, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %87 = call i32 @dwarf2_parse_namespace(i32* %85, %struct.TYPE_24__* %86)
  br label %103

88:                                               ; preds = %2, %2, %2
  br label %103

89:                                               ; preds = %2
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @dwarf2_debug_ctx(i32* %95)
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @FIXME(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %96, i32 %101)
  br label %103

103:                                              ; preds = %89, %88, %84, %70, %66, %62, %58, %54, %50, %46, %42, %38, %33, %28, %23, %19, %15, %11
  ret void
}

declare dso_local i32 @dwarf2_parse_typedef(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @dwarf2_parse_base_type(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @dwarf2_parse_pointer_type(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @dwarf2_parse_udt_type(i32*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @dwarf2_parse_array_type(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @dwarf2_parse_const_type(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @dwarf2_parse_volatile_type(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @dwarf2_parse_unspecified_type(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @dwarf2_parse_reference_type(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @dwarf2_parse_enumeration_type(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @dwarf2_parse_subprogram(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @dwarf2_parse_subroutine_type(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @dwarf2_parse_variable(%struct.TYPE_23__*, i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @dwarf2_parse_namespace(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @FIXME(i8*, i32, i32, i32) #1

declare dso_local i32 @dwarf2_debug_ctx(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
