; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_save.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.dstr = type { i8*, i32 }
%struct.config_section = type { i8*, %struct.TYPE_5__ }
%struct.config_item = type { i8*, i8* }

@CONFIG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@CONFIG_FILENOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@CONFIG_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_save(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dstr, align 8
  %6 = alloca %struct.dstr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.config_section*, align 8
  %11 = alloca %struct.config_item*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %12 = load i32, i32* @CONFIG_ERROR, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @CONFIG_ERROR, align 4
  store i32 %16, i32* %2, align 4
  br label %130

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @CONFIG_ERROR, align 4
  store i32 %23, i32* %2, align 4
  br label %130

24:                                               ; preds = %17
  %25 = call i32 @dstr_init(%struct.dstr* %5)
  %26 = call i32 @dstr_init(%struct.dstr* %6)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @pthread_mutex_lock(i32* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @os_fopen(i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %33, i32** %4, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %24
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @pthread_mutex_unlock(i32* %38)
  %40 = load i32, i32* @CONFIG_FILENOTFOUND, align 4
  store i32 %40, i32* %2, align 4
  br label %130

41:                                               ; preds = %24
  store i64 0, i64* %7, align 8
  br label %42

42:                                               ; preds = %107, %41
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %110

49:                                               ; preds = %42
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %7, align 8
  %53 = call i8* @darray_item(i32 16, %struct.TYPE_5__* %51, i64 %52)
  %54 = bitcast i8* %53 to %struct.config_section*
  store %struct.config_section* %54, %struct.config_section** %10, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 @dstr_cat(%struct.dstr* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %49
  %60 = call i32 @dstr_cat(%struct.dstr* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.config_section*, %struct.config_section** %10, align 8
  %62 = getelementptr inbounds %struct.config_section, %struct.config_section* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @dstr_cat(%struct.dstr* %5, i8* %63)
  %65 = call i32 @dstr_cat(%struct.dstr* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %66

66:                                               ; preds = %103, %59
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.config_section*, %struct.config_section** %10, align 8
  %69 = getelementptr inbounds %struct.config_section, %struct.config_section* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %67, %71
  br i1 %72, label %73, label %106

73:                                               ; preds = %66
  %74 = load %struct.config_section*, %struct.config_section** %10, align 8
  %75 = getelementptr inbounds %struct.config_section, %struct.config_section* %74, i32 0, i32 1
  %76 = load i64, i64* %8, align 8
  %77 = call i8* @darray_item(i32 16, %struct.TYPE_5__* %75, i64 %76)
  %78 = bitcast i8* %77 to %struct.config_item*
  store %struct.config_item* %78, %struct.config_item** %11, align 8
  %79 = load %struct.config_item*, %struct.config_item** %11, align 8
  %80 = getelementptr inbounds %struct.config_item, %struct.config_item* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load %struct.config_item*, %struct.config_item** %11, align 8
  %85 = getelementptr inbounds %struct.config_item, %struct.config_item* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  br label %88

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %83
  %89 = phi i8* [ %86, %83 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %87 ]
  %90 = call i32 @dstr_copy(%struct.dstr* %6, i8* %89)
  %91 = call i32 @dstr_replace(%struct.dstr* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %92 = call i32 @dstr_replace(%struct.dstr* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %93 = call i32 @dstr_replace(%struct.dstr* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %94 = load %struct.config_item*, %struct.config_item** %11, align 8
  %95 = getelementptr inbounds %struct.config_item, %struct.config_item* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @dstr_cat(%struct.dstr* %5, i8* %96)
  %98 = call i32 @dstr_cat(%struct.dstr* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %99 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @dstr_cat(%struct.dstr* %5, i8* %100)
  %102 = call i32 @dstr_cat(%struct.dstr* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %88
  %104 = load i64, i64* %8, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %8, align 8
  br label %66

106:                                              ; preds = %66
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %7, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %7, align 8
  br label %42

110:                                              ; preds = %42
  %111 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @fwrite(i8* %112, i32 %114, i32 1, i32* %115)
  %117 = icmp ne i32 %116, 1
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %121

119:                                              ; preds = %110
  %120 = load i32, i32* @CONFIG_SUCCESS, align 4
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %119, %118
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @fclose(i32* %122)
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = call i32 @pthread_mutex_unlock(i32* %125)
  %127 = call i32 @dstr_free(%struct.dstr* %6)
  %128 = call i32 @dstr_free(%struct.dstr* %5)
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %121, %36, %22, %15
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @dstr_init(%struct.dstr*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32* @os_fopen(i32, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i8* @darray_item(i32, %struct.TYPE_5__*, i64) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
