; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_unit_test.c_check_strdupz_path_subpath.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_unit_test.c_check_strdupz_path_subpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strdupz_path_subpath_checks = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"/etc/netdata\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"/etc/netdata///\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"health.d\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"/etc/netdata/health.d\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"///health.d\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"./health.d\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"/health.d\00", align 1
@__const.check_strdupz_path_subpath.checks = private unnamed_addr constant [10 x %struct.strdupz_path_subpath_checks] [%struct.strdupz_path_subpath_checks { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0) }, %struct.strdupz_path_subpath_checks { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }, %struct.strdupz_path_subpath_checks { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0) }, %struct.strdupz_path_subpath_checks { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0) }, %struct.strdupz_path_subpath_checks { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0) }, %struct.strdupz_path_subpath_checks { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0) }, %struct.strdupz_path_subpath_checks { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0) }, %struct.strdupz_path_subpath_checks { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0) }, %struct.strdupz_path_subpath_checks { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0) }, %struct.strdupz_path_subpath_checks zeroinitializer], align 16
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"strdupz_path_subpath(\22%s\22, \22%s\22) = \22%s\22: \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_strdupz_path_subpath() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x %struct.strdupz_path_subpath_checks], align 16
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = bitcast [10 x %struct.strdupz_path_subpath_checks]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([10 x %struct.strdupz_path_subpath_checks]* @__const.check_strdupz_path_subpath.checks to i8*), i64 240, i1 false)
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %54, %0
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds [10 x %struct.strdupz_path_subpath_checks], [10 x %struct.strdupz_path_subpath_checks]* %2, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.strdupz_path_subpath_checks, %struct.strdupz_path_subpath_checks* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %57

12:                                               ; preds = %6
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds [10 x %struct.strdupz_path_subpath_checks], [10 x %struct.strdupz_path_subpath_checks]* %2, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.strdupz_path_subpath_checks, %struct.strdupz_path_subpath_checks* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds [10 x %struct.strdupz_path_subpath_checks], [10 x %struct.strdupz_path_subpath_checks]* %2, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.strdupz_path_subpath_checks, %struct.strdupz_path_subpath_checks* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @strdupz_path_subpath(i8* %16, i8* %20)
  store i8* %21, i8** %4, align 8
  %22 = load i32, i32* @stderr, align 4
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds [10 x %struct.strdupz_path_subpath_checks], [10 x %struct.strdupz_path_subpath_checks]* %2, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.strdupz_path_subpath_checks, %struct.strdupz_path_subpath_checks* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds [10 x %struct.strdupz_path_subpath_checks], [10 x %struct.strdupz_path_subpath_checks]* %2, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.strdupz_path_subpath_checks, %struct.strdupz_path_subpath_checks* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8* %26, i8* %30, i8* %31)
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %12
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds [10 x %struct.strdupz_path_subpath_checks], [10 x %struct.strdupz_path_subpath_checks]* %2, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.strdupz_path_subpath_checks, %struct.strdupz_path_subpath_checks* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strcmp(i8* %36, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35, %12
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @freez(i8* %44)
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %58

48:                                               ; preds = %35
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @freez(i8* %49)
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %3, align 8
  br label %6

57:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strdupz_path_subpath(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @freez(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
