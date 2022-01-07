; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___print_decompiler_cb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___print_decompiler_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@R_ANAL_FCN_TYPE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__print_decompiler_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %6, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @R_ANAL_FCN_TYPE_NULL, align 4
  %21 = call %struct.TYPE_14__* @r_anal_get_fcn_in(i32 %16, i32 %19, i32 %20)
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %7, align 8
  store i8* null, i8** %8, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = icmp ne %struct.TYPE_14__* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @r_num_as_string(i32* null, i32 %39, i32 0)
  %41 = call i64 @sdb_ptr_get(i64 %36, i32 %40, i32 0)
  %42 = inttoptr i64 %41 to i8*
  %43 = call i8* @r_str_new(i8* %42)
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %31, %24, %2
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @__update_panel_contents(%struct.TYPE_13__* %48, i32* %49, i8* %50)
  br label %88

52:                                               ; preds = %44
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i64 @__check_func_diff(%struct.TYPE_13__* %60, i32* %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %59, %52
  %65 = phi i1 [ false, %52 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i8* @__handle_cmd_str_cache(%struct.TYPE_13__* %70, i32* %71, i32 0)
  store i8* %72, i8** %8, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @__update_pdc_contents(%struct.TYPE_13__* %73, i32* %74, i8* %75)
  br label %88

77:                                               ; preds = %64
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = call i8* @__find_cmd_str_cache(%struct.TYPE_13__* %78, i32* %79)
  store i8* %80, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @__update_panel_contents(%struct.TYPE_13__* %84, i32* %85, i8* %86)
  br label %88

88:                                               ; preds = %47, %69, %83, %77
  ret void
}

declare dso_local %struct.TYPE_14__* @r_anal_get_fcn_in(i32, i32, i32) #1

declare dso_local i8* @r_str_new(i8*) #1

declare dso_local i64 @sdb_ptr_get(i64, i32, i32) #1

declare dso_local i32 @r_num_as_string(i32*, i32, i32) #1

declare dso_local i32 @__update_panel_contents(%struct.TYPE_13__*, i32*, i8*) #1

declare dso_local i64 @__check_func_diff(%struct.TYPE_13__*, i32*) #1

declare dso_local i8* @__handle_cmd_str_cache(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @__update_pdc_contents(%struct.TYPE_13__*, i32*, i8*) #1

declare dso_local i8* @__find_cmd_str_cache(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
