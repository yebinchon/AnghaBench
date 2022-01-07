; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_add_in6_addr.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_add_in6_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i64* }

@UINT8_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @add_in6_addr(i64* %0, i64 %1) #0 {
  %3 = alloca %struct.in6_addr, align 8
  %4 = alloca %struct.in6_addr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %4, i32 0, i32 0
  store i64* %0, i64** %9, align 8
  store i64 %1, i64* %5, align 8
  store i32 15, i32* %6, align 4
  br label %10

10:                                               ; preds = %49, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* %5, align 8
  %15 = icmp sgt i64 %14, 0
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %52

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %4, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i8
  %26 = zext i8 %25 to i64
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @UINT8_MAX, align 8
  %31 = and i64 %29, %30
  %32 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %4, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %31, i64* %36, align 8
  %37 = load i64, i64* %8, align 8
  %38 = and i64 %37, 255
  %39 = load i64, i64* %5, align 8
  %40 = and i64 %39, 255
  %41 = add nsw i64 %38, %40
  %42 = ashr i64 %41, 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load i64, i64* %5, align 8
  %45 = ashr i64 %44, 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %18
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %6, align 4
  br label %10

52:                                               ; preds = %16
  %53 = bitcast %struct.in6_addr* %3 to i8*
  %54 = bitcast %struct.in6_addr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 8, i1 false)
  %55 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %3, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  ret i64* %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
