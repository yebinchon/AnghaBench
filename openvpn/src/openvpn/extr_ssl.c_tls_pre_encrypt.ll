; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_pre_encrypt.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_pre_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_multi = type { %struct.key_state*, %struct.key_state** }
%struct.key_state = type { i64, i64, i32, %struct.crypto_options, i32, i64 }
%struct.crypto_options = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.buffer = type { i64 }
%struct.gc_arena = type { i32 }

@KEY_SCAN_SIZE = common dso_local global i32 0, align 4
@S_ACTIVE = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@D_TLS_KEYSELECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"TLS: tls_pre_encrypt: key_id=%d\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"TLS Warning: no data channel send key available: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_pre_encrypt(%struct.tls_multi* %0, %struct.buffer* %1, %struct.crypto_options** %2) #0 {
  %4 = alloca %struct.tls_multi*, align 8
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca %struct.crypto_options**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.key_state*, align 8
  %9 = alloca %struct.key_state*, align 8
  %10 = alloca %struct.gc_arena, align 4
  store %struct.tls_multi* %0, %struct.tls_multi** %4, align 8
  store %struct.buffer* %1, %struct.buffer** %5, align 8
  store %struct.crypto_options** %2, %struct.crypto_options*** %6, align 8
  %11 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %12 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %11, i32 0, i32 0
  store %struct.key_state* null, %struct.key_state** %12, align 8
  %13 = load %struct.buffer*, %struct.buffer** %5, align 8
  %14 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %89

17:                                               ; preds = %3
  store %struct.key_state* null, %struct.key_state** %8, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %62, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @KEY_SCAN_SIZE, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %24 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %23, i32 0, i32 1
  %25 = load %struct.key_state**, %struct.key_state*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.key_state*, %struct.key_state** %25, i64 %27
  %29 = load %struct.key_state*, %struct.key_state** %28, align 8
  store %struct.key_state* %29, %struct.key_state** %9, align 8
  %30 = load %struct.key_state*, %struct.key_state** %9, align 8
  %31 = getelementptr inbounds %struct.key_state, %struct.key_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @S_ACTIVE, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %22
  %36 = load %struct.key_state*, %struct.key_state** %9, align 8
  %37 = getelementptr inbounds %struct.key_state, %struct.key_state* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load %struct.key_state*, %struct.key_state** %9, align 8
  %42 = getelementptr inbounds %struct.key_state, %struct.key_state* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.crypto_options, %struct.crypto_options* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = load %struct.key_state*, %struct.key_state** %8, align 8
  %49 = icmp ne %struct.key_state* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load %struct.key_state*, %struct.key_state** %9, align 8
  store %struct.key_state* %51, %struct.key_state** %8, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i64, i64* @now, align 8
  %54 = load %struct.key_state*, %struct.key_state** %9, align 8
  %55 = getelementptr inbounds %struct.key_state, %struct.key_state* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load %struct.key_state*, %struct.key_state** %9, align 8
  store %struct.key_state* %59, %struct.key_state** %8, align 8
  br label %65

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %40, %35, %22
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %18

65:                                               ; preds = %58, %18
  %66 = load %struct.key_state*, %struct.key_state** %8, align 8
  %67 = icmp ne %struct.key_state* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load %struct.key_state*, %struct.key_state** %8, align 8
  %70 = getelementptr inbounds %struct.key_state, %struct.key_state* %69, i32 0, i32 3
  %71 = load %struct.crypto_options**, %struct.crypto_options*** %6, align 8
  store %struct.crypto_options* %70, %struct.crypto_options** %71, align 8
  %72 = load %struct.key_state*, %struct.key_state** %8, align 8
  %73 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %74 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %73, i32 0, i32 0
  store %struct.key_state* %72, %struct.key_state** %74, align 8
  %75 = load i32, i32* @D_TLS_KEYSELECT, align 4
  %76 = load %struct.key_state*, %struct.key_state** %8, align 8
  %77 = getelementptr inbounds %struct.key_state, %struct.key_state* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dmsg(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %93

80:                                               ; preds = %65
  %81 = call i32 (...) @gc_new()
  %82 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %10, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @D_TLS_KEYSELECT, align 4
  %84 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %85 = call i32 @print_key_id(%struct.tls_multi* %84, %struct.gc_arena* %10)
  %86 = call i32 @dmsg(i32 %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = call i32 @gc_free(%struct.gc_arena* %10)
  br label %88

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %3
  %90 = load %struct.buffer*, %struct.buffer** %5, align 8
  %91 = getelementptr inbounds %struct.buffer, %struct.buffer* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.crypto_options**, %struct.crypto_options*** %6, align 8
  store %struct.crypto_options* null, %struct.crypto_options** %92, align 8
  br label %93

93:                                               ; preds = %89, %68
  ret void
}

declare dso_local i32 @dmsg(i32, i8*, i32) #1

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @print_key_id(%struct.tls_multi*, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
