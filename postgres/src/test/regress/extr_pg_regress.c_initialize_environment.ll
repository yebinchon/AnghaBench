; ModuleID = '/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_initialize_environment.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_initialize_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"PGAPPNAME=pg_regress\00", align 1
@nolocale = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"LC_COLLATE\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"LC_MONETARY\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"LC_NUMERIC\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"LC_TIME\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"LANGUAGE\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"LC_MESSAGES=C\00", align 1
@encoding = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"PGCLIENTENCODING\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"PGTZ=PST8PDT\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"PGDATESTYLE=Postgres, MDY\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"-c intervalstyle=postgres_verbose\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"PGOPTIONS\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"PGOPTIONS=%s %s\00", align 1
@temp_instance = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"PGDATABASE\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"PGUSER\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"PGSERVICE\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"PGSSLMODE\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"PGREQUIRESSL\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"PGCONNECT_TIMEOUT\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"PGDATA\00", align 1
@hostname = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [7 x i8] c"PGHOST\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"PGHOSTADDR\00", align 1
@port = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"PGPORT\00", align 1
@user = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"(using postmaster on %s, port %s)\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"(using postmaster on %s, default port)\0A\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"(using postmaster on Unix socket, port %s)\0A\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"(using postmaster on Unix socket, default port)\0A\00", align 1
@sockdir = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialize_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_environment() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = call i32 @putenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* @nolocale, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %0
  %12 = call i32 @unsetenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @unsetenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @unsetenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @unsetenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %16 = call i32 @unsetenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %17 = call i32 @unsetenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %18

18:                                               ; preds = %11, %0
  %19 = call i32 @unsetenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %20 = call i32 @unsetenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %21 = call i32 @putenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %22 = load i8*, i8** @encoding, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i8*, i8** @encoding, align 8
  %26 = call i32 @doputenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %25)
  br label %29

27:                                               ; preds = %18
  %28 = call i32 @unsetenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  %30 = call i32 @putenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %31 = call i32 @putenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8** %1, align 8
  %32 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  store i8* %32, i8** %2, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i8*, i8** %2, align 8
  %38 = load i8*, i8** %1, align 8
  %39 = call i8* @psprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* %37, i8* %38)
  store i8* %39, i8** %3, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @putenv(i8* %40)
  %42 = load i64, i64* @temp_instance, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %36
  %45 = call i32 @unsetenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %46 = call i32 @unsetenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %47 = call i32 @unsetenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %48 = call i32 @unsetenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %49 = call i32 @unsetenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %50 = call i32 @unsetenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  %51 = call i32 @unsetenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %52 = load i8*, i8** @hostname, align 8
  %53 = icmp ne i8* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load i8*, i8** @hostname, align 8
  %57 = call i32 @doputenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* %56)
  %58 = call i32 @unsetenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  %59 = load i32, i32* @port, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %67

61:                                               ; preds = %44
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %63 = load i32, i32* @port, align 4
  %64 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %66 = call i32 @doputenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %61, %44
  br label %138

68:                                               ; preds = %36
  %69 = load i8*, i8** @hostname, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i8*, i8** @hostname, align 8
  %73 = call i32 @doputenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* %72)
  %74 = call i32 @unsetenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* @port, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %80 = load i32, i32* @port, align 4
  %81 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i32 %80)
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %83 = call i32 @doputenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %78, %75
  %85 = load i8*, i8** @user, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i8*, i8** @user, align 8
  %89 = call i32 @doputenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = call i32 @unsetenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %92 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  store i8* %92, i8** %5, align 8
  %93 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  store i8* %93, i8** %6, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i8** %5, align 8
  br label %97

97:                                               ; preds = %96, %90
  %98 = load i8*, i8** %5, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i8*, i8** %6, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0))
  %105 = load i8*, i8** %5, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 (i8*, ...) @printf(i8* %104, i8* %105, i8* %106)
  br label %108

108:                                              ; preds = %103, %100, %97
  %109 = load i8*, i8** %5, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i8*, i8** %6, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  %115 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0))
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 (i8*, ...) @printf(i8* %115, i8* %116)
  br label %118

118:                                              ; preds = %114, %111, %108
  %119 = load i8*, i8** %5, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %128, label %121

121:                                              ; preds = %118
  %122 = load i8*, i8** %6, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0))
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 (i8*, ...) @printf(i8* %125, i8* %126)
  br label %128

128:                                              ; preds = %124, %121, %118
  %129 = load i8*, i8** %5, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = load i8*, i8** %6, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i64 0, i64 0))
  %136 = call i32 (i8*, ...) @printf(i8* %135)
  br label %137

137:                                              ; preds = %134, %131, %128
  br label %138

138:                                              ; preds = %137, %67
  %139 = call i32 (...) @convert_sourcefiles()
  %140 = call i32 (...) @load_resultmap()
  ret void
}

declare dso_local i32 @putenv(i8*) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @doputenv(i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @psprintf(i8*, i8*, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @convert_sourcefiles(...) #1

declare dso_local i32 @load_resultmap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
