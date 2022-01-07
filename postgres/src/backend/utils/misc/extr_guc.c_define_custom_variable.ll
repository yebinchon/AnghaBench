; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_define_custom_variable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_define_custom_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i8*, i32, i64, i32* }
%struct.config_string = type { i64, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32, i32 }

@guc_variables = common dso_local global i64 0, align 8
@num_guc_variables = common dso_local global i32 0, align 4
@guc_var_compare = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@GUC_CUSTOM_PLACEHOLDER = common dso_local global i32 0, align 4
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"attempt to redefine parameter \22%s\22\00", align 1
@PGC_STRING = common dso_local global i64 0, align 8
@GUC_ACTION_SET = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_generic*)* @define_custom_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_custom_variable(%struct.config_generic* %0) #0 {
  %2 = alloca %struct.config_generic*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.config_string*, align 8
  %6 = alloca %struct.config_generic**, align 8
  store %struct.config_generic* %0, %struct.config_generic** %2, align 8
  %7 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %8 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  store i8** %3, i8*** %4, align 8
  %10 = bitcast i8*** %4 to i8*
  %11 = load i64, i64* @guc_variables, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load i32, i32* @num_guc_variables, align 4
  %14 = load i32, i32* @guc_var_compare, align 4
  %15 = call i64 @bsearch(i8* %10, i8* %12, i32 %13, i32 8, i32 %14)
  %16 = inttoptr i64 %15 to %struct.config_generic**
  store %struct.config_generic** %16, %struct.config_generic*** %6, align 8
  %17 = load %struct.config_generic**, %struct.config_generic*** %6, align 8
  %18 = icmp eq %struct.config_generic** %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %21 = call i32 @InitializeOneGUCOption(%struct.config_generic* %20)
  %22 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 @add_guc_variable(%struct.config_generic* %22, i32 %23)
  br label %130

25:                                               ; preds = %1
  %26 = load %struct.config_generic**, %struct.config_generic*** %6, align 8
  %27 = load %struct.config_generic*, %struct.config_generic** %26, align 8
  %28 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @GUC_CUSTOM_PLACEHOLDER, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = call i32 @ereport(i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %33, %25
  %41 = load %struct.config_generic**, %struct.config_generic*** %6, align 8
  %42 = load %struct.config_generic*, %struct.config_generic** %41, align 8
  %43 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PGC_STRING, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @Assert(i32 %47)
  %49 = load %struct.config_generic**, %struct.config_generic*** %6, align 8
  %50 = load %struct.config_generic*, %struct.config_generic** %49, align 8
  %51 = bitcast %struct.config_generic* %50 to %struct.config_string*
  store %struct.config_string* %51, %struct.config_string** %5, align 8
  %52 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %53 = call i32 @InitializeOneGUCOption(%struct.config_generic* %52)
  %54 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %55 = load %struct.config_generic**, %struct.config_generic*** %6, align 8
  store %struct.config_generic* %54, %struct.config_generic** %55, align 8
  %56 = load %struct.config_string*, %struct.config_string** %5, align 8
  %57 = getelementptr inbounds %struct.config_string, %struct.config_string* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %40
  %61 = load i8*, i8** %3, align 8
  %62 = load %struct.config_string*, %struct.config_string** %5, align 8
  %63 = getelementptr inbounds %struct.config_string, %struct.config_string* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.config_string*, %struct.config_string** %5, align 8
  %66 = getelementptr inbounds %struct.config_string, %struct.config_string* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.config_string*, %struct.config_string** %5, align 8
  %70 = getelementptr inbounds %struct.config_string, %struct.config_string* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @GUC_ACTION_SET, align 4
  %74 = load i32, i32* @WARNING, align 4
  %75 = call i32 @set_config_option(i8* %61, i64 %64, i32 %68, i32 %72, i32 %73, i32 1, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %60, %40
  %77 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %78 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @Assert(i32 %81)
  %83 = load %struct.config_generic*, %struct.config_generic** %2, align 8
  %84 = load %struct.config_string*, %struct.config_string** %5, align 8
  %85 = load %struct.config_string*, %struct.config_string** %5, align 8
  %86 = getelementptr inbounds %struct.config_string, %struct.config_string* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.config_string*, %struct.config_string** %5, align 8
  %90 = getelementptr inbounds %struct.config_string, %struct.config_string* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.config_string*, %struct.config_string** %5, align 8
  %94 = getelementptr inbounds %struct.config_string, %struct.config_string* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.config_string*, %struct.config_string** %5, align 8
  %98 = getelementptr inbounds %struct.config_string, %struct.config_string* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @reapply_stacked_values(%struct.config_generic* %83, %struct.config_string* %84, i32 %88, i64 %92, i32 %96, i32 %100)
  %102 = load %struct.config_string*, %struct.config_string** %5, align 8
  %103 = getelementptr inbounds %struct.config_string, %struct.config_string* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %76
  %108 = load i8*, i8** %3, align 8
  %109 = load %struct.config_string*, %struct.config_string** %5, align 8
  %110 = getelementptr inbounds %struct.config_string, %struct.config_string* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.config_string*, %struct.config_string** %5, align 8
  %114 = getelementptr inbounds %struct.config_string, %struct.config_string* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @set_config_sourcefile(i8* %108, i64 %112, i32 %116)
  br label %118

118:                                              ; preds = %107, %76
  %119 = load %struct.config_string*, %struct.config_string** %5, align 8
  %120 = load %struct.config_string*, %struct.config_string** %5, align 8
  %121 = getelementptr inbounds %struct.config_string, %struct.config_string* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = call i32 @set_string_field(%struct.config_string* %119, i64* %122, i32* null)
  %124 = load %struct.config_string*, %struct.config_string** %5, align 8
  %125 = load %struct.config_string*, %struct.config_string** %5, align 8
  %126 = getelementptr inbounds %struct.config_string, %struct.config_string* %125, i32 0, i32 0
  %127 = call i32 @set_string_field(%struct.config_string* %124, i64* %126, i32* null)
  %128 = load %struct.config_string*, %struct.config_string** %5, align 8
  %129 = call i32 @free(%struct.config_string* %128)
  br label %130

130:                                              ; preds = %118, %19
  ret void
}

declare dso_local i64 @bsearch(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @InitializeOneGUCOption(%struct.config_generic*) #1

declare dso_local i32 @add_guc_variable(%struct.config_generic*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @set_config_option(i8*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @reapply_stacked_values(%struct.config_generic*, %struct.config_string*, i32, i64, i32, i32) #1

declare dso_local i32 @set_config_sourcefile(i8*, i64, i32) #1

declare dso_local i32 @set_string_field(%struct.config_string*, i64*, i32*) #1

declare dso_local i32 @free(%struct.config_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
