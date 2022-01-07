; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_graph_cmd.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_graph_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"dot\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"graph.gv.format\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"xdot\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"agf\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s > a.dot;!%s -T%s -o%s a.dot;\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"%s > a.dot;!%s -T%s -oa.%s a.dot;!%s a.%s\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Cannot find a valid picture viewer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*, i8*)* @graph_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @graph_cmd(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* null, i8** %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @r_config_get(i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i8* @r_file_path(i8* %17)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @strcmp(i8* %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %3
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @free(i8* %24)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i8* @r_file_path(i8* %26)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @strcmp(i8* %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @free(i8* %33)
  %35 = call i8* @r_str_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %35, i8** %4, align 8
  br label %72

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* (i8*, i8*, i8*, i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %46, i8* %47, i8* %48, i8* %49)
  store i8* %50, i8** %9, align 8
  br label %68

51:                                               ; preds = %40, %37
  %52 = call i8* (...) @getViewerPath()
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i8* (i8*, i8*, i8*, i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %56, i8* %57, i8* %58, i8* %59, i8* %60, i8* %61)
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @free(i8* %63)
  br label %67

65:                                               ; preds = %51
  %66 = call i32 @eprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %55
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i8*, i8** %9, align 8
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %68, %32
  %73 = load i8*, i8** %4, align 8
  ret i8* %73
}

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i8* @r_file_path(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @r_str_new(i8*) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i8* @getViewerPath(...) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
