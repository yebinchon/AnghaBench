; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_lame_duck_must_die.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_lame_duck_must_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_session = type { %struct.key_state* }
%struct.key_state = type { i64, i64 }

@KS_LAME_DUCK = common dso_local global i64 0, align 8
@S_INITIAL = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@S_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tls_session*, i32*)* @lame_duck_must_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lame_duck_must_die(%struct.tls_session* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tls_session*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.key_state*, align 8
  %7 = alloca i64, align 8
  store %struct.tls_session* %0, %struct.tls_session** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %9 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %8, i32 0, i32 0
  %10 = load %struct.key_state*, %struct.key_state** %9, align 8
  %11 = load i64, i64* @KS_LAME_DUCK, align 8
  %12 = getelementptr inbounds %struct.key_state, %struct.key_state* %10, i64 %11
  store %struct.key_state* %12, %struct.key_state** %6, align 8
  %13 = load %struct.key_state*, %struct.key_state** %6, align 8
  %14 = getelementptr inbounds %struct.key_state, %struct.key_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @S_INITIAL, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load i64, i64* @now, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.key_state*, %struct.key_state** %6, align 8
  %21 = getelementptr inbounds %struct.key_state, %struct.key_state* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @ASSERT(i64 %22)
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.key_state*, %struct.key_state** %6, align 8
  %26 = getelementptr inbounds %struct.key_state, %struct.key_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.key_state*, %struct.key_state** %6, align 8
  %32 = getelementptr inbounds %struct.key_state, %struct.key_state* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub nsw i64 %33, %34
  %36 = call i32 @compute_earliest_wakeup(i32* %30, i64 %35)
  store i32 0, i32* %3, align 4
  br label %46

37:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %46

38:                                               ; preds = %2
  %39 = load %struct.key_state*, %struct.key_state** %6, align 8
  %40 = getelementptr inbounds %struct.key_state, %struct.key_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @S_ERROR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %46

45:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44, %37, %29
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ASSERT(i64) #1

declare dso_local i32 @compute_earliest_wakeup(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
