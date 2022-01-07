; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_auth_token_basic_test.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_auth_token_basic_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_context = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@AUTH_TOKEN_HMAC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @auth_token_basic_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_token_basic_test(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_context*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.test_context*
  store %struct.test_context* %6, %struct.test_context** %3, align 8
  %7 = load %struct.test_context*, %struct.test_context** %3, align 8
  %8 = getelementptr inbounds %struct.test_context, %struct.test_context* %7, i32 0, i32 2
  %9 = load %struct.test_context*, %struct.test_context** %3, align 8
  %10 = getelementptr inbounds %struct.test_context, %struct.test_context* %9, i32 0, i32 1
  %11 = call i32 @generate_auth_token(%struct.TYPE_5__* %8, %struct.TYPE_6__* %10)
  %12 = load %struct.test_context*, %struct.test_context** %3, align 8
  %13 = getelementptr inbounds %struct.test_context, %struct.test_context* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.test_context*, %struct.test_context** %3, align 8
  %17 = getelementptr inbounds %struct.test_context, %struct.test_context* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strcpy(i32 %15, i32 %19)
  %21 = load %struct.test_context*, %struct.test_context** %3, align 8
  %22 = getelementptr inbounds %struct.test_context, %struct.test_context* %21, i32 0, i32 2
  %23 = load %struct.test_context*, %struct.test_context** %3, align 8
  %24 = getelementptr inbounds %struct.test_context, %struct.test_context* %23, i32 0, i32 1
  %25 = load %struct.test_context*, %struct.test_context** %3, align 8
  %26 = getelementptr inbounds %struct.test_context, %struct.test_context* %25, i32 0, i32 0
  %27 = call i32 @verify_auth_token(%struct.TYPE_5__* %22, %struct.TYPE_6__* %24, i32* %26)
  %28 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %29 = call i32 @assert_int_equal(i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @generate_auth_token(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @assert_int_equal(i32, i32) #1

declare dso_local i32 @verify_auth_token(%struct.TYPE_5__*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
