; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_parseServiceInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_parseServiceInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"service\00", align 1
@MAXPGPATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"PGSERVICE\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"PGSERVICEFILE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c".pg_service.conf\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%s/pg_service.conf\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"PGSYSCONFDIR\00", align 1
@SYSCONFDIR = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"definition of service \22%s\22 not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @parseServiceInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseServiceInfo(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @conninfo_getval(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* @MAXPGPATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %24, %2
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %103

30:                                               ; preds = %26
  %31 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %31, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i8*, i8** %9, align 8
  %35 = trunc i64 %19 to i32
  %36 = call i32 @strlcpy(i8* %21, i8* %34, i32 %35)
  br label %57

37:                                               ; preds = %30
  %38 = load i32, i32* @MAXPGPATH, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %14, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %15, align 8
  %42 = trunc i64 %39 to i32
  %43 = call i32 @pqGetHomeDirectory(i8* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store i32 2, i32* %13, align 4
  br label %53

46:                                               ; preds = %37
  %47 = load i32, i32* @MAXPGPATH, align 4
  %48 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %21, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %49 = call i64 @stat(i8* %21, %struct.stat* %12)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 2, i32* %13, align 4
  br label %53

52:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %51, %45, %52
  %54 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %13, align 4
  switch i32 %55, label %103 [
    i32 0, label %56
    i32 2, label %70
  ]

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i8*, i8** %6, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @parseServiceFile(i8* %21, i8* %58, i32* %59, i32 %60, i32* %10)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %57
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %103

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %53
  %71 = load i32, i32* @MAXPGPATH, align 4
  %72 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %78

76:                                               ; preds = %70
  %77 = load i8*, i8** @SYSCONFDIR, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i8* [ %75, %74 ], [ %77, %76 ]
  %80 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %21, i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %79)
  %81 = call i64 @stat(i8* %21, %struct.stat* %12)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %94

84:                                               ; preds = %78
  %85 = load i8*, i8** %6, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @parseServiceFile(i8* %21, i8* %85, i32* %86, i32 %87, i32* %10)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %103

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %83
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @libpq_gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @printfPQExpBuffer(i32 %98, i32 %99, i8* %100)
  store i32 3, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %103

102:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %103

103:                                              ; preds = %102, %97, %91, %67, %53, %29
  %104 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i8* @conninfo_getval(i32*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @pqGetHomeDirectory(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @parseServiceFile(i8*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @printfPQExpBuffer(i32, i32, i8*) #1

declare dso_local i32 @libpq_gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
