; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_dump_callback.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_dump_callback.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_sink = type { i32, i8*, i32 }

@__const.run_tests.str = private unnamed_addr constant [46 x i8] c"[\22A\22, {\22B\22: \22C\22, \22e\22: false}, 1, null, \22foo\22]\00", align 16
@.str = private unnamed_addr constant [18 x i8] c"json_loads failed\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"json_dumps failed\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@my_writer = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"json_dump_callback failed on an exact-length sink buffer\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"json_dump_callback and json_dumps did not produce identical output\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"json_dump_callback succeeded on a short buffer when it should have failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_tests() #0 {
  %1 = alloca %struct.my_sink, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [46 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = bitcast [46 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([46 x i8], [46 x i8]* @__const.run_tests.str, i32 0, i32 0), i64 46, i1 false)
  %6 = getelementptr inbounds [46 x i8], [46 x i8]* %3, i64 0, i64 0
  %7 = call i32* @json_loads(i8* %6, i32 0, i32* null)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 @fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @json_dumps(i32* %13, i32 0)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @json_decref(i32* %18)
  %20 = call i32 @fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %12
  %22 = getelementptr inbounds %struct.my_sink, %struct.my_sink* %1, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = getelementptr inbounds %struct.my_sink, %struct.my_sink* %1, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.my_sink, %struct.my_sink* %1, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @malloc(i32 %27)
  %29 = getelementptr inbounds %struct.my_sink, %struct.my_sink* %1, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = getelementptr inbounds %struct.my_sink, %struct.my_sink* %1, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %21
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @json_decref(i32* %34)
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @free(i8* %36)
  %38 = call i32 @fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %21
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @my_writer, align 4
  %42 = call i32 @json_dump_callback(i32* %40, i32 %41, %struct.my_sink* %1, i32 0)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @json_decref(i32* %45)
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @free(i8* %47)
  %49 = getelementptr inbounds %struct.my_sink, %struct.my_sink* %1, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @free(i8* %50)
  %52 = call i32 @fail(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %44, %39
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds %struct.my_sink, %struct.my_sink* %1, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds %struct.my_sink, %struct.my_sink* %1, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @strncmp(i8* %54, i8* %56, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @json_decref(i32* %62)
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @free(i8* %64)
  %66 = getelementptr inbounds %struct.my_sink, %struct.my_sink* %1, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @free(i8* %67)
  %69 = call i32 @fail(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %61, %53
  %71 = getelementptr inbounds %struct.my_sink, %struct.my_sink* %1, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* @my_writer, align 4
  %74 = call i32 @json_dump_callback(i32* %72, i32 %73, %struct.my_sink* %1, i32 0)
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @json_decref(i32* %77)
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @free(i8* %79)
  %81 = getelementptr inbounds %struct.my_sink, %struct.my_sink* %1, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @free(i8* %82)
  %84 = call i32 @fail(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0))
  br label %85

85:                                               ; preds = %76, %70
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @json_decref(i32* %86)
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @free(i8* %88)
  %90 = getelementptr inbounds %struct.my_sink, %struct.my_sink* %1, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @free(i8* %91)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @json_loads(i8*, i32, i32*) #2

declare dso_local i32 @fail(i8*) #2

declare dso_local i8* @json_dumps(i32*, i32) #2

declare dso_local i32 @json_decref(i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @json_dump_callback(i32*, i32, %struct.my_sink*, i32) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
