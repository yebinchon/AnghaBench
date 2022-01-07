; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_auth_token_test_key_load.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_auth_token_test_key_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_context = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@INLINE_FILE_TAG = common dso_local global i32 0, align 4
@zeroinline = common dso_local global i32 0, align 4
@now0key0 = common dso_local global i32 0, align 4
@allx01inline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @auth_token_test_key_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_token_test_key_load(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_context*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.test_context*
  store %struct.test_context* %6, %struct.test_context** %3, align 8
  %7 = load %struct.test_context*, %struct.test_context** %3, align 8
  %8 = getelementptr inbounds %struct.test_context, %struct.test_context* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call i32 @free_key_ctx(i32* %10)
  %12 = load %struct.test_context*, %struct.test_context** %3, align 8
  %13 = getelementptr inbounds %struct.test_context, %struct.test_context* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* @INLINE_FILE_TAG, align 4
  %17 = load i32, i32* @zeroinline, align 4
  %18 = call i32 @auth_token_init_secret(i32* %15, i32 %16, i32 %17)
  %19 = load %struct.test_context*, %struct.test_context** %3, align 8
  %20 = getelementptr inbounds %struct.test_context, %struct.test_context* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @now0key0, align 4
  %24 = call i32 @strcpy(i32 %22, i32 %23)
  %25 = load %struct.test_context*, %struct.test_context** %3, align 8
  %26 = getelementptr inbounds %struct.test_context, %struct.test_context* %25, i32 0, i32 2
  %27 = load %struct.test_context*, %struct.test_context** %3, align 8
  %28 = getelementptr inbounds %struct.test_context, %struct.test_context* %27, i32 0, i32 1
  %29 = load %struct.test_context*, %struct.test_context** %3, align 8
  %30 = getelementptr inbounds %struct.test_context, %struct.test_context* %29, i32 0, i32 0
  %31 = call i32 @verify_auth_token(%struct.TYPE_5__* %26, %struct.TYPE_6__* %28, i32* %30)
  %32 = call i32 @assert_true(i32 %31)
  %33 = load %struct.test_context*, %struct.test_context** %3, align 8
  %34 = getelementptr inbounds %struct.test_context, %struct.test_context* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @free_key_ctx(i32* %36)
  %38 = load %struct.test_context*, %struct.test_context** %3, align 8
  %39 = getelementptr inbounds %struct.test_context, %struct.test_context* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* @INLINE_FILE_TAG, align 4
  %43 = load i32, i32* @allx01inline, align 4
  %44 = call i32 @auth_token_init_secret(i32* %41, i32 %42, i32 %43)
  %45 = load %struct.test_context*, %struct.test_context** %3, align 8
  %46 = getelementptr inbounds %struct.test_context, %struct.test_context* %45, i32 0, i32 2
  %47 = load %struct.test_context*, %struct.test_context** %3, align 8
  %48 = getelementptr inbounds %struct.test_context, %struct.test_context* %47, i32 0, i32 1
  %49 = load %struct.test_context*, %struct.test_context** %3, align 8
  %50 = getelementptr inbounds %struct.test_context, %struct.test_context* %49, i32 0, i32 0
  %51 = call i32 @verify_auth_token(%struct.TYPE_5__* %46, %struct.TYPE_6__* %48, i32* %50)
  %52 = call i32 @assert_false(i32 %51)
  ret void
}

declare dso_local i32 @free_key_ctx(i32*) #1

declare dso_local i32 @auth_token_init_secret(i32*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @assert_true(i32) #1

declare dso_local i32 @verify_auth_token(%struct.TYPE_5__*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @assert_false(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
