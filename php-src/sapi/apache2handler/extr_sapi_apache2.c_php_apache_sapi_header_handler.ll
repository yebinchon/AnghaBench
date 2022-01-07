; ModuleID = '/home/carl/AnghaBench/php-src/sapi/apache2handler/extr_sapi_apache2.c_php_apache_sapi_header_handler.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/apache2handler/extr_sapi_apache2.c_php_apache_sapi_header_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@server_context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"content-type\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"content-length\00", align 1
@APR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*)* @php_apache_sapi_header_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_apache_sapi_header_handler(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @server_context, align 4
  %13 = call %struct.TYPE_7__* @SG(i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %121 [
    i32 130, label %15
    i32 129, label %25
    i32 131, label %32
    i32 128, label %32
  ]

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @apr_table_unset(i32 %20, i32 %23)
  store i32 0, i32* %4, align 4
  br label %122

25:                                               ; preds = %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @apr_table_clear(i32 %30)
  store i32 0, i32* %4, align 4
  br label %122

32:                                               ; preds = %3, %3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @strchr(i32 %35, i8 signext 58)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %122

40:                                               ; preds = %32
  %41 = load i8*, i8** %9, align 8
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %9, align 8
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %46, %40
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %43, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcasecmp(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @efree(i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @estrdup(i8* %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  br label %119

72:                                               ; preds = %51
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @strcasecmp(i32 %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %72
  store i32 0, i32* %11, align 4
  %79 = load i32, i32* @APR_SUCCESS, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @apr_strtoff(i32* %11, i8* %80, i8** null, i32 10)
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @strtol(i8* %84, i8** null, i32 10)
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @ap_set_content_length(%struct.TYPE_8__* %89, i32 %90)
  br label %118

92:                                               ; preds = %72
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 128
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @apr_table_set(i32 %100, i32 %103, i8* %104)
  br label %117

106:                                              ; preds = %92
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 @apr_table_add(i32 %111, i32 %114, i8* %115)
  br label %117

117:                                              ; preds = %106, %95
  br label %118

118:                                              ; preds = %117, %86
  br label %119

119:                                              ; preds = %118, %67
  %120 = load i8*, i8** %10, align 8
  store i8 58, i8* %120, align 1
  store i32 131, i32* %4, align 4
  br label %122

121:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %119, %39, %25, %15
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.TYPE_7__* @SG(i32) #1

declare dso_local i32 @apr_table_unset(i32, i32) #1

declare dso_local i32 @apr_table_clear(i32) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @efree(i32) #1

declare dso_local i32 @estrdup(i8*) #1

declare dso_local i32 @apr_strtoff(i32*, i8*, i8**, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @ap_set_content_length(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @apr_table_set(i32, i32, i8*) #1

declare dso_local i32 @apr_table_add(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
