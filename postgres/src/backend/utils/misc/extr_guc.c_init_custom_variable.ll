; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_init_custom_variable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_init_custom_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i8*, i8*, i32, i32, i32, i64, i32 }

@PGC_POSTMASTER = common dso_local global i64 0, align 8
@process_shared_preload_libraries_in_progress = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"cannot create PGC_POSTMASTER variables after startup\00", align 1
@GUC_LIST_QUOTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"extensions cannot define GUC_LIST_QUOTE variables\00", align 1
@PGC_USERSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"pljava.classpath\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"pljava.vmoptions\00", align 1
@PGC_SUSET = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@CUSTOM_OPTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_generic* (i8*, i8*, i8*, i64, i32, i32, i64)* @init_custom_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_generic* @init_custom_variable(i8* %0, i8* %1, i8* %2, i64 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.config_generic*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @PGC_POSTMASTER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %7
  %20 = load i32, i32* @process_shared_preload_libraries_in_progress, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @FATAL, align 4
  %24 = call i32 @elog(i32 %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %19, %7
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @GUC_LIST_QUOTE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @FATAL, align 4
  %32 = call i32 @elog(i32 %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @PGC_USERSET, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %37
  %46 = load i64, i64* @PGC_SUSET, align 8
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %45, %41, %33
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i64, i64* %14, align 8
  %50 = call i64 @guc_malloc(i32 %48, i64 %49)
  %51 = inttoptr i64 %50 to %struct.config_generic*
  store %struct.config_generic* %51, %struct.config_generic** %15, align 8
  %52 = load %struct.config_generic*, %struct.config_generic** %15, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @memset(%struct.config_generic* %52, i32 0, i64 %53)
  %55 = load i32, i32* @ERROR, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @guc_strdup(i32 %55, i8* %56)
  %58 = load %struct.config_generic*, %struct.config_generic** %15, align 8
  %59 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.config_generic*, %struct.config_generic** %15, align 8
  %62 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %61, i32 0, i32 5
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* @CUSTOM_OPTIONS, align 4
  %64 = load %struct.config_generic*, %struct.config_generic** %15, align 8
  %65 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load %struct.config_generic*, %struct.config_generic** %15, align 8
  %68 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load %struct.config_generic*, %struct.config_generic** %15, align 8
  %71 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.config_generic*, %struct.config_generic** %15, align 8
  %74 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.config_generic*, %struct.config_generic** %15, align 8
  %77 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.config_generic*, %struct.config_generic** %15, align 8
  ret %struct.config_generic* %78
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @guc_malloc(i32, i64) #1

declare dso_local i32 @memset(%struct.config_generic*, i32, i64) #1

declare dso_local i32 @guc_strdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
