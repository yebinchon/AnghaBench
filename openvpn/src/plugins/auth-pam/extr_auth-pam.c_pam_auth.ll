; ModuleID = '/home/carl/AnghaBench/openvpn/src/plugins/auth-pam/extr_auth-pam.c_pam_auth.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/plugins/auth-pam/extr_auth-pam.c_pam_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_pass = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.pam_conv = type { i8*, i32 }

@PAM_SUCCESS = common dso_local global i32 0, align 4
@my_conv = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"AUTH-PAM: BACKGROUND: user '%s' failed to authenticate: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.user_pass*)* @pam_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pam_auth(i8* %0, %struct.user_pass* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.user_pass*, align 8
  %5 = alloca %struct.pam_conv, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.user_pass* %1, %struct.user_pass** %4, align 8
  store i32* null, i32** %6, align 8
  %10 = load i32, i32* @PAM_SUCCESS, align 4
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %12 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %17 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br label %22

22:                                               ; preds = %15, %2
  %23 = phi i1 [ false, %2 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @my_conv, align 4
  %26 = getelementptr inbounds %struct.pam_conv, %struct.pam_conv* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %28 = bitcast %struct.user_pass* %27 to i8*
  %29 = getelementptr inbounds %struct.pam_conv, %struct.pam_conv* %5, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %38

34:                                               ; preds = %22
  %35 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %36 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  br label %38

38:                                               ; preds = %34, %33
  %39 = phi i8* [ null, %33 ], [ %37, %34 ]
  %40 = call i32 @pam_start(i8* %30, i8* %39, %struct.pam_conv* %5, i32** %6)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PAM_SUCCESS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %38
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @pam_authenticate(i32* %45, i32 0)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @PAM_SUCCESS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @pam_acct_mgmt(i32* %51, i32 0)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PAM_SUCCESS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %53
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @stderr, align 4
  %63 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %64 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i8* @pam_strerror(i32* %66, i32 %67)
  %69 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %65, i8* %68)
  br label %70

70:                                               ; preds = %61, %58
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @pam_end(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %38
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local i32 @pam_start(i8*, i8*, %struct.pam_conv*, i32**) #1

declare dso_local i32 @pam_authenticate(i32*, i32) #1

declare dso_local i32 @pam_acct_mgmt(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @pam_strerror(i32*, i32) #1

declare dso_local i32 @pam_end(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
