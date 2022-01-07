; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_project.c_simpleProjectSaveScript.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_project.c_simpleProjectSaveScript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@O_BINARY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"# r2 rdb project file\0A\00", align 1
@R_CORE_PRJ_EVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"# eval\0A\00", align 1
@R_CORE_PRJ_FCNS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"# functions\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"afl*\00", align 1
@R_CORE_PRJ_FLAGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"# flags\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"f.**\00", align 1
@R_CORE_PRJ_META = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"# meta\0A\00", align 1
@R_META_TYPE_ANY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"fV*\00", align 1
@R_CORE_PRJ_XREFS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"# xrefs\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ax*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32)* @simpleProjectSaveScript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simpleProjectSaveScript(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %143

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @r_str_word_get_first(i8* %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @O_BINARY, align 4
  %26 = load i32, i32* @O_RDWR, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @O_CREAT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @O_TRUNC, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @r_sandbox_open(i8* %24, i32 %31, i32 420)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @free(i8* %36)
  store i32 0, i32* %4, align 4
  br label %143

38:                                               ; preds = %21
  %39 = call %struct.TYPE_8__* (...) @r_cons_singleton()
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8*, i8** %9, align 8
  %46 = call i8* @strdup(i8* %45)
  store i8* %46, i8** %10, align 8
  %47 = call i32 @r_cons_highlight(i8* null)
  br label %48

48:                                               ; preds = %44, %38
  %49 = call %struct.TYPE_8__* (...) @r_cons_singleton()
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call %struct.TYPE_8__* (...) @r_cons_singleton()
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = call %struct.TYPE_8__* (...) @r_cons_singleton()
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @r_str_write(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @R_CORE_PRJ_EVAL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %48
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @r_str_write(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @r_config_list(i32 %70, i32* null, i32 1)
  %72 = call i32 (...) @r_cons_flush()
  br label %73

73:                                               ; preds = %65, %48
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @R_CORE_PRJ_FCNS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @r_str_write(i32 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = call i32 @r_core_cmd(%struct.TYPE_7__* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %83 = call i32 (...) @r_cons_flush()
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @R_CORE_PRJ_FLAGS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @r_str_write(i32 %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = call i32 @r_core_cmd(%struct.TYPE_7__* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %94 = call i32 (...) @r_cons_flush()
  br label %95

95:                                               ; preds = %89, %84
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @R_CORE_PRJ_META, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @r_str_write(i32 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @R_META_TYPE_ANY, align 4
  %107 = call i32 @r_meta_list(i32 %105, i32 %106, i32 1)
  %108 = call i32 (...) @r_cons_flush()
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = call i32 @r_core_cmd(%struct.TYPE_7__* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %111 = call i32 (...) @r_cons_flush()
  br label %112

112:                                              ; preds = %100, %95
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @R_CORE_PRJ_XREFS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @r_str_write(i32 %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %121 = call i32 @r_core_cmd(%struct.TYPE_7__* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %122 = call i32 (...) @r_cons_flush()
  br label %123

123:                                              ; preds = %117, %112
  %124 = load i32, i32* %12, align 4
  %125 = call %struct.TYPE_8__* (...) @r_cons_singleton()
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = call %struct.TYPE_8__* (...) @r_cons_singleton()
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 4
  %131 = load i8*, i8** %10, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %123
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 @r_cons_highlight(i8* %134)
  %136 = load i8*, i8** %10, align 8
  %137 = call i32 @free(i8* %136)
  br label %138

138:                                              ; preds = %133, %123
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @close(i32 %139)
  %141 = load i8*, i8** %8, align 8
  %142 = call i32 @free(i8* %141)
  store i32 1, i32* %4, align 4
  br label %143

143:                                              ; preds = %138, %35, %20
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i8* @r_str_word_get_first(i8*) #1

declare dso_local i32 @r_sandbox_open(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_8__* @r_cons_singleton(...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @r_cons_highlight(i8*) #1

declare dso_local i32 @r_str_write(i32, i8*) #1

declare dso_local i32 @r_config_list(i32, i32*, i32) #1

declare dso_local i32 @r_cons_flush(...) #1

declare dso_local i32 @r_core_cmd(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @r_meta_list(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
