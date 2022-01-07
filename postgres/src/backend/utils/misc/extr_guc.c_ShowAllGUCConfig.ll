; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_ShowAllGUCConfig.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_ShowAllGUCConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@TEXTOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"setting\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@TTSOpsVirtual = common dso_local global i32 0, align 4
@num_guc_variables = common dso_local global i32 0, align 4
@guc_variables = common dso_local global %struct.config_generic** null, align 8
@GUC_NO_SHOW_ALL = common dso_local global i32 0, align 4
@GUC_SUPERUSER_ONLY = common dso_local global i32 0, align 4
@DEFAULT_ROLE_READ_ALL_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ShowAllGUCConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ShowAllGUCConfig(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca %struct.config_generic*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %10 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  %11 = call i32 @CreateTemplateTupleDesc(i32 3)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @TEXTOID, align 4
  %14 = call i32 @TupleDescInitBuiltinEntry(i32 %12, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %13, i32 -1, i32 0)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @TEXTOID, align 4
  %17 = call i32 @TupleDescInitBuiltinEntry(i32 %15, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 -1, i32 0)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TEXTOID, align 4
  %20 = call i32 @TupleDescInitBuiltinEntry(i32 %18, i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 -1, i32 0)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32* @begin_tup_output_tupdesc(i32* %21, i32 %22, i32* @TTSOpsVirtual)
  store i32* %23, i32** %4, align 8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %103, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @num_guc_variables, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %106

28:                                               ; preds = %24
  %29 = load %struct.config_generic**, %struct.config_generic*** @guc_variables, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %29, i64 %31
  %33 = load %struct.config_generic*, %struct.config_generic** %32, align 8
  store %struct.config_generic* %33, %struct.config_generic** %8, align 8
  %34 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %35 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @GUC_NO_SHOW_ALL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %28
  %41 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %42 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @GUC_SUPERUSER_ONLY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = call i32 (...) @GetUserId()
  %49 = load i32, i32* @DEFAULT_ROLE_READ_ALL_SETTINGS, align 4
  %50 = call i32 @is_member_of_role(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47, %28
  br label %103

53:                                               ; preds = %47, %40
  %54 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %55 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32* @cstring_to_text(i8* %56)
  %58 = call i32 @PointerGetDatum(i32* %57)
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %61 = call i8* @_ShowOption(%struct.config_generic* %60, i32 1)
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = load i8*, i8** %9, align 8
  %66 = call i32* @cstring_to_text(i8* %65)
  %67 = call i32 @PointerGetDatum(i32* %66)
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %69, align 4
  br label %74

70:                                               ; preds = %53
  %71 = call i32 @PointerGetDatum(i32* null)
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %64
  %75 = load %struct.config_generic*, %struct.config_generic** %8, align 8
  %76 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i32* @cstring_to_text(i8* %77)
  %79 = call i32 @PointerGetDatum(i32* %78)
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %79, i32* %80, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %84 = call i32 @do_tup_output(i32* %81, i32* %82, i32* %83)
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @DatumGetPointer(i32 %86)
  %88 = call i32 @pfree(i8* %87)
  %89 = load i8*, i8** %9, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %74
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @pfree(i8* %92)
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @DatumGetPointer(i32 %95)
  %97 = call i32 @pfree(i8* %96)
  br label %98

98:                                               ; preds = %91, %74
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @DatumGetPointer(i32 %100)
  %102 = call i32 @pfree(i8* %101)
  br label %103

103:                                              ; preds = %98, %52
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %24

106:                                              ; preds = %24
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @end_tup_output(i32* %107)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CreateTemplateTupleDesc(i32) #2

declare dso_local i32 @TupleDescInitBuiltinEntry(i32, i32, i8*, i32, i32, i32) #2

declare dso_local i32* @begin_tup_output_tupdesc(i32*, i32, i32*) #2

declare dso_local i32 @is_member_of_role(i32, i32) #2

declare dso_local i32 @GetUserId(...) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local i32* @cstring_to_text(i8*) #2

declare dso_local i8* @_ShowOption(%struct.config_generic*, i32) #2

declare dso_local i32 @do_tup_output(i32*, i32*, i32*) #2

declare dso_local i32 @pfree(i8*) #2

declare dso_local i8* @DatumGetPointer(i32) #2

declare dso_local i32 @end_tup_output(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
