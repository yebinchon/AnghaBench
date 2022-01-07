; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_readdir.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dirs\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"listing filter\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Cannot open dir\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @script_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script_readdir(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [5 x i8*], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dirent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = bitcast [5 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 40, i1 false)
  %15 = bitcast i8* %14 to [5 x i8*]*
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %17, align 8
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %18, align 16
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %19, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @js_isundefined(i32* %20, i32 1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %27

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = call i8* @js_tostring(i32* %25, i32 1)
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %23 ], [ %26, %24 ]
  store i8* %28, i8** %6, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 0
  %31 = call i32 @checkopt(i32* %29, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 %31, i32* %7, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32* @opendir(i8* %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @push_failure(i32* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %112

39:                                               ; preds = %27
  %40 = load i8*, i8** %4, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @add_af_dir(i8* %40, i32* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @jctx(i32* %43)
  %45 = call i32 @set_last_error(i32 %44, i32 0, i32* null)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @js_newarray(i32* %46)
  %48 = load i8*, i8** %4, align 8
  %49 = call i8* @talloc_strdup(i8* %48, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  store i8* %49, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %104, %102, %83, %68, %39
  %51 = load i32*, i32** %8, align 8
  %52 = call %struct.dirent* @readdir(i32* %51)
  store %struct.dirent* %52, %struct.dirent** %10, align 8
  %53 = icmp ne %struct.dirent* %52, null
  br i1 %53, label %54, label %112

54:                                               ; preds = %50
  %55 = load %struct.dirent*, %struct.dirent** %10, align 8
  %56 = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %12, align 8
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %54
  %61 = load i8*, i8** %12, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %12, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %60
  br label %50

69:                                               ; preds = %64
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = call i8* @talloc_asprintf_append(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %77, i8* %78)
  store i8* %79, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i64 @stat(i8* %80, %struct.stat* %13)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %50

84:                                               ; preds = %75
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, 1
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @S_ISREG(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %88, %84
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, 2
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @S_ISDIR(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97, %93
  br label %50

103:                                              ; preds = %97, %88
  br label %104

104:                                              ; preds = %103, %54
  %105 = load i32*, i32** %3, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = call i32 @js_pushstring(i32* %105, i8* %106)
  %108 = load i32*, i32** %3, align 8
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  %111 = call i32 @js_setindex(i32* %108, i32 -2, i32 %109)
  br label %50

112:                                              ; preds = %36, %50
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @js_isundefined(i32*, i32) #2

declare dso_local i8* @js_tostring(i32*, i32) #2

declare dso_local i32 @checkopt(i32*, i32, i8*, i8**, i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @push_failure(i32*, i8*) #2

declare dso_local i32 @add_af_dir(i8*, i32*) #2

declare dso_local i32 @set_last_error(i32, i32, i32*) #2

declare dso_local i32 @jctx(i32*) #2

declare dso_local i32 @js_newarray(i32*) #2

declare dso_local i8* @talloc_strdup(i8*, i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @js_pushstring(i32*, i8*) #2

declare dso_local i32 @js_setindex(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
