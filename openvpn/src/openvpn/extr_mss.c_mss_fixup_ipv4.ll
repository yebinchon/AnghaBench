; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_mss.c_mss_fixup_ipv4.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_mss.c_mss_fixup_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.openvpn_iphdr = type { i64, i32, i32, i32 }
%struct.openvpn_tcphdr = type { i32 }

@OPENVPN_IPPROTO_TCP = common dso_local global i64 0, align 8
@OPENVPN_IP_OFFMASK = common dso_local global i32 0, align 4
@OPENVPN_TCPH_SYN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mss_fixup_ipv4(%struct.buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.openvpn_iphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer, align 4
  %8 = alloca %struct.openvpn_tcphdr*, align 8
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.buffer*, %struct.buffer** %3, align 8
  %10 = call i32 @BLEN(%struct.buffer* %9)
  %11 = icmp slt i32 %10, 24
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %76

13:                                               ; preds = %2
  %14 = load %struct.buffer*, %struct.buffer** %3, align 8
  %15 = call i32 @verify_align_4(%struct.buffer* %14)
  %16 = load %struct.buffer*, %struct.buffer** %3, align 8
  %17 = call i64 @BPTR(%struct.buffer* %16)
  %18 = inttoptr i64 %17 to %struct.openvpn_iphdr*
  store %struct.openvpn_iphdr* %18, %struct.openvpn_iphdr** %5, align 8
  %19 = load %struct.openvpn_iphdr*, %struct.openvpn_iphdr** %5, align 8
  %20 = getelementptr inbounds %struct.openvpn_iphdr, %struct.openvpn_iphdr* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @OPENVPN_IPH_GET_LEN(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.openvpn_iphdr*, %struct.openvpn_iphdr** %5, align 8
  %24 = getelementptr inbounds %struct.openvpn_iphdr, %struct.openvpn_iphdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OPENVPN_IPPROTO_TCP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %76

28:                                               ; preds = %13
  %29 = load %struct.openvpn_iphdr*, %struct.openvpn_iphdr** %5, align 8
  %30 = getelementptr inbounds %struct.openvpn_iphdr, %struct.openvpn_iphdr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ntohs(i32 %31)
  %33 = load %struct.buffer*, %struct.buffer** %3, align 8
  %34 = call i32 @BLEN(%struct.buffer* %33)
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %28
  %37 = load %struct.openvpn_iphdr*, %struct.openvpn_iphdr** %5, align 8
  %38 = getelementptr inbounds %struct.openvpn_iphdr, %struct.openvpn_iphdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ntohs(i32 %39)
  %41 = load i32, i32* @OPENVPN_IP_OFFMASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.buffer*, %struct.buffer** %3, align 8
  %47 = call i32 @BLEN(%struct.buffer* %46)
  %48 = icmp sle i32 %45, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %44
  %50 = load %struct.buffer*, %struct.buffer** %3, align 8
  %51 = call i32 @BLEN(%struct.buffer* %50)
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %51, %52
  %54 = icmp sge i32 %53, 4
  br i1 %54, label %55, label %76

55:                                               ; preds = %49
  %56 = load %struct.buffer*, %struct.buffer** %3, align 8
  %57 = bitcast %struct.buffer* %7 to i8*
  %58 = bitcast %struct.buffer* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @buf_advance(%struct.buffer* %7, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = call i64 @BPTR(%struct.buffer* %7)
  %64 = inttoptr i64 %63 to %struct.openvpn_tcphdr*
  store %struct.openvpn_tcphdr* %64, %struct.openvpn_tcphdr** %8, align 8
  %65 = load %struct.openvpn_tcphdr*, %struct.openvpn_tcphdr** %8, align 8
  %66 = getelementptr inbounds %struct.openvpn_tcphdr, %struct.openvpn_tcphdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @OPENVPN_TCPH_SYN_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @mss_fixup_dowork(%struct.buffer* %7, i32 %72)
  br label %74

74:                                               ; preds = %71, %62
  br label %75

75:                                               ; preds = %74, %55
  br label %76

76:                                               ; preds = %12, %75, %49, %44, %36, %28, %13
  ret void
}

declare dso_local i32 @BLEN(%struct.buffer*) #1

declare dso_local i32 @verify_align_4(%struct.buffer*) #1

declare dso_local i64 @BPTR(%struct.buffer*) #1

declare dso_local i32 @OPENVPN_IPH_GET_LEN(i32) #1

declare dso_local i32 @ntohs(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @buf_advance(%struct.buffer*, i32) #1

declare dso_local i32 @mss_fixup_dowork(%struct.buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
