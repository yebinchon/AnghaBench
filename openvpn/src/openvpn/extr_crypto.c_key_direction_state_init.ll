; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_key_direction_state_init.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_key_direction_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_direction_state = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_direction_state_init(%struct.key_direction_state* %0, i32 %1) #0 {
  %3 = alloca %struct.key_direction_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca { i64, i32 }, align 4
  store %struct.key_direction_state* %0, %struct.key_direction_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.key_direction_state*, %struct.key_direction_state** %3, align 8
  %7 = bitcast { i64, i32 }* %5 to i8*
  %8 = bitcast %struct.key_direction_state* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 12, i1 false)
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  %10 = load i64, i64* %9, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CLEAR(i64 %10, i32 %12)
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %36 [
    i32 128, label %15
    i32 129, label %22
    i32 130, label %29
  ]

15:                                               ; preds = %2
  %16 = load %struct.key_direction_state*, %struct.key_direction_state** %3, align 8
  %17 = getelementptr inbounds %struct.key_direction_state, %struct.key_direction_state* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.key_direction_state*, %struct.key_direction_state** %3, align 8
  %19 = getelementptr inbounds %struct.key_direction_state, %struct.key_direction_state* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load %struct.key_direction_state*, %struct.key_direction_state** %3, align 8
  %21 = getelementptr inbounds %struct.key_direction_state, %struct.key_direction_state* %20, i32 0, i32 2
  store i32 2, i32* %21, align 4
  br label %38

22:                                               ; preds = %2
  %23 = load %struct.key_direction_state*, %struct.key_direction_state** %3, align 8
  %24 = getelementptr inbounds %struct.key_direction_state, %struct.key_direction_state* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.key_direction_state*, %struct.key_direction_state** %3, align 8
  %26 = getelementptr inbounds %struct.key_direction_state, %struct.key_direction_state* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.key_direction_state*, %struct.key_direction_state** %3, align 8
  %28 = getelementptr inbounds %struct.key_direction_state, %struct.key_direction_state* %27, i32 0, i32 2
  store i32 2, i32* %28, align 4
  br label %38

29:                                               ; preds = %2
  %30 = load %struct.key_direction_state*, %struct.key_direction_state** %3, align 8
  %31 = getelementptr inbounds %struct.key_direction_state, %struct.key_direction_state* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.key_direction_state*, %struct.key_direction_state** %3, align 8
  %33 = getelementptr inbounds %struct.key_direction_state, %struct.key_direction_state* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.key_direction_state*, %struct.key_direction_state** %3, align 8
  %35 = getelementptr inbounds %struct.key_direction_state, %struct.key_direction_state* %34, i32 0, i32 2
  store i32 1, i32* %35, align 4
  br label %38

36:                                               ; preds = %2
  %37 = call i32 @ASSERT(i32 0)
  br label %38

38:                                               ; preds = %36, %29, %22, %15
  ret void
}

declare dso_local i32 @CLEAR(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
