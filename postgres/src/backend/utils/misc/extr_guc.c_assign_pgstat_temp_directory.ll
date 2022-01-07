; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_assign_pgstat_temp_directory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_assign_pgstat_temp_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s/global.tmp\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s/global.stat\00", align 1
@pgstat_stat_directory = common dso_local global i8* null, align 8
@pgstat_stat_tmpname = common dso_local global i8* null, align 8
@pgstat_stat_filename = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @assign_pgstat_temp_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_pgstat_temp_directory(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @ERROR, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = add nsw i64 %10, 1
  %12 = call i8* @guc_malloc(i32 %8, i64 %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add nsw i64 %18, 12
  %20 = call i8* @guc_malloc(i32 %16, i64 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = add nsw i64 %26, 13
  %28 = call i8* @guc_malloc(i32 %24, i64 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** @pgstat_stat_directory, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i8*, i8** @pgstat_stat_directory, align 8
  %36 = call i32 @free(i8* %35)
  br label %37

37:                                               ; preds = %34, %2
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** @pgstat_stat_directory, align 8
  %39 = load i8*, i8** @pgstat_stat_tmpname, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** @pgstat_stat_tmpname, align 8
  %43 = call i32 @free(i8* %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i8*, i8** %6, align 8
  store i8* %45, i8** @pgstat_stat_tmpname, align 8
  %46 = load i8*, i8** @pgstat_stat_filename, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8*, i8** @pgstat_stat_filename, align 8
  %50 = call i32 @free(i8* %49)
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i8*, i8** %7, align 8
  store i8* %52, i8** @pgstat_stat_filename, align 8
  ret void
}

declare dso_local i8* @guc_malloc(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
