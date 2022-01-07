; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_files_gid.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_files_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8*, i32 }

@web_files_gid.web_group = internal global i8* null, align 8
@web_files_gid.owner_gid = internal global i32 0, align 4
@CONFIG_SECTION_WEB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"web files group\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Group '%s' is not present. Ignoring option.\00", align 1
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Web files group set to %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @web_files_gid() #0 {
  %1 = alloca %struct.group*, align 8
  %2 = load i8*, i8** @web_files_gid.web_group, align 8
  %3 = icmp ne i8* %2, null
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i64 @unlikely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %56

8:                                                ; preds = %0
  %9 = call i32 (...) @getegid()
  %10 = call %struct.group* @getgrgid(i32 %9)
  store %struct.group* %10, %struct.group** %1, align 8
  %11 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %12 = load %struct.group*, %struct.group** %1, align 8
  %13 = icmp ne %struct.group* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load %struct.group*, %struct.group** %1, align 8
  %16 = getelementptr inbounds %struct.group, %struct.group* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.group*, %struct.group** %1, align 8
  %21 = getelementptr inbounds %struct.group, %struct.group* %20, i32 0, i32 0
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
  store i8* %29, i8** @web_files_gid.web_group, align 8
  %30 = load i8*, i8** @web_files_gid.web_group, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i8*, i8** @web_files_gid.web_group, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32, %27
  %37 = call i32 (...) @getegid()
  store i32 %37, i32* @web_files_gid.owner_gid, align 4
  br label %55

38:                                               ; preds = %32
  %39 = load i8*, i8** @web_files_gid.web_group, align 8
  %40 = call %struct.group* @getgrnam(i8* %39)
  store %struct.group* %40, %struct.group** %1, align 8
  %41 = load %struct.group*, %struct.group** %1, align 8
  %42 = icmp ne %struct.group* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** @web_files_gid.web_group, align 8
  %45 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = call i32 (...) @getegid()
  store i32 %46, i32* @web_files_gid.owner_gid, align 4
  br label %54

47:                                               ; preds = %38
  %48 = load i32, i32* @D_WEB_CLIENT, align 4
  %49 = load i8*, i8** @web_files_gid.web_group, align 8
  %50 = call i32 @debug(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load %struct.group*, %struct.group** %1, align 8
  %52 = getelementptr inbounds %struct.group, %struct.group* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* @web_files_gid.owner_gid, align 4
  br label %54

54:                                               ; preds = %47, %43
  br label %55

55:                                               ; preds = %54, %36
  br label %56

56:                                               ; preds = %55, %0
  %57 = load i32, i32* @web_files_gid.owner_gid, align 4
  ret i32 %57
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local i32 @getegid(...) #1

declare dso_local i8* @config_get(i32, i8*, i8*) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @debug(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
