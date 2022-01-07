; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_key_source2_read.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_key_source2_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_source2 = type { %struct.key_source, %struct.key_source }
%struct.key_source = type { i32, i32, i32 }
%struct.buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_source2*, %struct.buffer*, i32)* @key_source2_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_source2_read(%struct.key_source2* %0, %struct.buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.key_source2*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.key_source*, align 8
  %9 = alloca { i64, i32 }, align 4
  store %struct.key_source2* %0, %struct.key_source2** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.key_source2*, %struct.key_source2** %5, align 8
  %11 = getelementptr inbounds %struct.key_source2, %struct.key_source2* %10, i32 0, i32 1
  store %struct.key_source* %11, %struct.key_source** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.key_source2*, %struct.key_source2** %5, align 8
  %16 = getelementptr inbounds %struct.key_source2, %struct.key_source2* %15, i32 0, i32 0
  store %struct.key_source* %16, %struct.key_source** %8, align 8
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.key_source*, %struct.key_source** %8, align 8
  %19 = bitcast { i64, i32 }* %9 to i8*
  %20 = bitcast %struct.key_source* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 12, i1 false)
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %22 = load i64, i64* %21, align 4
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CLEAR(i64 %22, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %17
  %29 = load %struct.buffer*, %struct.buffer** %6, align 8
  %30 = load %struct.key_source*, %struct.key_source** %8, align 8
  %31 = getelementptr inbounds %struct.key_source, %struct.key_source* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @buf_read(%struct.buffer* %29, i32 %32, i32 4)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %54

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %17
  %38 = load %struct.buffer*, %struct.buffer** %6, align 8
  %39 = load %struct.key_source*, %struct.key_source** %8, align 8
  %40 = getelementptr inbounds %struct.key_source, %struct.key_source* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @buf_read(%struct.buffer* %38, i32 %41, i32 4)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %54

45:                                               ; preds = %37
  %46 = load %struct.buffer*, %struct.buffer** %6, align 8
  %47 = load %struct.key_source*, %struct.key_source** %8, align 8
  %48 = getelementptr inbounds %struct.key_source, %struct.key_source* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @buf_read(%struct.buffer* %46, i32 %49, i32 4)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %54

53:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %52, %44, %35
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @CLEAR(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @buf_read(%struct.buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
