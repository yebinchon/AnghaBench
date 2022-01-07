; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_lookup_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_lookup_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.symt*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.attribute = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@DW_AT_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to find back reference to type %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Unable to load forward reference for tag %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (%struct.TYPE_14__*, %struct.TYPE_15__*)* @dwarf2_lookup_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @dwarf2_lookup_type(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.symt*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.attribute, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %10 = load i32, i32* @DW_AT_type, align 4
  %11 = call i32 @dwarf2_find_attribute(%struct.TYPE_14__* %8, %struct.TYPE_15__* %9, i32 %10, %struct.attribute* %6)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.symt* null, %struct.symt** %3, align 8
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.attribute, %struct.attribute* %6, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_15__* @sparse_array_find(i32* %16, i32 %19)
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %7, align 8
  %21 = icmp ne %struct.TYPE_15__* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.attribute, %struct.attribute* %6, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @FIXME(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %25)
  store %struct.symt* null, %struct.symt** %3, align 8
  br label %52

27:                                               ; preds = %14
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.symt*, %struct.symt** %29, align 8
  %31 = icmp ne %struct.symt* %30, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = call i32 @dwarf2_load_one_entry(%struct.TYPE_14__* %33, %struct.TYPE_15__* %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.symt*, %struct.symt** %37, align 8
  %39 = icmp ne %struct.symt* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %32
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @FIXME(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %40, %32
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load %struct.symt*, %struct.symt** %50, align 8
  store %struct.symt* %51, %struct.symt** %3, align 8
  br label %52

52:                                               ; preds = %48, %22, %13
  %53 = load %struct.symt*, %struct.symt** %3, align 8
  ret %struct.symt* %53
}

declare dso_local i32 @dwarf2_find_attribute(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, %struct.attribute*) #1

declare dso_local %struct.TYPE_15__* @sparse_array_find(i32*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @dwarf2_load_one_entry(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
