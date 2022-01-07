; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_screenshot.c_gen_fname.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_screenshot.c_gen_fname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { %struct.MPContext* }
%struct.MPContext = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }

@MSGL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"Invalid screenshot filename template! Fix or remove the --screenshot-template option.\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Can't save screenshot, file '%s' already exists!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mp_cmd_ctx*, i8*)* @gen_fname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gen_fname(%struct.mp_cmd_ctx* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mp_cmd_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.MPContext*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.mp_cmd_ctx* %0, %struct.mp_cmd_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %14, i32 0, i32 0
  %16 = load %struct.MPContext*, %struct.MPContext** %15, align 8
  store %struct.MPContext* %16, %struct.MPContext** %6, align 8
  %17 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %18 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %103, %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = call i8* @create_fname(%struct.TYPE_6__* %24, i32 %31, i8* %32, i32* %8, i32* %34)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %20
  %39 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %40 = load i32, i32* @MSGL_ERR, align 4
  %41 = call i32 (%struct.mp_cmd_ctx*, i32, i8*, ...) @mp_cmd_msg(%struct.mp_cmd_ctx* %39, i32 %40, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %106

42:                                               ; preds = %20
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %75

52:                                               ; preds = %42
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load i8*, i8** %10, align 8
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call i8* @mp_get_user_path(i8* %60, i32 %65, i8* %66)
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = call i8* @mp_path_join(i32* null, i8* %68, i8* %69)
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @mp_mkdirp(i8* %71)
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @talloc_free(i8* %73)
  br label %75

75:                                               ; preds = %58, %52, %42
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @mp_dirname(i8* %77)
  %79 = call i8* @bstrto0(i8* %76, i32 %78)
  store i8* %79, i8** %13, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @mp_path_exists(i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @mp_mkdirp(i8* %84)
  br label %86

86:                                               ; preds = %83, %75
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @mp_path_exists(i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %10, align 8
  store i8* %91, i8** %3, align 8
  br label %106

92:                                               ; preds = %86
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %98 = load i32, i32* @MSGL_ERR, align 4
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 (%struct.mp_cmd_ctx*, i32, i8*, ...) @mp_cmd_msg(%struct.mp_cmd_ctx* %97, i32 %98, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %99)
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @talloc_free(i8* %101)
  store i8* null, i8** %3, align 8
  br label %106

103:                                              ; preds = %92
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @talloc_free(i8* %104)
  br label %20

106:                                              ; preds = %96, %90, %38
  %107 = load i8*, i8** %3, align 8
  ret i8* %107
}

declare dso_local i8* @create_fname(%struct.TYPE_6__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @mp_cmd_msg(%struct.mp_cmd_ctx*, i32, i8*, ...) #1

declare dso_local i8* @mp_get_user_path(i8*, i32, i8*) #1

declare dso_local i8* @mp_path_join(i32*, i8*, i8*) #1

declare dso_local i32 @mp_mkdirp(i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i8* @bstrto0(i8*, i32) #1

declare dso_local i32 @mp_dirname(i8*) #1

declare dso_local i32 @mp_path_exists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
