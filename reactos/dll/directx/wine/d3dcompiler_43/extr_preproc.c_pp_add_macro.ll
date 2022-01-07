; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_preproc.c_pp_add_macro.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_preproc.c_pp_add_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i8*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32, %struct.TYPE_10__, i32**, i32 }
%struct.TYPE_10__ = type { i32* }

@pp_status = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [47 x i8] c"Redefinition of %s\0A\09Previous definition: %s:%d\00", align 1
@def_macro = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"<internal or cmdline>\00", align 1
@pp_def_state = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @pp_add_macro(i8* %0, i32** %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %115

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @pphash(i8* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.TYPE_11__* @pplookup(i8* %18)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %11, align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pp_status, i32 0, i32 2), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ppy_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %24, %21
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @pp_del_define(i8* %34)
  br label %36

36:                                               ; preds = %33, %15
  %37 = call %struct.TYPE_11__* @pp_xmalloc(i32 64)
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %11, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %39 = icmp ne %struct.TYPE_11__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %115

41:                                               ; preds = %36
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %43 = call i32 @memset(%struct.TYPE_11__* %42, i32 0, i32 64)
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @def_macro, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 8
  %50 = load i32**, i32*** %7, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 7
  store i32** %50, i32*** %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i32* %56, i32** %59, align 8
  %60 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pp_status, i32 0, i32 0), align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %41
  %63 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pp_status, i32 0, i32 0), align 8
  br label %65

64:                                               ; preds = %41
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i8* [ %63, %62 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %64 ]
  %67 = call i32 @pp_xstrdup(i8* %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %65
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %76 = call i32 @free(%struct.TYPE_11__* %75)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %115

77:                                               ; preds = %65
  %78 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pp_status, i32 0, i32 0), align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pp_status, i32 0, i32 1), align 8
  br label %83

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pp_def_state, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %89, i64 %91
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %95, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pp_def_state, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %99, i64 %101
  store %struct.TYPE_11__* %96, %struct.TYPE_11__** %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = icmp ne %struct.TYPE_11__* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %83
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  store %struct.TYPE_11__* %108, %struct.TYPE_11__** %112, align 8
  br label %113

113:                                              ; preds = %107, %83
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %114, %struct.TYPE_11__** %5, align 8
  br label %115

115:                                              ; preds = %113, %74, %40, %14
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %116
}

declare dso_local i32 @pphash(i8*) #1

declare dso_local %struct.TYPE_11__* @pplookup(i8*) #1

declare dso_local i32 @ppy_warning(i8*, i8*, i32, i32) #1

declare dso_local i32 @pp_del_define(i8*) #1

declare dso_local %struct.TYPE_11__* @pp_xmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @pp_xstrdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
