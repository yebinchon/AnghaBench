; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_auth_token_test_known_keys.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_auth_token_test_known_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_context = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@now = common dso_local global i64 0, align 8
@now0key0 = common dso_local global i32 0, align 4
@AUTH_TOKEN_HMAC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @auth_token_test_known_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_token_test_known_keys(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_context*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.test_context*
  store %struct.test_context* %6, %struct.test_context** %3, align 8
  store i64 0, i64* @now, align 8
  %7 = load i32, i32* @now0key0, align 4
  %8 = call i32 @strdup(i32 %7)
  %9 = load %struct.test_context*, %struct.test_context** %3, align 8
  %10 = getelementptr inbounds %struct.test_context, %struct.test_context* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.test_context*, %struct.test_context** %3, align 8
  %13 = getelementptr inbounds %struct.test_context, %struct.test_context* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @zerohmac(i32 %15)
  %17 = load %struct.test_context*, %struct.test_context** %3, align 8
  %18 = getelementptr inbounds %struct.test_context, %struct.test_context* %17, i32 0, i32 2
  %19 = load %struct.test_context*, %struct.test_context** %3, align 8
  %20 = getelementptr inbounds %struct.test_context, %struct.test_context* %19, i32 0, i32 1
  %21 = call i32 @generate_auth_token(%struct.TYPE_5__* %18, %struct.TYPE_6__* %20)
  %22 = load i32, i32* @now0key0, align 4
  %23 = load %struct.test_context*, %struct.test_context** %3, align 8
  %24 = getelementptr inbounds %struct.test_context, %struct.test_context* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @assert_string_equal(i32 %22, i32 %26)
  %28 = load %struct.test_context*, %struct.test_context** %3, align 8
  %29 = getelementptr inbounds %struct.test_context, %struct.test_context* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.test_context*, %struct.test_context** %3, align 8
  %33 = getelementptr inbounds %struct.test_context, %struct.test_context* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcpy(i32 %31, i32 %35)
  %37 = load %struct.test_context*, %struct.test_context** %3, align 8
  %38 = getelementptr inbounds %struct.test_context, %struct.test_context* %37, i32 0, i32 2
  %39 = load %struct.test_context*, %struct.test_context** %3, align 8
  %40 = getelementptr inbounds %struct.test_context, %struct.test_context* %39, i32 0, i32 1
  %41 = load %struct.test_context*, %struct.test_context** %3, align 8
  %42 = getelementptr inbounds %struct.test_context, %struct.test_context* %41, i32 0, i32 0
  %43 = call i32 @verify_auth_token(%struct.TYPE_5__* %38, %struct.TYPE_6__* %40, i32* %42)
  %44 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %45 = call i32 @assert_int_equal(i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @zerohmac(i32) #1

declare dso_local i32 @generate_auth_token(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @assert_string_equal(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @assert_int_equal(i32, i32) #1

declare dso_local i32 @verify_auth_token(%struct.TYPE_5__*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
