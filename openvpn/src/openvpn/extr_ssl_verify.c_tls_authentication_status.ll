; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_tls_authentication_status.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_tls_authentication_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_multi = type { i64, %struct.key_state** }
%struct.key_state = type { i32, i32, i64 }

@KEY_SCAN_SIZE = common dso_local global i32 0, align 4
@TLS_AUTHENTICATION_SUCCEEDED = common dso_local global i32 0, align 4
@TLS_AUTHENTICATION_DEFERRED = common dso_local global i32 0, align 4
@TLS_AUTHENTICATION_FAILED = common dso_local global i32 0, align 4
@D_TLS_ERRORS = common dso_local global i32 0, align 4
@TLS_AUTHENTICATION_UNDEFINED = common dso_local global i32 0, align 4
@now = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_authentication_status(%struct.tls_multi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tls_multi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.key_state*, align 8
  store %struct.tls_multi* %0, %struct.tls_multi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %12 = icmp ne %struct.tls_multi* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %38, %13
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @KEY_SCAN_SIZE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %20 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %19, i32 0, i32 1
  %21 = load %struct.key_state**, %struct.key_state*** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.key_state*, %struct.key_state** %21, i64 %23
  %25 = load %struct.key_state*, %struct.key_state** %24, align 8
  store %struct.key_state* %25, %struct.key_state** %10, align 8
  %26 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %27 = load %struct.key_state*, %struct.key_state** %10, align 8
  %28 = call i64 @DECRYPT_KEY_ENABLED(%struct.tls_multi* %26, %struct.key_state* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  %31 = load %struct.key_state*, %struct.key_state** %10, align 8
  %32 = getelementptr inbounds %struct.key_state, %struct.key_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %30
  br label %37

37:                                               ; preds = %36, %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %14

41:                                               ; preds = %14
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @TLS_AUTHENTICATION_SUCCEEDED, align 4
  store i32 %46, i32* %3, align 4
  br label %57

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %47
  %54 = load i32, i32* @TLS_AUTHENTICATION_DEFERRED, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @TLS_AUTHENTICATION_FAILED, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %53, %45
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @DECRYPT_KEY_ENABLED(%struct.tls_multi*, %struct.key_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
