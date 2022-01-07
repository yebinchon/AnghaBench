; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_compat.c_inet_aton.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_compat.c_inet_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_aton(i8* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca [4 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %9 = bitcast [4 x i64]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 32, i1 false)
  store i64 0, i64* %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %56, %26, %13
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %8, align 1
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8, i8* %8, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 46
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %7, align 8
  br label %14

29:                                               ; preds = %18
  %30 = load i8, i8* %8, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp slt i32 %31, 48
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sgt i32 %35, 57
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %29
  store i32 0, i32* %3, align 4
  br label %75

38:                                               ; preds = %33
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = mul i64 %41, 10
  store i64 %42, i64* %40, align 8
  %43 = load i8, i8* %8, align 1
  %44 = sext i8 %43 to i32
  %45 = sub nsw i32 %44, 48
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ugt i64 %53, 255
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %75

56:                                               ; preds = %38
  br label %14

57:                                               ; preds = %14
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 3
  %59 = load i64, i64* %58, align 8
  %60 = shl i64 %59, 24
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  %62 = load i64, i64* %61, align 16
  %63 = shl i64 %62, 16
  %64 = add i64 %60, %63
  %65 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = shl i64 %66, 8
  %68 = add i64 %64, %67
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %70 = load i64, i64* %69, align 16
  %71 = add i64 %68, %70
  %72 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %73 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %57, %55, %37, %12
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
