; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_setUID_LVE.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_setUID_LVE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i32 }

@s_lve = common dso_local global i64 0, align 8
@fp_lve_jail = common dso_local global i64 0, align 8
@s_enable_lve = common dso_local global i64 0, align 8
@LSAPI_CAGEFS_NO_SUEXEC = common dso_local global i64 0, align 8
@s_defaultUid = common dso_local global i32 0, align 4
@s_defaultGid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"LSAPI: setgid()\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"LSAPI: initgroups()\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"LSAPI: setgroups()\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"LSAPI: chroot()\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"LSAPI: setuid()\00", align 1
@s_enable_core_dump = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i8*)* @setUID_LVE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setUID_LVE(i32* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.passwd*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.passwd* @getpwuid(i32 %12)
  store %struct.passwd* %13, %struct.passwd** %11, align 8
  %14 = load i64, i64* @s_lve, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @lsapi_enterLVE(i32* %17, i32 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %113

22:                                               ; preds = %16
  %23 = load %struct.passwd*, %struct.passwd** %11, align 8
  %24 = icmp ne %struct.passwd* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %22
  %26 = load i64, i64* @fp_lve_jail, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.passwd*, %struct.passwd** %11, align 8
  %32 = call i32 @lsapi_jailLVE(i32* %29, i32 %30, %struct.passwd* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  br label %113

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i64, i64* @s_enable_lve, align 8
  %41 = load i64, i64* @LSAPI_CAGEFS_NO_SUEXEC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* @s_defaultUid, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i64, i64* @s_defaultGid, align 8
  store i64 %45, i64* %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call %struct.passwd* @getpwuid(i32 %46)
  store %struct.passwd* %47, %struct.passwd** %11, align 8
  br label %48

48:                                               ; preds = %43, %39, %36
  br label %49

49:                                               ; preds = %48, %25, %22
  br label %50

50:                                               ; preds = %49, %4
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @setgid(i64 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @LSAPI_perror_r(i32* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 -1, i32* %5, align 4
  br label %113

58:                                               ; preds = %50
  %59 = load %struct.passwd*, %struct.passwd** %11, align 8
  %60 = icmp ne %struct.passwd* %59, null
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load %struct.passwd*, %struct.passwd** %11, align 8
  %63 = getelementptr inbounds %struct.passwd, %struct.passwd* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load %struct.passwd*, %struct.passwd** %11, align 8
  %69 = getelementptr inbounds %struct.passwd, %struct.passwd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @initgroups(i32 %70, i64 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @LSAPI_perror_r(i32* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32 -1, i32* %5, align 4
  br label %113

78:                                               ; preds = %67
  br label %87

79:                                               ; preds = %61, %58
  %80 = call i32 @setgroups(i32 1, i64* %8)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @LSAPI_perror_r(i32* %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* null)
  br label %86

86:                                               ; preds = %83, %79
  br label %87

87:                                               ; preds = %86, %78
  %88 = load i8*, i8** %9, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @chroot(i8* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @LSAPI_perror_r(i32* %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32 -1, i32* %5, align 4
  br label %113

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %87
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @setuid(i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @LSAPI_perror_r(i32* %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32 -1, i32* %5, align 4
  br label %113

107:                                              ; preds = %99
  %108 = load i64, i64* @s_enable_core_dump, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 (...) @lsapi_enable_core_dump()
  br label %112

112:                                              ; preds = %110, %107
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %104, %95, %75, %55, %35, %21
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @lsapi_enterLVE(i32*, i32) #1

declare dso_local i32 @lsapi_jailLVE(i32*, i32, %struct.passwd*) #1

declare dso_local i32 @setgid(i64) #1

declare dso_local i32 @LSAPI_perror_r(i32*, i8*, i32*) #1

declare dso_local i32 @initgroups(i32, i64) #1

declare dso_local i32 @setgroups(i32, i64*) #1

declare dso_local i32 @chroot(i8*) #1

declare dso_local i32 @setuid(i32) #1

declare dso_local i32 @lsapi_enable_core_dump(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
