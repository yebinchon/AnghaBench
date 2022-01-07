; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___rotate_panel_cmds.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___rotate_panel_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__rotate_panel_cmds(%struct.TYPE_14__* %0, i8** %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [64 x i8], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %120

19:                                               ; preds = %5
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_13__* @__get_cur_panel(i32 %22)
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %11, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %26 = call i32 @__reset_filter(%struct.TYPE_14__* %24, %struct.TYPE_13__* %25)
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %19
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  br label %50

43:                                               ; preds = %29
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %43, %36
  br label %58

51:                                               ; preds = %19
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %51, %50
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = srem i32 %63, %64
  store i32 %65, i32* %14, align 4
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %67 = load i8*, i8** %9, align 8
  %68 = load i8**, i8*** %7, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @snprintf(i8* %66, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %67, i8* %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %9, align 8
  %80 = call i8* @r_str_between(i32 %78, i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %80, i8** %13, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %100

83:                                               ; preds = %58
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = call i32 @snprintf(i8* %84, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %85, i8* %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %95 = call i32 @r_str_replace(i32 %92, i8* %93, i8* %94, i32 1)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  store i32 %95, i32* %99, align 4
  br label %112

100:                                              ; preds = %58
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %107 = call i32 @r_str_dup(i32 %105, i8* %106)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  store i32 %107, i32* %111, align 4
  br label %112

112:                                              ; preds = %100, %83
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %115 = call i32 @__set_cmd_str_cache(%struct.TYPE_14__* %113, %struct.TYPE_13__* %114, i32* null)
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %112, %18
  ret void
}

declare dso_local %struct.TYPE_13__* @__get_cur_panel(i32) #1

declare dso_local i32 @__reset_filter(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @r_str_between(i32, i8*, i8*) #1

declare dso_local i32 @r_str_replace(i32, i8*, i8*, i32) #1

declare dso_local i32 @r_str_dup(i32, i8*) #1

declare dso_local i32 @__set_cmd_str_cache(%struct.TYPE_14__*, %struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
