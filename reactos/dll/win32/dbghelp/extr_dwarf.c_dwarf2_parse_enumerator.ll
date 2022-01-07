; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_enumerator.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_enumerator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.symt_enum = type { i32 }
%struct.attribute = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s, for %s\0A\00", align 1
@DW_AT_name = common dso_local global i32 0, align 4
@DW_AT_const_value = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unsupported children\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, %struct.symt_enum*)* @dwarf2_parse_enumerator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_parse_enumerator(%struct.TYPE_8__* %0, i32* %1, %struct.symt_enum* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.symt_enum*, align 8
  %7 = alloca %struct.attribute, align 8
  %8 = alloca %struct.attribute, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.symt_enum* %2, %struct.symt_enum** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = call i32 @dwarf2_debug_ctx(%struct.TYPE_8__* %9)
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @dwarf2_debug_di(i32* %11)
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @DW_AT_name, align 4
  %17 = call i32 @dwarf2_find_attribute(%struct.TYPE_8__* %14, i32* %15, i32 %16, %struct.attribute* %7)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %47

20:                                               ; preds = %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @DW_AT_const_value, align 4
  %24 = call i32 @dwarf2_find_attribute(%struct.TYPE_8__* %21, i32* %22, i32 %23, %struct.attribute* %8)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.attribute, %struct.attribute* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.symt_enum*, %struct.symt_enum** %6, align 8
  %34 = getelementptr inbounds %struct.attribute, %struct.attribute* %7, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.attribute, %struct.attribute* %8, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @symt_add_enum_element(i32 %32, %struct.symt_enum* %33, i32 %36, i64 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @dwarf2_get_di_children(%struct.TYPE_8__* %41, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %19, %45, %29
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @dwarf2_debug_ctx(%struct.TYPE_8__*) #1

declare dso_local i32 @dwarf2_debug_di(i32*) #1

declare dso_local i32 @dwarf2_find_attribute(%struct.TYPE_8__*, i32*, i32, %struct.attribute*) #1

declare dso_local i32 @symt_add_enum_element(i32, %struct.symt_enum*, i32, i64) #1

declare dso_local i64 @dwarf2_get_di_children(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
