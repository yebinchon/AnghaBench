; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_script_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_script_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_python_script = type { %struct.TYPE_7__, %struct.TYPE_9__, i32 }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i32 }

@OBS_SCRIPT_LANG_PYTHON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".py\00", align 1
@python_loaded = common dso_local global i32 0, align 4
@cur_python_script = common dso_local global %struct.obs_python_script* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_python_script_create(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.obs_python_script*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = call %struct.obs_python_script* @bzalloc(i32 48)
  store %struct.obs_python_script* %9, %struct.obs_python_script** %6, align 8
  %10 = load i32, i32* @OBS_SCRIPT_LANG_PYTHON, align 4
  %11 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %12 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  store i32 %10, i32* %13, align 8
  %14 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %15 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @dstr_copy(%struct.TYPE_8__* %16, i8* %17)
  %19 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %20 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = call i32 @dstr_replace(%struct.TYPE_8__* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %24 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @strrchr(i8* %36, i8 signext 47)
  br label %39

38:                                               ; preds = %30, %2
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i8* [ %37, %35 ], [ null, %38 ]
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  %46 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %47 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @dstr_copy(%struct.TYPE_8__* %48, i8* %49)
  %51 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %52 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %51, i32 0, i32 1
  %53 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %54 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @dstr_left(%struct.TYPE_9__* %52, %struct.TYPE_8__* %55, i32 %61)
  br label %69

63:                                               ; preds = %39
  %64 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %65 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @dstr_copy(%struct.TYPE_8__* %66, i8* %67)
  br label %69

69:                                               ; preds = %63, %43
  %70 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %71 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %4, align 8
  %75 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %76 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %75, i32 0, i32 2
  %77 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %78 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = call i32 @dstr_copy_dstr(i32* %76, %struct.TYPE_8__* %79)
  %81 = load i8*, i8** %4, align 8
  %82 = call i8* @strstr(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %82, i8** %8, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %69
  %86 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %87 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %86, i32 0, i32 2
  %88 = load i8*, i8** %8, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @dstr_resize(i32* %87, i32 %93)
  br label %95

95:                                               ; preds = %85, %69
  %96 = call i32 (...) @obs_data_create()
  %97 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %98 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %104 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @obs_data_apply(i32 %106, i32* %107)
  br label %109

109:                                              ; preds = %102, %95
  %110 = load i32, i32* @python_loaded, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %114 = bitcast %struct.obs_python_script* %113 to i32*
  store i32* %114, i32** %3, align 8
  br label %141

115:                                              ; preds = %109
  %116 = call i32 (...) @lock_python()
  %117 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %118 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @add_to_python_path(i32 %120)
  %122 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %123 = call i64 @load_python_script(%struct.obs_python_script* %122)
  %124 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %125 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i64 %123, i64* %126, align 8
  %127 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %128 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %115
  %133 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  store %struct.obs_python_script* %133, %struct.obs_python_script** @cur_python_script, align 8
  %134 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %135 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %134, i32 0, i32 0
  %136 = call i32 @obs_python_script_update(%struct.TYPE_7__* %135, i32* null)
  store %struct.obs_python_script* null, %struct.obs_python_script** @cur_python_script, align 8
  br label %137

137:                                              ; preds = %132, %115
  %138 = call i32 (...) @unlock_python()
  %139 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %140 = bitcast %struct.obs_python_script* %139 to i32*
  store i32* %140, i32** %3, align 8
  br label %141

141:                                              ; preds = %137, %112
  %142 = load i32*, i32** %3, align 8
  ret i32* %142
}

declare dso_local %struct.obs_python_script* @bzalloc(i32) #1

declare dso_local i32 @dstr_copy(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @dstr_replace(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @dstr_left(%struct.TYPE_9__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @dstr_copy_dstr(i32*, %struct.TYPE_8__*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @dstr_resize(i32*, i32) #1

declare dso_local i32 @obs_data_create(...) #1

declare dso_local i32 @obs_data_apply(i32, i32*) #1

declare dso_local i32 @lock_python(...) #1

declare dso_local i32 @add_to_python_path(i32) #1

declare dso_local i64 @load_python_script(%struct.obs_python_script*) #1

declare dso_local i32 @obs_python_script_update(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @unlock_python(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
