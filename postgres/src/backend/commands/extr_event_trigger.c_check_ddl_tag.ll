; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_check_ddl_tag.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_check_ddl_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"CREATE TABLE AS\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SELECT INTO\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"REFRESH MATERIALIZED VIEW\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"ALTER DEFAULT PRIVILEGES\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ALTER LARGE OBJECT\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"GRANT\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"REVOKE\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"DROP OWNED\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"IMPORT FOREIGN SCHEMA\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"SECURITY LABEL\00", align 1
@EVENT_TRIGGER_COMMAND_TAG_OK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"CREATE \00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"ALTER \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"DROP \00", align 1
@EVENT_TRIGGER_COMMAND_TAG_NOT_RECOGNIZED = common dso_local global i32 0, align 4
@event_trigger_support = common dso_local global %struct.TYPE_3__* null, align 8
@EVENT_TRIGGER_COMMAND_TAG_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @check_ddl_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ddl_tag(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @pg_strcasecmp(i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %49, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @pg_strcasecmp(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %49, label %13

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @pg_strcasecmp(i8* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @pg_strcasecmp(i8* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @pg_strcasecmp(i8* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @pg_strcasecmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @pg_strcasecmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @pg_strcasecmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @pg_strcasecmp(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @pg_strcasecmp(i8* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @pg_strcasecmp(i8* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %41, %37, %33, %29, %25, %21, %17, %13, %9, %1
  %50 = load i32, i32* @EVENT_TRIGGER_COMMAND_TAG_OK, align 4
  store i32 %50, i32* %2, align 4
  br label %111

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @pg_strncasecmp(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 7)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 7
  store i8* %57, i8** %4, align 8
  br label %76

58:                                               ; preds = %51
  %59 = load i8*, i8** %3, align 8
  %60 = call i64 @pg_strncasecmp(i8* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 6)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 6
  store i8* %64, i8** %4, align 8
  br label %75

65:                                               ; preds = %58
  %66 = load i8*, i8** %3, align 8
  %67 = call i64 @pg_strncasecmp(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 5)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i8*, i8** %3, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 5
  store i8* %71, i8** %4, align 8
  br label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @EVENT_TRIGGER_COMMAND_TAG_NOT_RECOGNIZED, align 4
  store i32 %73, i32* %2, align 4
  br label %111

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %62
  br label %76

76:                                               ; preds = %75, %55
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @event_trigger_support, align 8
  store %struct.TYPE_3__* %77, %struct.TYPE_3__** %5, align 8
  br label %78

78:                                               ; preds = %92, %76
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = call i64 @pg_strcasecmp(i8* %86, i8* %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %95

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 1
  store %struct.TYPE_3__* %94, %struct.TYPE_3__** %5, align 8
  br label %78

95:                                               ; preds = %90, %78
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @EVENT_TRIGGER_COMMAND_TAG_NOT_RECOGNIZED, align 4
  store i32 %101, i32* %2, align 4
  br label %111

102:                                              ; preds = %95
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @EVENT_TRIGGER_COMMAND_TAG_NOT_SUPPORTED, align 4
  store i32 %108, i32* %2, align 4
  br label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @EVENT_TRIGGER_COMMAND_TAG_OK, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %107, %100, %72, %49
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

declare dso_local i64 @pg_strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
