; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_auth_token_test_empty_user.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_auth_token_test_empty_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_context = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i32 }

@now = common dso_local global i32 0, align 4
@AUTH_TOKEN_HMAC_OK = common dso_local global i32 0, align 4
@AUTH_TOKEN_EXPIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"test user name\00", align 1
@AUTH_TOKEN_VALID_EMPTYUSER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @auth_token_test_empty_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_token_test_empty_user(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_context*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.test_context*
  store %struct.test_context* %6, %struct.test_context** %3, align 8
  %7 = load %struct.test_context*, %struct.test_context** %3, align 8
  %8 = getelementptr inbounds %struct.test_context, %struct.test_context* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @CLEAR(i32 %10)
  store i32 0, i32* @now, align 4
  %12 = load %struct.test_context*, %struct.test_context** %3, align 8
  %13 = getelementptr inbounds %struct.test_context, %struct.test_context* %12, i32 0, i32 2
  %14 = load %struct.test_context*, %struct.test_context** %3, align 8
  %15 = getelementptr inbounds %struct.test_context, %struct.test_context* %14, i32 0, i32 1
  %16 = call i32 @generate_auth_token(%struct.TYPE_5__* %13, %struct.TYPE_6__* %15)
  %17 = load %struct.test_context*, %struct.test_context** %3, align 8
  %18 = getelementptr inbounds %struct.test_context, %struct.test_context* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.test_context*, %struct.test_context** %3, align 8
  %22 = getelementptr inbounds %struct.test_context, %struct.test_context* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcpy(i32 %20, i8* %24)
  %26 = load %struct.test_context*, %struct.test_context** %3, align 8
  %27 = getelementptr inbounds %struct.test_context, %struct.test_context* %26, i32 0, i32 2
  %28 = load %struct.test_context*, %struct.test_context** %3, align 8
  %29 = getelementptr inbounds %struct.test_context, %struct.test_context* %28, i32 0, i32 1
  %30 = load %struct.test_context*, %struct.test_context** %3, align 8
  %31 = getelementptr inbounds %struct.test_context, %struct.test_context* %30, i32 0, i32 0
  %32 = call i32 @verify_auth_token(%struct.TYPE_5__* %27, %struct.TYPE_6__* %29, i32* %31)
  %33 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %34 = call i32 @assert_int_equal(i32 %32, i32 %33)
  store i32 100000, i32* @now, align 4
  %35 = load %struct.test_context*, %struct.test_context** %3, align 8
  %36 = getelementptr inbounds %struct.test_context, %struct.test_context* %35, i32 0, i32 2
  %37 = load %struct.test_context*, %struct.test_context** %3, align 8
  %38 = getelementptr inbounds %struct.test_context, %struct.test_context* %37, i32 0, i32 1
  %39 = load %struct.test_context*, %struct.test_context** %3, align 8
  %40 = getelementptr inbounds %struct.test_context, %struct.test_context* %39, i32 0, i32 0
  %41 = call i32 @verify_auth_token(%struct.TYPE_5__* %36, %struct.TYPE_6__* %38, i32* %40)
  %42 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %43 = load i32, i32* @AUTH_TOKEN_EXPIRED, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @assert_int_equal(i32 %41, i32 %44)
  %46 = load %struct.test_context*, %struct.test_context** %3, align 8
  %47 = getelementptr inbounds %struct.test_context, %struct.test_context* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcpy(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @now, align 4
  %51 = load %struct.test_context*, %struct.test_context** %3, align 8
  %52 = getelementptr inbounds %struct.test_context, %struct.test_context* %51, i32 0, i32 2
  %53 = load %struct.test_context*, %struct.test_context** %3, align 8
  %54 = getelementptr inbounds %struct.test_context, %struct.test_context* %53, i32 0, i32 1
  %55 = load %struct.test_context*, %struct.test_context** %3, align 8
  %56 = getelementptr inbounds %struct.test_context, %struct.test_context* %55, i32 0, i32 0
  %57 = call i32 @verify_auth_token(%struct.TYPE_5__* %52, %struct.TYPE_6__* %54, i32* %56)
  %58 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %59 = load i32, i32* @AUTH_TOKEN_VALID_EMPTYUSER, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @assert_int_equal(i32 %57, i32 %60)
  %62 = load %struct.test_context*, %struct.test_context** %3, align 8
  %63 = getelementptr inbounds %struct.test_context, %struct.test_context* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @strcpy(i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 100000, i32* @now, align 4
  %67 = load %struct.test_context*, %struct.test_context** %3, align 8
  %68 = getelementptr inbounds %struct.test_context, %struct.test_context* %67, i32 0, i32 2
  %69 = load %struct.test_context*, %struct.test_context** %3, align 8
  %70 = getelementptr inbounds %struct.test_context, %struct.test_context* %69, i32 0, i32 1
  %71 = load %struct.test_context*, %struct.test_context** %3, align 8
  %72 = getelementptr inbounds %struct.test_context, %struct.test_context* %71, i32 0, i32 0
  %73 = call i32 @verify_auth_token(%struct.TYPE_5__* %68, %struct.TYPE_6__* %70, i32* %72)
  %74 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %75 = load i32, i32* @AUTH_TOKEN_EXPIRED, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @AUTH_TOKEN_VALID_EMPTYUSER, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @assert_int_equal(i32 %73, i32 %78)
  %80 = load %struct.test_context*, %struct.test_context** %3, align 8
  %81 = getelementptr inbounds %struct.test_context, %struct.test_context* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @zerohmac(i32 %83)
  %85 = load %struct.test_context*, %struct.test_context** %3, align 8
  %86 = getelementptr inbounds %struct.test_context, %struct.test_context* %85, i32 0, i32 2
  %87 = load %struct.test_context*, %struct.test_context** %3, align 8
  %88 = getelementptr inbounds %struct.test_context, %struct.test_context* %87, i32 0, i32 1
  %89 = load %struct.test_context*, %struct.test_context** %3, align 8
  %90 = getelementptr inbounds %struct.test_context, %struct.test_context* %89, i32 0, i32 0
  %91 = call i32 @verify_auth_token(%struct.TYPE_5__* %86, %struct.TYPE_6__* %88, i32* %90)
  %92 = call i32 @assert_int_equal(i32 %91, i32 0)
  ret void
}

declare dso_local i32 @CLEAR(i32) #1

declare dso_local i32 @generate_auth_token(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @assert_int_equal(i32, i32) #1

declare dso_local i32 @verify_auth_token(%struct.TYPE_5__*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @zerohmac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
