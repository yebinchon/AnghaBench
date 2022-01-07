; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___settings_decompiler_cb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___settings_decompiler_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64, i8*, %struct.TYPE_10__** }
%struct.TYPE_9__ = type { i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"cmd.pdc\00", align 1
@PANEL_MODE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__settings_decompiler_cb(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %4, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %5, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %6, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %24, i64 %29
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %7, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %33, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %34, i64 %37
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %8, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %9, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @r_config_get(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @strcmp(i8* %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

52:                                               ; preds = %1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @r_config_set(i32 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32* @sdb_ptr_get(i32 %60, i8* %61, i32 0)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %52
  %70 = call i32* (...) @sdb_new0()
  store i32* %70, i32** %11, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @sdb_ptr_set(i32 %73, i8* %74, i32* %75, i32 0)
  %77 = load i32*, i32** %11, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  br label %80

80:                                               ; preds = %69, %52
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = call i32 @__set_refresh_all(%struct.TYPE_12__* %81, i32 0, i32 0)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = load i32, i32* @PANEL_MODE_DEFAULT, align 4
  %85 = call i32 @__set_mode(%struct.TYPE_12__* %83, i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %80, %51
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @r_config_set(i32, i8*, i8*) #1

declare dso_local i32* @sdb_ptr_get(i32, i8*, i32) #1

declare dso_local i32* @sdb_new0(...) #1

declare dso_local i32 @sdb_ptr_set(i32, i8*, i32*, i32) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @__set_mode(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
