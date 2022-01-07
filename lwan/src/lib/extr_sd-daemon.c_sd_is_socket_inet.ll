; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_sd-daemon.c_sd_is_socket_inet.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_sd-daemon.c_sd_is_socket_inet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sockaddr_union = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_is_socket_inet(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %union.sockaddr_union, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = bitcast %union.sockaddr_union* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  store i32 8, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @AF_INET, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @AF_INET6, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %117

29:                                               ; preds = %22, %18, %5
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @sd_is_socket_internal(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %6, align 4
  br label %117

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_6__*
  %41 = call i64 @getsockname(i32 %39, %struct.TYPE_6__* %40, i32* %13)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @errno, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %117

46:                                               ; preds = %38
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %48, 4
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %117

53:                                               ; preds = %46
  %54 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_6__*
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @AF_INET, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_6__*
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @AF_INET6, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %117

66:                                               ; preds = %59, %53
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_6__*
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %117

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %66
  %78 = load i64, i64* %11, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %116

80:                                               ; preds = %77
  %81 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_6__*
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AF_INET, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %80
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp ult i64 %88, 4
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %117

93:                                               ; preds = %86
  %94 = load i64, i64* %11, align 8
  %95 = call i64 @htons(i64 %94)
  %96 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_4__*
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %95, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %6, align 4
  br label %117

101:                                              ; preds = %80
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp ult i64 %103, 4
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %117

108:                                              ; preds = %101
  %109 = load i64, i64* %11, align 8
  %110 = call i64 @htons(i64 %109)
  %111 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_5__*
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %6, align 4
  br label %117

116:                                              ; preds = %77
  store i32 1, i32* %6, align 4
  br label %117

117:                                              ; preds = %116, %108, %105, %93, %90, %75, %65, %50, %43, %36, %26
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sd_is_socket_internal(i32, i32, i32) #2

declare dso_local i64 @getsockname(i32, %struct.TYPE_6__*, i32*) #2

declare dso_local i64 @htons(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
