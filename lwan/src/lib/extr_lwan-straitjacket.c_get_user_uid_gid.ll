; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-straitjacket.c_get_user_uid_gid.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-straitjacket.c_get_user_uid_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32 }

@_SC_GETPW_R_SIZE_MAX = common dso_local global i32 0, align 4
@NSS_BUFLEN_PASSWD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Could not allocate buffer for passwd struct\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Username not found: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Could not obtain uid/gid for user %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @get_user_uid_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_user_uid_gid(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.passwd, align 4
  %9 = alloca %struct.passwd*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = bitcast %struct.passwd* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load i32, i32* @_SC_GETPW_R_SIZE_MAX, align 4
  %15 = call i64 @sysconf(i32 %14)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @NSS_BUFLEN_PASSWD, align 8
  store i64 %19, i64* %11, align 8
  br label %20

20:                                               ; preds = %18, %3
  %21 = load i64, i64* %11, align 8
  %22 = call i8* @malloc(i64 %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 (i8*, ...) @lwan_status_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %54

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @getpwnam_r(i8* %28, %struct.passwd* %8, i8* %29, i64 %30, %struct.passwd** %9)
  store i32 %31, i32* %12, align 4
  %32 = getelementptr inbounds %struct.passwd, %struct.passwd* %8, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load %struct.passwd*, %struct.passwd** %9, align 8
  %41 = icmp ne %struct.passwd* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %54

43:                                               ; preds = %27
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 (i8*, ...) @lwan_status_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* @errno, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @lwan_status_perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %49, %46
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %42, %25
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @sysconf(i32) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @lwan_status_error(i8*, ...) #2

declare dso_local i32 @getpwnam_r(i8*, %struct.passwd*, i8*, i64, %struct.passwd**) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @lwan_status_perror(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
