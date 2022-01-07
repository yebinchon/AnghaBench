; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_sockaddr_inet.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_sockaddr_inet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i16, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@AF_INET = common dso_local global i16 0, align 2
@AF_INET6 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (i16, %struct.TYPE_10__*)* @sockaddr_inet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @sockaddr_inet(i16 signext %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca i16, align 2
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca { i64, i32 }, align 8
  store i16 %0, i16* %4, align 2
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %7 = call i32 @ZeroMemory(%struct.TYPE_11__* %3, i32 12)
  %8 = load i16, i16* %4, align 2
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  store i16 %8, i16* %9, align 4
  %10 = load i16, i16* %4, align 2
  %11 = sext i16 %10 to i32
  %12 = load i16, i16* @AF_INET, align 2
  %13 = sext i16 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load i16, i16* %4, align 2
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* @AF_INET6, align 2
  %25 = sext i16 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %21
  br label %34

34:                                               ; preds = %33, %15
  %35 = bitcast { i64, i32 }* %6 to i8*
  %36 = bitcast %struct.TYPE_11__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 4 %36, i64 12, i1 false)
  %37 = load { i64, i32 }, { i64, i32 }* %6, align 8
  ret { i64, i32 } %37
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_11__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
