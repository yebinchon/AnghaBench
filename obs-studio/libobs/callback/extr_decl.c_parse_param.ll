; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_decl.c_parse_param.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_decl.c_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_parser = type { i32 }
%struct.decl_info = type { i32 }
%struct.strref = type { i32 }
%struct.decl_param = type { i64, i32, i32, i32 }

@TYPE_OR_STORAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@CALL_PARAM_IN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"parameter name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_parser*, %struct.decl_info*)* @parse_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_param(%struct.cf_parser* %0, %struct.decl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cf_parser*, align 8
  %5 = alloca %struct.decl_info*, align 8
  %6 = alloca %struct.strref, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.decl_param, align 8
  store %struct.cf_parser* %0, %struct.cf_parser** %4, align 8
  store %struct.decl_info* %1, %struct.decl_info** %5, align 8
  %9 = bitcast %struct.decl_param* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load %struct.cf_parser*, %struct.cf_parser** %4, align 8
  %11 = load i32, i32* @TYPE_OR_STORAGE, align 4
  %12 = call i32 @cf_next_name_ref(%struct.cf_parser* %10, %struct.strref* %6, i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @PARSE_SUCCESS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %87

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %33, %18
  %20 = load %struct.cf_parser*, %struct.cf_parser** %4, align 8
  %21 = getelementptr inbounds %struct.decl_param, %struct.decl_param* %8, i32 0, i32 0
  %22 = call i64 @is_in_out_specifier(%struct.cf_parser* %20, %struct.strref* %6, i64* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.cf_parser*, %struct.cf_parser** %4, align 8
  %26 = load i32, i32* @TYPE_OR_STORAGE, align 4
  %27 = call i32 @cf_next_name_ref(%struct.cf_parser* %25, %struct.strref* %6, i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @PARSE_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %87

33:                                               ; preds = %24
  br label %19

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.decl_param, %struct.decl_param* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, i64* @CALL_PARAM_IN, align 8
  %40 = getelementptr inbounds %struct.decl_param, %struct.decl_param* %8, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = getelementptr inbounds %struct.decl_param, %struct.decl_param* %8, i32 0, i32 2
  %43 = call i32 @get_type(%struct.strref* %6, i32* %42, i32 0)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load %struct.cf_parser*, %struct.cf_parser** %4, align 8
  %47 = call i32 @cf_adderror_expecting(%struct.cf_parser* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.cf_parser*, %struct.cf_parser** %4, align 8
  %49 = call i32 @cf_go_to_token(%struct.cf_parser* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @PARSE_CONTINUE, align 4
  store i32 %50, i32* %3, align 4
  br label %87

51:                                               ; preds = %41
  %52 = load %struct.cf_parser*, %struct.cf_parser** %4, align 8
  %53 = getelementptr inbounds %struct.decl_param, %struct.decl_param* %8, i32 0, i32 1
  %54 = call i32 @cf_next_name(%struct.cf_parser* %52, i32* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @PARSE_SUCCESS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %87

60:                                               ; preds = %51
  %61 = load %struct.decl_info*, %struct.decl_info** %5, align 8
  %62 = getelementptr inbounds %struct.decl_param, %struct.decl_param* %8, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @name_exists(%struct.decl_info* %61, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.cf_parser*, %struct.cf_parser** %4, align 8
  %68 = getelementptr inbounds %struct.decl_param, %struct.decl_param* %8, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @err_existing_name(%struct.cf_parser* %67, i32 %69)
  br label %71

71:                                               ; preds = %66, %60
  %72 = getelementptr inbounds %struct.decl_param, %struct.decl_param* %8, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @is_reserved_name(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.cf_parser*, %struct.cf_parser** %4, align 8
  %78 = getelementptr inbounds %struct.decl_param, %struct.decl_param* %8, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @err_reserved_name(%struct.cf_parser* %77, i32 %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.decl_info*, %struct.decl_info** %5, align 8
  %83 = getelementptr inbounds %struct.decl_info, %struct.decl_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @da_push_back(i32 %84, %struct.decl_param* %8)
  %86 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %81, %58, %45, %31, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cf_next_name_ref(%struct.cf_parser*, %struct.strref*, i32, i8*) #2

declare dso_local i64 @is_in_out_specifier(%struct.cf_parser*, %struct.strref*, i64*) #2

declare dso_local i32 @get_type(%struct.strref*, i32*, i32) #2

declare dso_local i32 @cf_adderror_expecting(%struct.cf_parser*, i8*) #2

declare dso_local i32 @cf_go_to_token(%struct.cf_parser*, i8*, i8*) #2

declare dso_local i32 @cf_next_name(%struct.cf_parser*, i32*, i8*, i8*) #2

declare dso_local i64 @name_exists(%struct.decl_info*, i32) #2

declare dso_local i32 @err_existing_name(%struct.cf_parser*, i32) #2

declare dso_local i64 @is_reserved_name(i32) #2

declare dso_local i32 @err_reserved_name(%struct.cf_parser*, i32) #2

declare dso_local i32 @da_push_back(i32, %struct.decl_param*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
