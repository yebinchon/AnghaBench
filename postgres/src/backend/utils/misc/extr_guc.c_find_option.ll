; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_find_option.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_find_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i32 }

@guc_variables = common dso_local global i64 0, align 8
@num_guc_variables = common dso_local global i32 0, align 4
@guc_var_compare = common dso_local global i32 0, align 4
@map_old_guc_names = common dso_local global i8** null, align 8
@GUC_QUALIFIER_SEPARATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_generic* (i8*, i32, i32)* @find_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_generic* @find_option(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.config_generic*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.config_generic**, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8** %5, i8*** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @Assert(i8* %11)
  %13 = bitcast i8*** %8 to i8*
  %14 = load i64, i64* @guc_variables, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = load i32, i32* @num_guc_variables, align 4
  %17 = load i32, i32* @guc_var_compare, align 4
  %18 = call i64 @bsearch(i8* %13, i8* %15, i32 %16, i32 8, i32 %17)
  %19 = inttoptr i64 %18 to %struct.config_generic**
  store %struct.config_generic** %19, %struct.config_generic*** %9, align 8
  %20 = load %struct.config_generic**, %struct.config_generic*** %9, align 8
  %21 = icmp ne %struct.config_generic** %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.config_generic**, %struct.config_generic*** %9, align 8
  %24 = load %struct.config_generic*, %struct.config_generic** %23, align 8
  store %struct.config_generic* %24, %struct.config_generic** %4, align 8
  br label %69

25:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %52, %25
  %27 = load i8**, i8*** @map_old_guc_names, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %26
  %34 = load i8*, i8** %5, align 8
  %35 = load i8**, i8*** @map_old_guc_names, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @guc_name_compare(i8* %34, i8* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load i8**, i8*** @map_old_guc_names, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %43, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.config_generic* @find_option(i8* %48, i32 0, i32 %49)
  store %struct.config_generic* %50, %struct.config_generic** %4, align 8
  br label %69

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 2
  store i32 %54, i32* %10, align 4
  br label %26

55:                                               ; preds = %26
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* @GUC_QUALIFIER_SEPARATOR, align 4
  %61 = call i32* @strchr(i8* %59, i32 %60)
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call %struct.config_generic* @add_placeholder_variable(i8* %64, i32 %65)
  store %struct.config_generic* %66, %struct.config_generic** %4, align 8
  br label %69

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %55
  store %struct.config_generic* null, %struct.config_generic** %4, align 8
  br label %69

69:                                               ; preds = %68, %63, %42, %22
  %70 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  ret %struct.config_generic* %70
}

declare dso_local i32 @Assert(i8*) #1

declare dso_local i64 @bsearch(i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @guc_name_compare(i8*, i8*) #1

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local %struct.config_generic* @add_placeholder_variable(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
