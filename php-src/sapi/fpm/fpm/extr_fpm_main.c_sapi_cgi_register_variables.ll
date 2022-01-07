; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_main.c_sapi_cgi_register_variables.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_main.c_sapi_cgi_register_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (i32, i8*, i8**, i64, i64*)* }
%struct.TYPE_4__ = type { i8* }

@fix_pathinfo = common dso_local global i32 0, align 4
@request_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"PATH_INFO\00", align 1
@sapi_module = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PARSE_SERVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"PHP_SELF\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @sapi_cgi_register_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sapi_cgi_register_variables(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @php_import_environment_variables(i32* %12)
  %14 = load i32, i32* @fix_pathinfo, align 4
  %15 = call i64 @CGIG(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %83

17:                                               ; preds = %1
  %18 = load i32, i32* @request_info, align 4
  %19 = call i8* @SG(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* @strlen(i8* %26)
  br label %29

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i8* [ %27, %25 ], [ null, %28 ]
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = call i8* @sapi_cgibin_getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @strlen(i8* %36)
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i8* [ %37, %35 ], [ null, %38 ]
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add i32 %42, %43
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %3, align 8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 1
  %48 = call i8* @emalloc(i64 %47)
  store i8* %48, i8** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, 1
  %56 = call i32 @memcpy(i8* %52, i8* %53, i32 %55)
  br label %57

57:                                               ; preds = %51, %39
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 1
  %68 = call i32 @memcpy(i8* %64, i8* %65, i32 %67)
  br label %69

69:                                               ; preds = %60, %57
  %70 = load i64 (i32, i8*, i8**, i64, i64*)*, i64 (i32, i8*, i8**, i64, i64*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sapi_module, i32 0, i32 0), align 8
  %71 = load i32, i32* @PARSE_SERVER, align 4
  %72 = load i64, i64* %3, align 8
  %73 = call i64 %70(i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %4, i64 %72, i64* %3)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i8*, i8** %4, align 8
  %77 = load i64, i64* %3, align 8
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @php_register_variable_safe(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %76, i64 %77, i32* %78)
  br label %80

80:                                               ; preds = %75, %69
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @efree(i8* %81)
  br label %113

83:                                               ; preds = %1
  %84 = load i32, i32* @request_info, align 4
  %85 = call i8* @SG(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i8* %85, i8** %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* @request_info, align 4
  %92 = call i8* @SG(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  br label %97

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %90
  %98 = phi i8* [ %95, %90 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %96 ]
  store i8* %98, i8** %4, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = call i8* @strlen(i8* %99)
  %101 = ptrtoint i8* %100 to i64
  store i64 %101, i64* %3, align 8
  %102 = load i64 (i32, i8*, i8**, i64, i64*)*, i64 (i32, i8*, i8**, i64, i64*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sapi_module, i32 0, i32 0), align 8
  %103 = load i32, i32* @PARSE_SERVER, align 4
  %104 = load i64, i64* %3, align 8
  %105 = call i64 %102(i32 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %4, i64 %104, i64* %3)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load i8*, i8** %4, align 8
  %109 = load i64, i64* %3, align 8
  %110 = load i32*, i32** %2, align 8
  %111 = call i32 @php_register_variable_safe(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %108, i64 %109, i32* %110)
  br label %112

112:                                              ; preds = %107, %97
  br label %113

113:                                              ; preds = %112, %80
  ret void
}

declare dso_local i32 @php_import_environment_variables(i32*) #1

declare dso_local i64 @CGIG(i32) #1

declare dso_local i8* @SG(i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i8* @sapi_cgibin_getenv(i8*, i32) #1

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @php_register_variable_safe(i8*, i8*, i64, i32*) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
