; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth.c_auth_failed.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth.c_auth_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8*, i8* }

@ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION = common dso_local global i32 0, align 4
@STATUS_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"authentication failed for user \22%s\22: host rejected\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\22trust\22 authentication failed for user \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Ident authentication failed for user \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Peer authentication failed for user \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"password authentication failed for user \22%s\22\00", align 1
@ERRCODE_INVALID_PASSWORD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"GSSAPI authentication failed for user \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"SSPI authentication failed for user \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"PAM authentication failed for user \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"BSD authentication failed for user \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"LDAP authentication failed for user \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"certificate authentication failed for user \22%s\22\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"RADIUS authentication failed for user \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"authentication failed for user \22%s\22: invalid authentication method\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Connection matched pg_hba.conf line %d: \22%s\22\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%s\0A%s\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i8*)* @auth_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_failed(%struct.TYPE_5__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @STATUS_EOF, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @proc_exit(i32 0)
  br label %16

16:                                               ; preds = %14, %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %47 [
    i32 131, label %22
    i32 138, label %22
    i32 128, label %24
    i32 139, label %26
    i32 133, label %28
    i32 134, label %30
    i32 136, label %30
    i32 130, label %30
    i32 140, label %33
    i32 129, label %35
    i32 135, label %37
    i32 142, label %39
    i32 137, label %41
    i32 141, label %43
    i32 132, label %45
  ]

22:                                               ; preds = %16, %16
  %23 = call i8* @gettext_noop(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %7, align 8
  br label %49

24:                                               ; preds = %16
  %25 = call i8* @gettext_noop(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %7, align 8
  br label %49

26:                                               ; preds = %16
  %27 = call i8* @gettext_noop(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i8* %27, i8** %7, align 8
  br label %49

28:                                               ; preds = %16
  %29 = call i8* @gettext_noop(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i8* %29, i8** %7, align 8
  br label %49

30:                                               ; preds = %16, %16, %16
  %31 = call i8* @gettext_noop(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  store i8* %31, i8** %7, align 8
  %32 = load i32, i32* @ERRCODE_INVALID_PASSWORD, align 4
  store i32 %32, i32* %9, align 4
  br label %49

33:                                               ; preds = %16
  %34 = call i8* @gettext_noop(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  store i8* %34, i8** %7, align 8
  br label %49

35:                                               ; preds = %16
  %36 = call i8* @gettext_noop(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  store i8* %36, i8** %7, align 8
  br label %49

37:                                               ; preds = %16
  %38 = call i8* @gettext_noop(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  store i8* %38, i8** %7, align 8
  br label %49

39:                                               ; preds = %16
  %40 = call i8* @gettext_noop(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  store i8* %40, i8** %7, align 8
  br label %49

41:                                               ; preds = %16
  %42 = call i8* @gettext_noop(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  store i8* %42, i8** %7, align 8
  br label %49

43:                                               ; preds = %16
  %44 = call i8* @gettext_noop(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  store i8* %44, i8** %7, align 8
  br label %49

45:                                               ; preds = %16
  %46 = call i8* @gettext_noop(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  store i8* %46, i8** %7, align 8
  br label %49

47:                                               ; preds = %16
  %48 = call i8* @gettext_noop(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i64 0, i64 0))
  store i8* %48, i8** %7, align 8
  br label %49

49:                                               ; preds = %47, %45, %43, %41, %39, %37, %35, %33, %30, %28, %26, %24, %22
  %50 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @psprintf(i8* %50, i8* %55, i8* %60)
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %49
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i8* @psprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %65, i8* %66)
  store i8* %67, i8** %6, align 8
  br label %70

68:                                               ; preds = %49
  %69 = load i8*, i8** %8, align 8
  store i8* %69, i8** %6, align 8
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32, i32* @FATAL, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @errcode(i32 %72)
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @errmsg(i8* %74, i32 %77)
  %79 = load i8*, i8** %6, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @errdetail_log(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %82)
  br label %85

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %81
  %86 = phi i32 [ %83, %81 ], [ 0, %84 ]
  %87 = call i32 @ereport(i32 %71, i32 %86)
  ret void
}

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i8* @gettext_noop(i8*) #1

declare dso_local i8* @psprintf(i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @errdetail_log(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
