; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_files_uid.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_files_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i32 }

@web_files_uid.web_owner = internal global i8* null, align 8
@web_files_uid.owner_uid = internal global i32 0, align 4
@CONFIG_SECTION_WEB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"web files owner\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"User '%s' is not present. Ignoring option.\00", align 1
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Web files owner set to %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @web_files_uid() #0 {
  %1 = alloca %struct.passwd*, align 8
  %2 = load i8*, i8** @web_files_uid.web_owner, align 8
  %3 = icmp ne i8* %2, null
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i64 @unlikely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %56

8:                                                ; preds = %0
  %9 = call i32 (...) @geteuid()
  %10 = call %struct.passwd* @getpwuid(i32 %9)
  store %struct.passwd* %10, %struct.passwd** %1, align 8
  %11 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %12 = load %struct.passwd*, %struct.passwd** %1, align 8
  %13 = icmp ne %struct.passwd* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load %struct.passwd*, %struct.passwd** %1, align 8
  %16 = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.passwd*, %struct.passwd** %1, align 8
  %21 = getelementptr inbounds %struct.passwd, %struct.passwd* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  br label %24

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i8* [ %22, %19 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %23 ]
  br label %27

26:                                               ; preds = %8
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %26 ]
  %29 = call i8* @config_get(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i8* %29, i8** @web_files_uid.web_owner, align 8
  %30 = load i8*, i8** @web_files_uid.web_owner, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i8*, i8** @web_files_uid.web_owner, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32, %27
  %37 = call i32 (...) @geteuid()
  store i32 %37, i32* @web_files_uid.owner_uid, align 4
  br label %55

38:                                               ; preds = %32
  %39 = load i8*, i8** @web_files_uid.web_owner, align 8
  %40 = call %struct.passwd* @getpwnam(i8* %39)
  store %struct.passwd* %40, %struct.passwd** %1, align 8
  %41 = load %struct.passwd*, %struct.passwd** %1, align 8
  %42 = icmp ne %struct.passwd* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** @web_files_uid.web_owner, align 8
  %45 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = call i32 (...) @geteuid()
  store i32 %46, i32* @web_files_uid.owner_uid, align 4
  br label %54

47:                                               ; preds = %38
  %48 = load i32, i32* @D_WEB_CLIENT, align 4
  %49 = load i8*, i8** @web_files_uid.web_owner, align 8
  %50 = call i32 @debug(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load %struct.passwd*, %struct.passwd** %1, align 8
  %52 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* @web_files_uid.owner_uid, align 4
  br label %54

54:                                               ; preds = %47, %43
  br label %55

55:                                               ; preds = %54, %36
  br label %56

56:                                               ; preds = %55, %0
  %57 = load i32, i32* @web_files_uid.owner_uid, align 4
  ret i32 %57
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i8* @config_get(i32, i8*, i8*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @debug(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
