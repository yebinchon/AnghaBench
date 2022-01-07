; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_initSuEXEC.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_initSuEXEC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.passwd = type { i32, i32 }

@s_defaultUid = common dso_local global i32 0, align 4
@s_defaultGid = common dso_local global i32 0, align 4
@s_uid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"LSAPI_DEFAULT_UID\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"LSAPI_DEFAULT_GID\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"LSAPI_SECRET\00", align 1
@g_prefork_server = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"nobody\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @lsapi_initSuEXEC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsapi_initSuEXEC() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* @s_defaultUid, align 4
  store i32 0, i32* @s_defaultGid, align 4
  %5 = load i64, i64* @s_uid, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %61

7:                                                ; preds = %0
  %8 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @atoi(i8* %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* @s_defaultUid, align 4
  br label %18

18:                                               ; preds = %16, %11
  br label %19

19:                                               ; preds = %18, %7
  %20 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @atoi(i8* %24)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %2, align 4
  store i32 %29, i32* @s_defaultGid, align 4
  br label %30

30:                                               ; preds = %28, %23
  br label %31

31:                                               ; preds = %30, %19
  %32 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @readSecret(i8* %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31
  store i32 -1, i32* %1, align 4
  br label %97

40:                                               ; preds = %35
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prefork_server, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prefork_server, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 100
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prefork_server, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 100, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prefork_server, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 1000
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prefork_server, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 1000, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %40
  br label %61

61:                                               ; preds = %60, %0
  %62 = load i32, i32* @s_defaultUid, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @s_defaultGid, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %64, %61
  %68 = call %struct.passwd* @getpwnam(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.passwd* %68, %struct.passwd** %3, align 8
  %69 = load %struct.passwd*, %struct.passwd** %3, align 8
  %70 = icmp ne %struct.passwd* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = load i32, i32* @s_defaultUid, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load %struct.passwd*, %struct.passwd** %3, align 8
  %76 = getelementptr inbounds %struct.passwd, %struct.passwd* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* @s_defaultUid, align 4
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* @s_defaultGid, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load %struct.passwd*, %struct.passwd** %3, align 8
  %83 = getelementptr inbounds %struct.passwd, %struct.passwd* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* @s_defaultGid, align 4
  br label %85

85:                                               ; preds = %81, %78
  br label %95

86:                                               ; preds = %67
  %87 = load i32, i32* @s_defaultUid, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  store i32 10000, i32* @s_defaultUid, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i32, i32* @s_defaultGid, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  store i32 10000, i32* @s_defaultGid, align 4
  br label %94

94:                                               ; preds = %93, %90
  br label %95

95:                                               ; preds = %94, %85
  br label %96

96:                                               ; preds = %95, %64
  store i32 0, i32* %1, align 4
  br label %97

97:                                               ; preds = %96, %39
  %98 = load i32, i32* %1, align 4
  ret i32 %98
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @readSecret(i8*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
