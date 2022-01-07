; ModuleID = '/home/carl/AnghaBench/lwan/src/bin/lwan/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/lwan/src/bin/lwan/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan = type { i32 }
%struct.lwan_config = type { i8*, i8* }
%struct.lwan_straitjacket = type { i64, i32 }
%struct.lwan_url_map = type { i8*, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"*:8080\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Serving files from %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.lwan, align 4
  %7 = alloca %struct.lwan_config, align 8
  %8 = alloca %struct.lwan_straitjacket, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x %struct.lwan_url_map], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = bitcast %struct.lwan_straitjacket* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  store i8* %19, i8** %11, align 8
  %20 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = call i32 @getcwd(i8* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %83

26:                                               ; preds = %2
  %27 = call %struct.lwan_config* (...) @lwan_get_default_config()
  %28 = bitcast %struct.lwan_config* %7 to i8*
  %29 = bitcast %struct.lwan_config* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false)
  %30 = call i8* @strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = getelementptr inbounds %struct.lwan_config, %struct.lwan_config* %7, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @parse_args(i32 %32, i8** %33, %struct.lwan_config* %7, i8* %34, %struct.lwan_straitjacket* %8)
  switch i32 %35, label %68 [
    i32 129, label %36
    i32 128, label %56
    i32 130, label %66
  ]

36:                                               ; preds = %26
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @lwan_status_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %43

43:                                               ; preds = %42, %36
  %44 = call i32 @lwan_straitjacket_enforce(%struct.lwan_straitjacket* %8)
  %45 = call i32 @lwan_init_with_config(%struct.lwan* %6, %struct.lwan_config* %7)
  %46 = getelementptr inbounds [2 x %struct.lwan_url_map], [2 x %struct.lwan_url_map]* %14, i64 0, i64 0
  %47 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %47, align 16
  %48 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %46, i32 0, i32 1
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @SERVE_FILES(i8* %49)
  store i32 %50, i32* %48, align 8
  %51 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %46, i64 1
  %52 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %51, i32 0, i32 0
  store i8* null, i8** %52, align 16
  %53 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %51, i32 0, i32 1
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds [2 x %struct.lwan_url_map], [2 x %struct.lwan_url_map]* %14, i64 0, i64 0
  %55 = call i32 @lwan_set_url_map(%struct.lwan* %6, %struct.lwan_url_map* %54)
  br label %68

56:                                               ; preds = %26
  %57 = call i32 @lwan_straitjacket_enforce(%struct.lwan_straitjacket* %8)
  %58 = getelementptr inbounds %struct.lwan_config, %struct.lwan_config* %7, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @lwan_init_with_config(%struct.lwan* %6, %struct.lwan_config* %7)
  br label %65

63:                                               ; preds = %56
  %64 = call i32 @lwan_init(%struct.lwan* %6)
  br label %65

65:                                               ; preds = %63, %61
  br label %68

66:                                               ; preds = %26
  %67 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %67, i32* %12, align 4
  br label %71

68:                                               ; preds = %26, %65, %43
  %69 = call i32 @lwan_main_loop(%struct.lwan* %6)
  %70 = call i32 @lwan_shutdown(%struct.lwan* %6)
  br label %71

71:                                               ; preds = %68, %66
  %72 = getelementptr inbounds %struct.lwan_config, %struct.lwan_config* %7, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @free(i8* %73)
  %75 = getelementptr inbounds %struct.lwan_config, %struct.lwan_config* %7, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @free(i8* %76)
  %78 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %8, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @free(i8* %80)
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %83

83:                                               ; preds = %71, %25
  %84 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @getcwd(i8*, i32) #3

declare dso_local %struct.lwan_config* @lwan_get_default_config(...) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strdup(i8*) #3

declare dso_local i32 @parse_args(i32, i8**, %struct.lwan_config*, i8*, %struct.lwan_straitjacket*) #3

declare dso_local i32 @lwan_status_info(i8*, i8*) #3

declare dso_local i32 @lwan_straitjacket_enforce(%struct.lwan_straitjacket*) #3

declare dso_local i32 @lwan_init_with_config(%struct.lwan*, %struct.lwan_config*) #3

declare dso_local i32 @SERVE_FILES(i8*) #3

declare dso_local i32 @lwan_set_url_map(%struct.lwan*, %struct.lwan_url_map*) #3

declare dso_local i32 @lwan_init(%struct.lwan*) #3

declare dso_local i32 @lwan_main_loop(%struct.lwan*) #3

declare dso_local i32 @lwan_shutdown(%struct.lwan*) #3

declare dso_local i32 @free(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
