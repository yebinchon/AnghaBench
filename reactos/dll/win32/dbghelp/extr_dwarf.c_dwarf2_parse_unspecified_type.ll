; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_unspecified_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_unspecified_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }
%struct.TYPE_13__ = type { %struct.symt**, i32 }
%struct.TYPE_14__ = type { %struct.symt* }
%struct.attribute = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.symt_basic = type { %struct.symt }

@.str = private unnamed_addr constant [12 x i8] c"%s, for %s\0A\00", align 1
@DW_AT_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@btVoid = common dso_local global i32 0, align 4
@sc_void = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Unsupported children\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (%struct.TYPE_13__*, %struct.TYPE_14__*)* @dwarf2_parse_unspecified_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @dwarf2_parse_unspecified_type(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.symt*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.attribute, align 8
  %7 = alloca %struct.attribute, align 8
  %8 = alloca %struct.symt_basic*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = call i32 @dwarf2_debug_ctx(%struct.TYPE_13__* %9)
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = call i32 @dwarf2_debug_di(%struct.TYPE_14__* %11)
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.symt*, %struct.symt** %15, align 8
  %17 = icmp ne %struct.symt* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.symt*, %struct.symt** %20, align 8
  store %struct.symt* %21, %struct.symt** %3, align 8
  br label %76

22:                                               ; preds = %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = load i32, i32* @DW_AT_name, align 4
  %26 = call i32 @dwarf2_find_attribute(%struct.TYPE_13__* %23, %struct.TYPE_14__* %24, i32 %25, %struct.attribute* %6)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.attribute, %struct.attribute* %6, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = getelementptr inbounds %struct.attribute, %struct.attribute* %7, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  store i32 8, i32* %33, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @btVoid, align 4
  %38 = getelementptr inbounds %struct.attribute, %struct.attribute* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.attribute, %struct.attribute* %7, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.symt_basic* @symt_new_basic(i32 %36, i32 %37, i8* %40, i32 %43)
  store %struct.symt_basic* %44, %struct.symt_basic** %8, align 8
  %45 = load %struct.symt_basic*, %struct.symt_basic** %8, align 8
  %46 = getelementptr inbounds %struct.symt_basic, %struct.symt_basic* %45, i32 0, i32 0
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  store %struct.symt* %46, %struct.symt** %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load %struct.symt**, %struct.symt*** %50, align 8
  %52 = load i64, i64* @sc_void, align 8
  %53 = getelementptr inbounds %struct.symt*, %struct.symt** %51, i64 %52
  %54 = load %struct.symt*, %struct.symt** %53, align 8
  %55 = icmp ne %struct.symt* %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %31
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load %struct.symt*, %struct.symt** %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load %struct.symt**, %struct.symt*** %61, align 8
  %63 = load i64, i64* @sc_void, align 8
  %64 = getelementptr inbounds %struct.symt*, %struct.symt** %62, i64 %63
  store %struct.symt* %59, %struct.symt** %64, align 8
  br label %65

65:                                               ; preds = %56, %31
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = call i64 @dwarf2_get_di_children(%struct.TYPE_13__* %66, %struct.TYPE_14__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %65
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load %struct.symt*, %struct.symt** %74, align 8
  store %struct.symt* %75, %struct.symt** %3, align 8
  br label %76

76:                                               ; preds = %72, %18
  %77 = load %struct.symt*, %struct.symt** %3, align 8
  ret %struct.symt* %77
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @dwarf2_debug_ctx(%struct.TYPE_13__*) #1

declare dso_local i32 @dwarf2_debug_di(%struct.TYPE_14__*) #1

declare dso_local i32 @dwarf2_find_attribute(%struct.TYPE_13__*, %struct.TYPE_14__*, i32, %struct.attribute*) #1

declare dso_local %struct.symt_basic* @symt_new_basic(i32, i32, i8*, i32) #1

declare dso_local i64 @dwarf2_get_di_children(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
