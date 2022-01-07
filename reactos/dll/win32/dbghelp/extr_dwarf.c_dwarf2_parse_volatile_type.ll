; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_volatile_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_volatile_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }
%struct.TYPE_11__ = type { %struct.symt** }
%struct.TYPE_12__ = type { %struct.symt* }

@.str = private unnamed_addr constant [12 x i8] c"%s, for %s\0A\00", align 1
@sc_void = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Unsupported children\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (%struct.TYPE_11__*, %struct.TYPE_12__*)* @dwarf2_parse_volatile_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @dwarf2_parse_volatile_type(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.symt*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.symt*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load %struct.symt*, %struct.symt** %8, align 8
  %10 = icmp ne %struct.symt* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.symt*, %struct.symt** %13, align 8
  store %struct.symt* %14, %struct.symt** %3, align 8
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = call i32 @dwarf2_debug_ctx(%struct.TYPE_11__* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = call i32 @dwarf2_debug_di(%struct.TYPE_12__* %18)
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = call %struct.symt* @dwarf2_lookup_type(%struct.TYPE_11__* %21, %struct.TYPE_12__* %22)
  store %struct.symt* %23, %struct.symt** %6, align 8
  %24 = icmp ne %struct.symt* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %15
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.symt**, %struct.symt*** %27, align 8
  %29 = load i64, i64* @sc_void, align 8
  %30 = getelementptr inbounds %struct.symt*, %struct.symt** %28, i64 %29
  %31 = load %struct.symt*, %struct.symt** %30, align 8
  store %struct.symt* %31, %struct.symt** %6, align 8
  %32 = load %struct.symt*, %struct.symt** %6, align 8
  %33 = call i32 @assert(%struct.symt* %32)
  br label %34

34:                                               ; preds = %25, %15
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = call i64 @dwarf2_get_di_children(%struct.TYPE_11__* %35, %struct.TYPE_12__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  %42 = load %struct.symt*, %struct.symt** %6, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  store %struct.symt* %42, %struct.symt** %44, align 8
  %45 = load %struct.symt*, %struct.symt** %6, align 8
  store %struct.symt* %45, %struct.symt** %3, align 8
  br label %46

46:                                               ; preds = %41, %11
  %47 = load %struct.symt*, %struct.symt** %3, align 8
  ret %struct.symt* %47
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @dwarf2_debug_ctx(%struct.TYPE_11__*) #1

declare dso_local i32 @dwarf2_debug_di(%struct.TYPE_12__*) #1

declare dso_local %struct.symt* @dwarf2_lookup_type(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @assert(%struct.symt*) #1

declare dso_local i64 @dwarf2_get_di_children(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
