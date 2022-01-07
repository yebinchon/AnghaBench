; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_windows_heap.c_cmd_debug_map_heap_block_win.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_windows_heap.c_cmd_debug_map_heap_block_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"xxnnns\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"header_address\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"user_address\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"unused\00", align 1
@help_msg_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*)* @cmd_debug_map_heap_block_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_debug_map_heap_block_win(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 32)
  store i8* %15, i8** %5, align 8
  store i64 0, i64* %6, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %122

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = call i64 @r_num_math(i32 %21, i8* %23)
  store i64 %24, i64* %6, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call %struct.TYPE_9__* @GetSingleBlock(i32 %27, i64 %28)
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %8, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %121

32:                                               ; preds = %18
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @get_type(i32 %40)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %45

45:                                               ; preds = %44, %32
  %46 = call i32* (...) @pj_new()
  store i32* %46, i32** %11, align 8
  %47 = call i32* (...) @__new_heapblock_tbl()
  store i32* %47, i32** %12, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %9, align 8
  %50 = sub nsw i64 %48, %49
  store i64 %50, i64* %13, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  switch i32 %54, label %110 [
    i32 32, label %55
    i32 106, label %73
  ]

55:                                               ; preds = %45
  %56 = load i32*, i32** %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @r_table_add_rowf(i32* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %58, i64 %61, i64 %62, i64 %67, i8* %68)
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @r_table_tostring(i32* %70)
  %72 = call i32 @r_cons_println(i32 %71)
  br label %110

73:                                               ; preds = %45
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @pj_o(i32* %74)
  %76 = load i32*, i32** %11, align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @pj_kN(i32* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  %79 = load i32*, i32** %11, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @pj_kN(i32* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %80)
  %82 = load i32*, i32** %11, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @pj_ks(i32* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  %85 = load i32*, i32** %11, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @pj_kN(i32* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %73
  %97 = load i32*, i32** %11, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @pj_kN(i32* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %96, %73
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @pj_end(i32* %105)
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @pj_string(i32* %107)
  %109 = call i32 @r_cons_println(i32 %108)
  br label %110

110:                                              ; preds = %104, %45, %55
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = call i32 @free(%struct.TYPE_9__* %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %116 = call i32 @free(%struct.TYPE_9__* %115)
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @r_table_free(i32* %117)
  %119 = load i32*, i32** %11, align 8
  %120 = call i32 @pj_free(i32* %119)
  br label %121

121:                                              ; preds = %110, %18
  br label %137

122:                                              ; preds = %2
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  switch i32 %126, label %133 [
    i32 0, label %127
    i32 102, label %127
    i32 106, label %127
  ]

127:                                              ; preds = %122, %122, %122
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = call i32 @w32_list_heaps_blocks(%struct.TYPE_8__* %128, i8 signext %131)
  br label %137

133:                                              ; preds = %122
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = load i32, i32* @help_msg_block, align 4
  %136 = call i32 @r_core_cmd_help(%struct.TYPE_8__* %134, i32 %135)
  br label %137

137:                                              ; preds = %121, %133, %127
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @r_num_math(i32, i8*) #1

declare dso_local %struct.TYPE_9__* @GetSingleBlock(i32, i64) #1

declare dso_local i8* @get_type(i32) #1

declare dso_local i32* @pj_new(...) #1

declare dso_local i32* @__new_heapblock_tbl(...) #1

declare dso_local i32 @r_table_add_rowf(i32*, i8*, i64, i64, i64, i64, i64, i8*) #1

declare dso_local i32 @r_cons_println(i32) #1

declare dso_local i32 @r_table_tostring(i32*) #1

declare dso_local i32 @pj_o(i32*) #1

declare dso_local i32 @pj_kN(i32*, i8*, i64) #1

declare dso_local i32 @pj_ks(i32*, i8*, i8*) #1

declare dso_local i32 @pj_end(i32*) #1

declare dso_local i32 @pj_string(i32*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @r_table_free(i32*) #1

declare dso_local i32 @pj_free(i32*) #1

declare dso_local i32 @w32_list_heaps_blocks(%struct.TYPE_8__*, i8 signext) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
