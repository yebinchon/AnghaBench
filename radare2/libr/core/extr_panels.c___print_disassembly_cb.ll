; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___print_disassembly_cb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___print_disassembly_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"cfg.debug\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".dr*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__print_disassembly_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %6, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store i64 1, i64* %17, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %20 = call i8* @__find_cmd_str_cache(%struct.TYPE_20__* %18, %struct.TYPE_19__* %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @__update_panel_contents(%struct.TYPE_20__* %24, %struct.TYPE_19__* %25, i8* %26)
  br label %98

28:                                               ; preds = %2
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %8, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, 3
  %46 = call i8* @r_str_newf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %38, i64 %45)
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  store i8* %46, i8** %50, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %9, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @r_core_seek(%struct.TYPE_20__* %61, i32 %66, i32 1)
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @r_config_get_i(i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %28
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %75 = call i32 @r_core_cmd(%struct.TYPE_20__* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %76

76:                                               ; preds = %73, %28
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = call i8* @__handle_cmd_str_cache(%struct.TYPE_20__* %77, %struct.TYPE_19__* %78, i32 0)
  store i8* %79, i8** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i8*, i8** %8, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  store i8* %89, i8** %93, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @__update_panel_contents(%struct.TYPE_20__* %94, %struct.TYPE_19__* %95, i8* %96)
  br label %98

98:                                               ; preds = %76, %23
  ret void
}

declare dso_local i8* @__find_cmd_str_cache(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @__update_panel_contents(%struct.TYPE_20__*, %struct.TYPE_19__*, i8*) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i64) #1

declare dso_local i32 @r_core_seek(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i64 @r_config_get_i(i32, i8*) #1

declare dso_local i32 @r_core_cmd(%struct.TYPE_20__*, i8*, i32) #1

declare dso_local i8* @__handle_cmd_str_cache(%struct.TYPE_20__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
