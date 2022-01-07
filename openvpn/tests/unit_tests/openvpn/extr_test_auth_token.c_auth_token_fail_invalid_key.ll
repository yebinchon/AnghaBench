; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_auth_token_fail_invalid_key.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_auth_token_fail_invalid_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_context = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.key = type { i32 }

@AUTH_TOKEN_HMAC_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"TEST\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @auth_token_fail_invalid_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_token_fail_invalid_key(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_context*, align 8
  %4 = alloca %struct.key, align 4
  store i8** %0, i8*** %2, align 8
  %5 = load i8**, i8*** %2, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.test_context*
  store %struct.test_context* %7, %struct.test_context** %3, align 8
  %8 = load %struct.test_context*, %struct.test_context** %3, align 8
  %9 = getelementptr inbounds %struct.test_context, %struct.test_context* %8, i32 0, i32 2
  %10 = load %struct.test_context*, %struct.test_context** %3, align 8
  %11 = getelementptr inbounds %struct.test_context, %struct.test_context* %10, i32 0, i32 1
  %12 = call i32 @generate_auth_token(%struct.TYPE_7__* %9, %struct.TYPE_8__* %11)
  %13 = load %struct.test_context*, %struct.test_context** %3, align 8
  %14 = getelementptr inbounds %struct.test_context, %struct.test_context* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.test_context*, %struct.test_context** %3, align 8
  %18 = getelementptr inbounds %struct.test_context, %struct.test_context* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcpy(i32 %16, i32 %20)
  %22 = load %struct.test_context*, %struct.test_context** %3, align 8
  %23 = getelementptr inbounds %struct.test_context, %struct.test_context* %22, i32 0, i32 2
  %24 = load %struct.test_context*, %struct.test_context** %3, align 8
  %25 = getelementptr inbounds %struct.test_context, %struct.test_context* %24, i32 0, i32 1
  %26 = load %struct.test_context*, %struct.test_context** %3, align 8
  %27 = getelementptr inbounds %struct.test_context, %struct.test_context* %26, i32 0, i32 0
  %28 = call i32 @verify_auth_token(%struct.TYPE_7__* %23, %struct.TYPE_8__* %25, i32* %27)
  %29 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %30 = call i32 @assert_int_equal(i32 %28, i32 %29)
  %31 = call i32 @memset(%struct.key* %4, i8 signext 49, i32 4)
  %32 = load %struct.test_context*, %struct.test_context** %3, align 8
  %33 = getelementptr inbounds %struct.test_context, %struct.test_context* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @free_key_ctx(i32* %35)
  %37 = load %struct.test_context*, %struct.test_context** %3, align 8
  %38 = getelementptr inbounds %struct.test_context, %struct.test_context* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.test_context*, %struct.test_context** %3, align 8
  %42 = getelementptr inbounds %struct.test_context, %struct.test_context* %41, i32 0, i32 3
  %43 = call i32 @init_key_ctx(i32* %40, %struct.key* %4, i32* %42, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.test_context*, %struct.test_context** %3, align 8
  %45 = getelementptr inbounds %struct.test_context, %struct.test_context* %44, i32 0, i32 2
  %46 = load %struct.test_context*, %struct.test_context** %3, align 8
  %47 = getelementptr inbounds %struct.test_context, %struct.test_context* %46, i32 0, i32 1
  %48 = load %struct.test_context*, %struct.test_context** %3, align 8
  %49 = getelementptr inbounds %struct.test_context, %struct.test_context* %48, i32 0, i32 0
  %50 = call i32 @verify_auth_token(%struct.TYPE_7__* %45, %struct.TYPE_8__* %47, i32* %49)
  %51 = call i32 @assert_int_equal(i32 %50, i32 0)
  %52 = call i32 @memset(%struct.key* %4, i8 signext 0, i32 4)
  %53 = load %struct.test_context*, %struct.test_context** %3, align 8
  %54 = getelementptr inbounds %struct.test_context, %struct.test_context* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @free_key_ctx(i32* %56)
  %58 = load %struct.test_context*, %struct.test_context** %3, align 8
  %59 = getelementptr inbounds %struct.test_context, %struct.test_context* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.test_context*, %struct.test_context** %3, align 8
  %63 = getelementptr inbounds %struct.test_context, %struct.test_context* %62, i32 0, i32 3
  %64 = call i32 @init_key_ctx(i32* %61, %struct.key* %4, i32* %63, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.test_context*, %struct.test_context** %3, align 8
  %66 = getelementptr inbounds %struct.test_context, %struct.test_context* %65, i32 0, i32 2
  %67 = load %struct.test_context*, %struct.test_context** %3, align 8
  %68 = getelementptr inbounds %struct.test_context, %struct.test_context* %67, i32 0, i32 1
  %69 = load %struct.test_context*, %struct.test_context** %3, align 8
  %70 = getelementptr inbounds %struct.test_context, %struct.test_context* %69, i32 0, i32 0
  %71 = call i32 @verify_auth_token(%struct.TYPE_7__* %66, %struct.TYPE_8__* %68, i32* %70)
  %72 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %73 = call i32 @assert_int_equal(i32 %71, i32 %72)
  ret void
}

declare dso_local i32 @generate_auth_token(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @assert_int_equal(i32, i32) #1

declare dso_local i32 @verify_auth_token(%struct.TYPE_7__*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @memset(%struct.key*, i8 signext, i32) #1

declare dso_local i32 @free_key_ctx(i32*) #1

declare dso_local i32 @init_key_ctx(i32*, %struct.key*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
