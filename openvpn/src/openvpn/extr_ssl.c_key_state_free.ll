; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_key_state_free.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_key_state_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_state = type { %struct.TYPE_2__, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@S_UNDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key_state*, i32)* @key_state_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_state_free(%struct.key_state* %0, i32 %1) #0 {
  %3 = alloca %struct.key_state*, align 8
  %4 = alloca i32, align 4
  store %struct.key_state* %0, %struct.key_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @S_UNDEF, align 4
  %6 = load %struct.key_state*, %struct.key_state** %3, align 8
  %7 = getelementptr inbounds %struct.key_state, %struct.key_state* %6, i32 0, i32 10
  store i32 %5, i32* %7, align 4
  %8 = load %struct.key_state*, %struct.key_state** %3, align 8
  %9 = getelementptr inbounds %struct.key_state, %struct.key_state* %8, i32 0, i32 9
  %10 = call i32 @key_state_ssl_free(i32* %9)
  %11 = load %struct.key_state*, %struct.key_state** %3, align 8
  %12 = getelementptr inbounds %struct.key_state, %struct.key_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @free_key_ctx_bi(i32* %13)
  %15 = load %struct.key_state*, %struct.key_state** %3, align 8
  %16 = getelementptr inbounds %struct.key_state, %struct.key_state* %15, i32 0, i32 8
  %17 = call i32 @free_buf(i32* %16)
  %18 = load %struct.key_state*, %struct.key_state** %3, align 8
  %19 = getelementptr inbounds %struct.key_state, %struct.key_state* %18, i32 0, i32 7
  %20 = call i32 @free_buf(i32* %19)
  %21 = load %struct.key_state*, %struct.key_state** %3, align 8
  %22 = getelementptr inbounds %struct.key_state, %struct.key_state* %21, i32 0, i32 6
  %23 = call i32 @free_buf(i32* %22)
  %24 = load %struct.key_state*, %struct.key_state** %3, align 8
  %25 = getelementptr inbounds %struct.key_state, %struct.key_state* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @buffer_list_free(i32 %26)
  %28 = load %struct.key_state*, %struct.key_state** %3, align 8
  %29 = getelementptr inbounds %struct.key_state, %struct.key_state* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.key_state*, %struct.key_state** %3, align 8
  %34 = getelementptr inbounds %struct.key_state, %struct.key_state* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @reliable_free(i64 %35)
  %37 = load %struct.key_state*, %struct.key_state** %3, align 8
  %38 = getelementptr inbounds %struct.key_state, %struct.key_state* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @free(i64 %39)
  br label %41

41:                                               ; preds = %32, %2
  %42 = load %struct.key_state*, %struct.key_state** %3, align 8
  %43 = getelementptr inbounds %struct.key_state, %struct.key_state* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.key_state*, %struct.key_state** %3, align 8
  %48 = getelementptr inbounds %struct.key_state, %struct.key_state* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @reliable_free(i64 %49)
  %51 = load %struct.key_state*, %struct.key_state** %3, align 8
  %52 = getelementptr inbounds %struct.key_state, %struct.key_state* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @free(i64 %53)
  br label %55

55:                                               ; preds = %46, %41
  %56 = load %struct.key_state*, %struct.key_state** %3, align 8
  %57 = getelementptr inbounds %struct.key_state, %struct.key_state* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.key_state*, %struct.key_state** %3, align 8
  %62 = getelementptr inbounds %struct.key_state, %struct.key_state* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @free(i64 %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.key_state*, %struct.key_state** %3, align 8
  %67 = getelementptr inbounds %struct.key_state, %struct.key_state* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.key_state*, %struct.key_state** %3, align 8
  %72 = getelementptr inbounds %struct.key_state, %struct.key_state* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @free(i64 %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.key_state*, %struct.key_state** %3, align 8
  %77 = getelementptr inbounds %struct.key_state, %struct.key_state* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @packet_id_free(i32* %78)
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.key_state*, %struct.key_state** %3, align 8
  %84 = call i32 @secure_memzero(%struct.key_state* %83, i32 64)
  br label %85

85:                                               ; preds = %82, %75
  ret void
}

declare dso_local i32 @key_state_ssl_free(i32*) #1

declare dso_local i32 @free_key_ctx_bi(i32*) #1

declare dso_local i32 @free_buf(i32*) #1

declare dso_local i32 @buffer_list_free(i32) #1

declare dso_local i32 @reliable_free(i64) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @packet_id_free(i32*) #1

declare dso_local i32 @secure_memzero(%struct.key_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
