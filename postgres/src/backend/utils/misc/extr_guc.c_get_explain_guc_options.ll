; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_get_explain_guc_options.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_get_explain_guc_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i32, i32 }
%struct.config_bool = type { i32*, i32 }
%struct.config_int = type { i32*, i32 }
%struct.config_real = type { i32*, i32 }
%struct.config_string = type { i32*, i32 }
%struct.config_enum = type { i32*, i32 }

@num_guc_explain_variables = common dso_local global i32 0, align 4
@num_guc_variables = common dso_local global i32 0, align 4
@guc_variables = common dso_local global %struct.config_generic** null, align 8
@GUC_NO_SHOW_ALL = common dso_local global i32 0, align 4
@GUC_SUPERUSER_ONLY = common dso_local global i32 0, align 4
@DEFAULT_ROLE_READ_ALL_SETTINGS = common dso_local global i32 0, align 4
@GUC_EXPLAIN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unexpected GUC type: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.config_generic** @get_explain_guc_options(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_generic**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.config_generic*, align 8
  %7 = alloca %struct.config_bool*, align 8
  %8 = alloca %struct.config_int*, align 8
  %9 = alloca %struct.config_real*, align 8
  %10 = alloca %struct.config_string*, align 8
  %11 = alloca %struct.config_enum*, align 8
  store i32* %0, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @num_guc_explain_variables, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = trunc i64 %15 to i32
  %17 = call %struct.config_generic** @palloc(i32 %16)
  store %struct.config_generic** %17, %struct.config_generic*** %4, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %147, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @num_guc_variables, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %150

22:                                               ; preds = %18
  %23 = load %struct.config_generic**, %struct.config_generic*** @guc_variables, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %23, i64 %25
  %27 = load %struct.config_generic*, %struct.config_generic** %26, align 8
  store %struct.config_generic* %27, %struct.config_generic** %6, align 8
  %28 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %29 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GUC_NO_SHOW_ALL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %22
  %35 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %36 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @GUC_SUPERUSER_ONLY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = call i32 (...) @GetUserId()
  %43 = load i32, i32* @DEFAULT_ROLE_READ_ALL_SETTINGS, align 4
  %44 = call i32 @is_member_of_role(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41, %22
  br label %147

47:                                               ; preds = %41, %34
  %48 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %49 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GUC_EXPLAIN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %147

55:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  %56 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %57 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %120 [
    i32 132, label %59
    i32 130, label %71
    i32 129, label %83
    i32 128, label %95
    i32 131, label %108
  ]

59:                                               ; preds = %55
  %60 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %61 = bitcast %struct.config_generic* %60 to %struct.config_bool*
  store %struct.config_bool* %61, %struct.config_bool** %7, align 8
  %62 = load %struct.config_bool*, %struct.config_bool** %7, align 8
  %63 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.config_bool*, %struct.config_bool** %7, align 8
  %66 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %64, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %126

71:                                               ; preds = %55
  %72 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %73 = bitcast %struct.config_generic* %72 to %struct.config_int*
  store %struct.config_int* %73, %struct.config_int** %8, align 8
  %74 = load %struct.config_int*, %struct.config_int** %8, align 8
  %75 = getelementptr inbounds %struct.config_int, %struct.config_int* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.config_int*, %struct.config_int** %8, align 8
  %78 = getelementptr inbounds %struct.config_int, %struct.config_int* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %76, %80
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %5, align 4
  br label %126

83:                                               ; preds = %55
  %84 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %85 = bitcast %struct.config_generic* %84 to %struct.config_real*
  store %struct.config_real* %85, %struct.config_real** %9, align 8
  %86 = load %struct.config_real*, %struct.config_real** %9, align 8
  %87 = getelementptr inbounds %struct.config_real, %struct.config_real* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.config_real*, %struct.config_real** %9, align 8
  %90 = getelementptr inbounds %struct.config_real, %struct.config_real* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %88, %92
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %5, align 4
  br label %126

95:                                               ; preds = %55
  %96 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %97 = bitcast %struct.config_generic* %96 to %struct.config_string*
  store %struct.config_string* %97, %struct.config_string** %10, align 8
  %98 = load %struct.config_string*, %struct.config_string** %10, align 8
  %99 = getelementptr inbounds %struct.config_string, %struct.config_string* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.config_string*, %struct.config_string** %10, align 8
  %102 = getelementptr inbounds %struct.config_string, %struct.config_string* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @strcmp(i32 %100, i32 %104)
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %5, align 4
  br label %126

108:                                              ; preds = %55
  %109 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %110 = bitcast %struct.config_generic* %109 to %struct.config_enum*
  store %struct.config_enum* %110, %struct.config_enum** %11, align 8
  %111 = load %struct.config_enum*, %struct.config_enum** %11, align 8
  %112 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.config_enum*, %struct.config_enum** %11, align 8
  %115 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %113, %117
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %5, align 4
  br label %126

120:                                              ; preds = %55
  %121 = load i32, i32* @ERROR, align 4
  %122 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %123 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @elog(i32 %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %120, %108, %95, %83, %71, %59
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  br label %147

130:                                              ; preds = %126
  %131 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %132 = load %struct.config_generic**, %struct.config_generic*** %4, align 8
  %133 = load i32*, i32** %2, align 8
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %132, i64 %135
  store %struct.config_generic* %131, %struct.config_generic** %136, align 8
  %137 = load i32*, i32** %2, align 8
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  %140 = load i32*, i32** %2, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32*, i32** %2, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @num_guc_explain_variables, align 4
  %144 = icmp sle i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @Assert(i32 %145)
  br label %147

147:                                              ; preds = %130, %129, %54, %46
  %148 = load i32, i32* %3, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %3, align 4
  br label %18

150:                                              ; preds = %18
  %151 = load %struct.config_generic**, %struct.config_generic*** %4, align 8
  ret %struct.config_generic** %151
}

declare dso_local %struct.config_generic** @palloc(i32) #1

declare dso_local i32 @is_member_of_role(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
