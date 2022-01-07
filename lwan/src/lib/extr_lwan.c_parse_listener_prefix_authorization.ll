; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_parse_listener_prefix_authorization.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_parse_listener_prefix_authorization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }
%struct.config_line = type { i8*, i32, i8* }
%struct.lwan_url_map = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"basic\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Only basic authorization supported\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"realm\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"password_file\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Unexpected section: %s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Lwan\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"htpasswd\00", align 1
@HANDLER_MUST_AUTHORIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Could not find end of authorization section\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config*, %struct.config_line*, %struct.lwan_url_map*)* @parse_listener_prefix_authorization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_listener_prefix_authorization(%struct.config* %0, %struct.config_line* %1, %struct.lwan_url_map* %2) #0 {
  %4 = alloca %struct.config*, align 8
  %5 = alloca %struct.config_line*, align 8
  %6 = alloca %struct.lwan_url_map*, align 8
  store %struct.config* %0, %struct.config** %4, align 8
  store %struct.config_line* %1, %struct.config_line** %5, align 8
  store %struct.lwan_url_map* %2, %struct.lwan_url_map** %6, align 8
  %7 = load %struct.config_line*, %struct.config_line** %5, align 8
  %8 = getelementptr inbounds %struct.config_line, %struct.config_line* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i64 @streq(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load %struct.config*, %struct.config** %4, align 8
  %14 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %116

15:                                               ; preds = %3
  %16 = load %struct.lwan_url_map*, %struct.lwan_url_map** %6, align 8
  %17 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %16, i32 0, i32 0
  %18 = call i32 @memset(%struct.TYPE_2__* %17, i32 0, i32 16)
  br label %19

19:                                               ; preds = %101, %15
  %20 = load %struct.config*, %struct.config** %4, align 8
  %21 = call %struct.config_line* @config_read_line(%struct.config* %20)
  store %struct.config_line* %21, %struct.config_line** %5, align 8
  %22 = icmp ne %struct.config_line* %21, null
  br i1 %22, label %23, label %102

23:                                               ; preds = %19
  %24 = load %struct.config_line*, %struct.config_line** %5, align 8
  %25 = getelementptr inbounds %struct.config_line, %struct.config_line* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %101 [
    i32 130, label %27
    i32 129, label %67
    i32 128, label %73
  ]

27:                                               ; preds = %23
  %28 = load %struct.config_line*, %struct.config_line** %5, align 8
  %29 = getelementptr inbounds %struct.config_line, %struct.config_line* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @streq(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.lwan_url_map*, %struct.lwan_url_map** %6, align 8
  %35 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load %struct.config_line*, %struct.config_line** %5, align 8
  %40 = getelementptr inbounds %struct.config_line, %struct.config_line* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @strdup(i8* %41)
  %43 = load %struct.lwan_url_map*, %struct.lwan_url_map** %6, align 8
  %44 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  br label %66

46:                                               ; preds = %27
  %47 = load %struct.config_line*, %struct.config_line** %5, align 8
  %48 = getelementptr inbounds %struct.config_line, %struct.config_line* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @streq(i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load %struct.lwan_url_map*, %struct.lwan_url_map** %6, align 8
  %54 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load %struct.config_line*, %struct.config_line** %5, align 8
  %59 = getelementptr inbounds %struct.config_line, %struct.config_line* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @strdup(i8* %60)
  %62 = load %struct.lwan_url_map*, %struct.lwan_url_map** %6, align 8
  %63 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  br label %65

65:                                               ; preds = %52, %46
  br label %66

66:                                               ; preds = %65, %33
  br label %101

67:                                               ; preds = %23
  %68 = load %struct.config*, %struct.config** %4, align 8
  %69 = load %struct.config_line*, %struct.config_line** %5, align 8
  %70 = getelementptr inbounds %struct.config_line, %struct.config_line* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  br label %105

73:                                               ; preds = %23
  %74 = load %struct.lwan_url_map*, %struct.lwan_url_map** %6, align 8
  %75 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %81 = load %struct.lwan_url_map*, %struct.lwan_url_map** %6, align 8
  %82 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i8* %80, i8** %83, align 8
  br label %84

84:                                               ; preds = %79, %73
  %85 = load %struct.lwan_url_map*, %struct.lwan_url_map** %6, align 8
  %86 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %84
  %91 = call i8* @strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %92 = load %struct.lwan_url_map*, %struct.lwan_url_map** %6, align 8
  %93 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i8* %91, i8** %94, align 8
  br label %95

95:                                               ; preds = %90, %84
  %96 = load i32, i32* @HANDLER_MUST_AUTHORIZE, align 4
  %97 = load %struct.lwan_url_map*, %struct.lwan_url_map** %6, align 8
  %98 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %116

101:                                              ; preds = %23, %66
  br label %19

102:                                              ; preds = %19
  %103 = load %struct.config*, %struct.config** %4, align 8
  %104 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %103, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %67
  %106 = load %struct.lwan_url_map*, %struct.lwan_url_map** %6, align 8
  %107 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load %struct.lwan_url_map*, %struct.lwan_url_map** %6, align 8
  %112 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @free(i8* %114)
  br label %116

116:                                              ; preds = %105, %95, %12
  ret void
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @config_error(%struct.config*, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local %struct.config_line* @config_read_line(%struct.config*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
