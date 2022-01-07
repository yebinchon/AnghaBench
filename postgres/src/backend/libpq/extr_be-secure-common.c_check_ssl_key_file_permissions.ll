; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-common.c_check_ssl_key_file_permissions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-secure-common.c_check_ssl_key_file_permissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }

@FATAL = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"could not access private key file \22%s\22: %m\00", align 1
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"private key file \22%s\22 is not a regular file\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"private key file \22%s\22 must be owned by the database user or root\00", align 1
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"private key file \22%s\22 has group or world access\00", align 1
@.str.4 = private unnamed_addr constant [135 x i8] c"File must have permissions u=rw (0600) or less if owned by the database user, or permissions u=rw,g=r (0640) or less if owned by root.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_ssl_key_file_permissions(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @FATAL, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @LOG, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %6, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @stat(i8* %16, %struct.stat* %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (...) @errcode_for_file_access()
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @ereport(i32 %20, i32 %23)
  store i32 0, i32* %3, align 4
  br label %89

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @S_ISREG(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = call i32 @ereport(i32 %31, i32 %35)
  store i32 0, i32* %3, align 4
  br label %89

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 (...) @geteuid()
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = call i32 @ereport(i32 %47, i32 %51)
  store i32 0, i32* %3, align 4
  br label %89

53:                                               ; preds = %42, %37
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 (...) @geteuid()
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @S_IRWXG, align 4
  %62 = load i32, i32* @S_IRWXO, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %58, %53
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @S_IWGRP, align 4
  %74 = load i32, i32* @S_IXGRP, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @S_IRWXO, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %72, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %70, %58
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %83 = call i32 @errcode(i32 %82)
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  %86 = call i32 @errdetail(i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.4, i64 0, i64 0))
  %87 = call i32 @ereport(i32 %81, i32 %86)
  store i32 0, i32* %3, align 4
  br label %89

88:                                               ; preds = %70, %66
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %80, %46, %30, %19
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @errdetail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
