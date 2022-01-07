; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_rc4.c_rc4_init.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_rc4.c_rc4_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc4_state = type { i32, i64*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc4_state*, i64*, i32)* @rc4_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc4_init(%struct.rc4_state* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc4_state*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.rc4_state* %0, %struct.rc4_state** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %11 = icmp ne %struct.rc4_state* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i64*, i64** %6, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12, %3
  store i32 0, i32* %4, align 4
  br label %80

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %22 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %35, %19
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %30 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 %28, i64* %34, align 8
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %40 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %42 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %43

43:                                               ; preds = %76, %38
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 256
  br i1 %45, label %46, label %79

46:                                               ; preds = %43
  %47 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %48 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = srem i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %54, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %53, %60
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %8, align 8
  %64 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %65 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %71 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = call i32 @swap_bytes(i64* %69, i64* %74)
  br label %76

76:                                               ; preds = %46
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %43

79:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @swap_bytes(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
