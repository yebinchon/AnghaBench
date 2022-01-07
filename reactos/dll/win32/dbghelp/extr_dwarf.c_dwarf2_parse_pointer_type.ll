; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_pointer_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_pointer_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.symt** }
%struct.TYPE_17__ = type { %struct.symt* }
%struct.attribute = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { %struct.symt }

@.str = private unnamed_addr constant [12 x i8] c"%s, for %s\0A\00", align 1
@DW_AT_byte_size = common dso_local global i32 0, align 4
@sc_void = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Unsupported children\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (%struct.TYPE_16__*, %struct.TYPE_17__*)* @dwarf2_parse_pointer_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @dwarf2_parse_pointer_type(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.symt*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.symt*, align 8
  %7 = alloca %struct.attribute, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load %struct.symt*, %struct.symt** %9, align 8
  %11 = icmp ne %struct.symt* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load %struct.symt*, %struct.symt** %14, align 8
  store %struct.symt* %15, %struct.symt** %3, align 8
  br label %66

16:                                               ; preds = %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = call i32 @dwarf2_debug_ctx(%struct.TYPE_16__* %17)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = call i32 @dwarf2_debug_di(%struct.TYPE_17__* %19)
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = load i32, i32* @DW_AT_byte_size, align 4
  %25 = call i32 @dwarf2_find_attribute(%struct.TYPE_16__* %22, %struct.TYPE_17__* %23, i32 %24, %struct.attribute* %7)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.attribute, %struct.attribute* %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  store i32 8, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %16
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = call %struct.symt* @dwarf2_lookup_type(%struct.TYPE_16__* %31, %struct.TYPE_17__* %32)
  store %struct.symt* %33, %struct.symt** %6, align 8
  %34 = icmp ne %struct.symt* %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load %struct.symt**, %struct.symt*** %37, align 8
  %39 = load i64, i64* @sc_void, align 8
  %40 = getelementptr inbounds %struct.symt*, %struct.symt** %38, i64 %39
  %41 = load %struct.symt*, %struct.symt** %40, align 8
  store %struct.symt* %41, %struct.symt** %6, align 8
  %42 = load %struct.symt*, %struct.symt** %6, align 8
  %43 = call i32 @assert(%struct.symt* %42)
  br label %44

44:                                               ; preds = %35, %30
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.symt*, %struct.symt** %6, align 8
  %49 = getelementptr inbounds %struct.attribute, %struct.attribute* %7, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.TYPE_18__* @symt_new_pointer(i32 %47, %struct.symt* %48, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  store %struct.symt* %53, %struct.symt** %55, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = call i64 @dwarf2_get_di_children(%struct.TYPE_16__* %56, %struct.TYPE_17__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %44
  %61 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %44
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load %struct.symt*, %struct.symt** %64, align 8
  store %struct.symt* %65, %struct.symt** %3, align 8
  br label %66

66:                                               ; preds = %62, %12
  %67 = load %struct.symt*, %struct.symt** %3, align 8
  ret %struct.symt* %67
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @dwarf2_debug_ctx(%struct.TYPE_16__*) #1

declare dso_local i32 @dwarf2_debug_di(%struct.TYPE_17__*) #1

declare dso_local i32 @dwarf2_find_attribute(%struct.TYPE_16__*, %struct.TYPE_17__*, i32, %struct.attribute*) #1

declare dso_local %struct.symt* @dwarf2_lookup_type(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @assert(%struct.symt*) #1

declare dso_local %struct.TYPE_18__* @symt_new_pointer(i32, %struct.symt*, i32) #1

declare dso_local i64 @dwarf2_get_di_children(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
