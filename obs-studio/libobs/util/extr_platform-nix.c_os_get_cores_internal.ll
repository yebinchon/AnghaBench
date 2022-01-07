; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix.c_os_get_cores_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix.c_os_get_cores_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i8* }

@core_count_initialized = common dso_local global i32 0, align 4
@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@logical_cores = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"physical id\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"cpu cores\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@physical_cores = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @os_get_cores_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @os_get_cores_internal() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dstr, align 8
  %8 = alloca %struct.dstr, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = load i32, i32* @core_count_initialized, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %112

14:                                               ; preds = %0
  store i32 1, i32* @core_count_initialized, align 4
  %15 = load i32, i32* @_SC_NPROCESSORS_ONLN, align 4
  %16 = call i32 @sysconf(i32 %15)
  store i32 %16, i32* @logical_cores, align 4
  store i32 -1, i32* %1, align 4
  store i32 -1, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %17 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %112

21:                                               ; preds = %14
  %22 = call i32 @dstr_init(%struct.dstr* %7)
  %23 = call i32 @dstr_init(%struct.dstr* %8)
  br label %24

24:                                               ; preds = %97, %66, %43, %21
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @getline(i8** %4, i64* %5, i32* %25)
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %98

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 11)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 58)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %9, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %32
  br label %24

44:                                               ; preds = %37
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @atoi(i8* %45)
  store i32 %46, i32* %1, align 4
  %47 = call i32 @dstr_free(%struct.dstr* %7)
  %48 = call i32 @dstr_init(%struct.dstr* %7)
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @dstr_catf(%struct.dstr* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %44, %28
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %86, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %4, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 58)
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %55
  br label %24

67:                                               ; preds = %60
  %68 = call i64 @dstr_is_empty(%struct.dstr* %8)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = call i64 @dstr_is_empty(%struct.dstr* %8)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @dstr_find(%struct.dstr* %8, i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %73, %67
  %79 = call i32 @dstr_cat_dstr(%struct.dstr* %8, %struct.dstr* %7)
  %80 = call i32 @dstr_cat(%struct.dstr* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @atoi(i8* %81)
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %78, %73, %70
  br label %86

86:                                               ; preds = %85, %51
  %87 = load i8*, i8** %4, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32, i32* %1, align 4
  %93 = load i32, i32* %2, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* %1, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %91, %86
  br label %24

98:                                               ; preds = %24
  %99 = load i32, i32* %3, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* @logical_cores, align 4
  store i32 %102, i32* @physical_cores, align 4
  br label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %3, align 4
  store i32 %104, i32* @physical_cores, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @fclose(i32* %106)
  %108 = call i32 @dstr_free(%struct.dstr* %8)
  %109 = call i32 @dstr_free(%struct.dstr* %7)
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 @free(i8* %110)
  br label %112

112:                                              ; preds = %105, %20, %13
  ret void
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @dstr_init(%struct.dstr*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i32 @dstr_catf(%struct.dstr*, i8*, i32) #1

declare dso_local i64 @dstr_is_empty(%struct.dstr*) #1

declare dso_local i32 @dstr_find(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_cat_dstr(%struct.dstr*, %struct.dstr*) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
