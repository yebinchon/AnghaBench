; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_sslapi_info_callback.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_sslapi_info_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info_cb_states_st = type { i32, i32 }

@info_cb_states = common dso_local global %struct.info_cb_states_st** null, align 8
@info_cb_offset = common dso_local global i64 0, align 8
@info_cb_failed = common dso_local global i32 0, align 4
@SSL_ST_CONNECT = common dso_local global i32 0, align 4
@SSL_ST_ACCEPT = common dso_local global i32 0, align 4
@info_cb_this_state = common dso_local global i64 0, align 8
@SSL_CB_LOOP = common dso_local global i32 0, align 4
@SSL_CB_HANDSHAKE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @sslapi_info_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sslapi_info_callback(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.info_cb_states_st*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.info_cb_states_st**, %struct.info_cb_states_st*** @info_cb_states, align 8
  %9 = load i64, i64* @info_cb_offset, align 8
  %10 = getelementptr inbounds %struct.info_cb_states_st*, %struct.info_cb_states_st** %8, i64 %9
  %11 = load %struct.info_cb_states_st*, %struct.info_cb_states_st** %10, align 8
  store %struct.info_cb_states_st* %11, %struct.info_cb_states_st** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @TEST_false(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 1, i32* @info_cb_failed, align 4
  br label %96

18:                                               ; preds = %3
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @SSL_is_server(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SSL_ST_CONNECT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i1 [ false, %18 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @TEST_false(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @SSL_is_server(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SSL_ST_ACCEPT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i1 [ false, %32 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @TEST_false(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.info_cb_states_st*, %struct.info_cb_states_st** %7, align 8
  %48 = load i64, i64* @info_cb_this_state, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* @info_cb_this_state, align 8
  %50 = getelementptr inbounds %struct.info_cb_states_st, %struct.info_cb_states_st* %47, i64 %49
  %51 = getelementptr inbounds %struct.info_cb_states_st, %struct.info_cb_states_st* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @TEST_int_ne(i32 %52, i32 0)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46, %41, %27
  store i32 1, i32* @info_cb_failed, align 4
  br label %96

56:                                               ; preds = %46
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.info_cb_states_st*, %struct.info_cb_states_st** %7, align 8
  %59 = load i64, i64* @info_cb_this_state, align 8
  %60 = getelementptr inbounds %struct.info_cb_states_st, %struct.info_cb_states_st* %58, i64 %59
  %61 = getelementptr inbounds %struct.info_cb_states_st, %struct.info_cb_states_st* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %57, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @TEST_true(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  store i32 1, i32* @info_cb_failed, align 4
  br label %96

69:                                               ; preds = %56
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @SSL_CB_LOOP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @SSL_state_string(i32* %75)
  %77 = load %struct.info_cb_states_st*, %struct.info_cb_states_st** %7, align 8
  %78 = load i64, i64* @info_cb_this_state, align 8
  %79 = getelementptr inbounds %struct.info_cb_states_st, %struct.info_cb_states_st* %77, i64 %78
  %80 = getelementptr inbounds %struct.info_cb_states_st, %struct.info_cb_states_st* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @strcmp(i32 %76, i32 %81)
  %83 = call i32 @TEST_int_eq(i32 %82, i32 0)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %74
  store i32 1, i32* @info_cb_failed, align 4
  br label %96

86:                                               ; preds = %74, %69
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @SSL_CB_HANDSHAKE_DONE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i32*, i32** %4, align 8
  %93 = call i64 @SSL_in_init(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 1, i32* @info_cb_failed, align 4
  br label %96

96:                                               ; preds = %17, %55, %68, %85, %95, %91, %86
  ret void
}

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i64 @SSL_is_server(i32*) #1

declare dso_local i32 @TEST_int_ne(i32, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @SSL_state_string(i32*) #1

declare dso_local i64 @SSL_in_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
