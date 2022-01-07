; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_RestoreGUCState.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_RestoreGUCState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, %struct.TYPE_3__*, i32 }

@num_guc_variables = common dso_local global i32 0, align 4
@guc_variables = common dso_local global i32* null, align 8
@guc_restore_error_context_callback = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global %struct.TYPE_3__* null, align 8
@GUC_ACTION_SET = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"parameter \22%s\22 could not be set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RestoreGUCState(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__, align 8
  %14 = alloca i32, align 4
  %15 = alloca [2 x i8*], align 16
  store i8* %0, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  store i8* %16, i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %37, %1
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @num_guc_variables, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load i32*, i32** @guc_variables, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @can_skip_gucvar(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %21
  %30 = load i32*, i32** @guc_variables, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @InitializeOneGUCOption(i32 %34)
  br label %36

36:                                               ; preds = %29, %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  br label %17

40:                                               ; preds = %17
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @memcpy(i32* %11, i8* %41, i32 4)
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8* %48, i8** %10, align 8
  %49 = load i32, i32* @guc_restore_error_context_callback, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @error_context_stack, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i8** null, i8*** %53, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** @error_context_stack, align 8
  br label %54

54:                                               ; preds = %110, %40
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ult i8* %55, %56
  br i1 %57, label %58, label %112

58:                                               ; preds = %54
  %59 = load i8*, i8** %10, align 8
  %60 = call i8* @read_gucstate(i8** %9, i8* %59)
  store i8* %60, i8** %3, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i8* @read_gucstate(i8** %9, i8* %61)
  store i8* %62, i8** %4, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i8* @read_gucstate(i8** %9, i8* %63)
  store i8* %64, i8** %5, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @read_gucstate_binary(i8** %9, i8* %70, i32* %6, i32 4)
  br label %73

72:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @read_gucstate_binary(i8** %9, i8* %74, i32* %7, i32 4)
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @read_gucstate_binary(i8** %9, i8* %76, i32* %8, i32 4)
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  store i8* %78, i8** %79, align 16
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 1
  store i8* %80, i8** %81, align 8
  %82 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i8** %82, i8*** %83, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @GUC_ACTION_SET, align 4
  %89 = load i32, i32* @ERROR, align 4
  %90 = call i32 @set_config_option(i8* %84, i8* %85, i32 %86, i32 %87, i32 %88, i32 1, i32 %89, i32 1)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %73
  %94 = load i32, i32* @ERROR, align 4
  %95 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %96 = call i32 @errcode(i32 %95)
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %97)
  %99 = call i32 @ereport(i32 %94, i32 %98)
  br label %100

100:                                              ; preds = %93, %73
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = icmp ne i8 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i8*, i8** %3, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @set_config_sourcefile(i8* %106, i8* %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %100
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i8** null, i8*** %111, align 8
  br label %54

112:                                              ; preds = %54
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  store %struct.TYPE_3__* %114, %struct.TYPE_3__** @error_context_stack, align 8
  ret void
}

declare dso_local i32 @can_skip_gucvar(i32) #1

declare dso_local i32 @InitializeOneGUCOption(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i8* @read_gucstate(i8**, i8*) #1

declare dso_local i32 @read_gucstate_binary(i8**, i8*, i32*, i32) #1

declare dso_local i32 @set_config_option(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @set_config_sourcefile(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
