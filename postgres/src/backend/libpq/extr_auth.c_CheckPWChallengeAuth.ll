; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth.c_CheckPWChallengeAuth.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth.c_CheckPWChallengeAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }

@uaSCRAM = common dso_local global i64 0, align 8
@uaMD5 = common dso_local global i64 0, align 8
@Password_encryption = common dso_local global i64 0, align 8
@PASSWORD_TYPE_MD5 = common dso_local global i64 0, align 8
@STATUS_OK = common dso_local global i32 0, align 4
@STATUS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8**)* @CheckPWChallengeAuth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckPWChallengeAuth(%struct.TYPE_7__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @uaSCRAM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @uaMD5, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %16, %2
  %25 = phi i1 [ true, %2 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = call i8* @get_role_password(i32 %30, i8** %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  %36 = load i64, i64* @Password_encryption, align 8
  store i64 %36, i64* %8, align 8
  br label %40

37:                                               ; preds = %24
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @get_password_type(i8* %38)
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %37, %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @uaMD5, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @PASSWORD_TYPE_MD5, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = call i32 @CheckMD5Auth(%struct.TYPE_7__* %53, i8* %54, i8** %55)
  store i32 %56, i32* %6, align 4
  br label %62

57:                                               ; preds = %48, %40
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i8**, i8*** %5, align 8
  %61 = call i32 @CheckSCRAMAuth(%struct.TYPE_7__* %58, i8* %59, i8** %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @pfree(i8* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @STATUS_OK, align 4
  %74 = icmp ne i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @Assert(i32 %75)
  %77 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %77, i32* %3, align 4
  br label %80

78:                                               ; preds = %68
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %71
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @get_role_password(i32, i8**) #1

declare dso_local i64 @get_password_type(i8*) #1

declare dso_local i32 @CheckMD5Auth(%struct.TYPE_7__*, i8*, i8**) #1

declare dso_local i32 @CheckSCRAMAuth(%struct.TYPE_7__*, i8*, i8**) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
