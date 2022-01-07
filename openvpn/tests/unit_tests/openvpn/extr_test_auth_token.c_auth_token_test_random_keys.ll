; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_auth_token_test_random_keys.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_auth_token_test_random_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_context = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@now = common dso_local global i32 0, align 4
@random_token = common dso_local global i32 0, align 4
@INLINE_FILE_TAG = common dso_local global i32 0, align 4
@random_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @auth_token_test_random_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_token_test_random_keys(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_context*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.test_context*
  store %struct.test_context* %6, %struct.test_context** %3, align 8
  store i32 1546854044, i32* @now, align 4
  %7 = load i32, i32* @random_token, align 4
  %8 = call i32 @strdup(i32 %7)
  %9 = load %struct.test_context*, %struct.test_context** %3, align 8
  %10 = getelementptr inbounds %struct.test_context, %struct.test_context* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.test_context*, %struct.test_context** %3, align 8
  %13 = getelementptr inbounds %struct.test_context, %struct.test_context* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @free_key_ctx(i32* %15)
  %17 = load %struct.test_context*, %struct.test_context** %3, align 8
  %18 = getelementptr inbounds %struct.test_context, %struct.test_context* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* @INLINE_FILE_TAG, align 4
  %22 = load i32, i32* @random_key, align 4
  %23 = call i32 @auth_token_init_secret(i32* %20, i32 %21, i32 %22)
  %24 = load %struct.test_context*, %struct.test_context** %3, align 8
  %25 = getelementptr inbounds %struct.test_context, %struct.test_context* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @zerohmac(i32 %27)
  %29 = load %struct.test_context*, %struct.test_context** %3, align 8
  %30 = getelementptr inbounds %struct.test_context, %struct.test_context* %29, i32 0, i32 2
  %31 = load %struct.test_context*, %struct.test_context** %3, align 8
  %32 = getelementptr inbounds %struct.test_context, %struct.test_context* %31, i32 0, i32 1
  %33 = call i32 @generate_auth_token(%struct.TYPE_7__* %30, %struct.TYPE_8__* %32)
  %34 = load i32, i32* @random_token, align 4
  %35 = load %struct.test_context*, %struct.test_context** %3, align 8
  %36 = getelementptr inbounds %struct.test_context, %struct.test_context* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @assert_string_equal(i32 %34, i32 %38)
  %40 = load %struct.test_context*, %struct.test_context** %3, align 8
  %41 = getelementptr inbounds %struct.test_context, %struct.test_context* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.test_context*, %struct.test_context** %3, align 8
  %45 = getelementptr inbounds %struct.test_context, %struct.test_context* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcpy(i32 %43, i32 %47)
  %49 = load %struct.test_context*, %struct.test_context** %3, align 8
  %50 = getelementptr inbounds %struct.test_context, %struct.test_context* %49, i32 0, i32 2
  %51 = load %struct.test_context*, %struct.test_context** %3, align 8
  %52 = getelementptr inbounds %struct.test_context, %struct.test_context* %51, i32 0, i32 1
  %53 = load %struct.test_context*, %struct.test_context** %3, align 8
  %54 = getelementptr inbounds %struct.test_context, %struct.test_context* %53, i32 0, i32 0
  %55 = call i32 @verify_auth_token(%struct.TYPE_7__* %50, %struct.TYPE_8__* %52, i32* %54)
  %56 = call i32 @assert_true(i32 %55)
  ret void
}

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @free_key_ctx(i32*) #1

declare dso_local i32 @auth_token_init_secret(i32*, i32, i32) #1

declare dso_local i32 @zerohmac(i32) #1

declare dso_local i32 @generate_auth_token(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @assert_string_equal(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @assert_true(i32) #1

declare dso_local i32 @verify_auth_token(%struct.TYPE_7__*, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
