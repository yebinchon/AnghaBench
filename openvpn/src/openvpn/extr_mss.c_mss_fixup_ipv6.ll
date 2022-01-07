; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_mss.c_mss_fixup_ipv6.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_mss.c_mss_fixup_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.openvpn_ipv6hdr = type { i64, i32 }
%struct.openvpn_tcphdr = type { i32 }

@OPENVPN_IPPROTO_TCP = common dso_local global i64 0, align 8
@OPENVPN_TCPH_SYN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mss_fixup_ipv6(%struct.buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.openvpn_ipv6hdr*, align 8
  %6 = alloca %struct.buffer, align 4
  %7 = alloca %struct.openvpn_tcphdr*, align 8
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.buffer*, %struct.buffer** %3, align 8
  %9 = call i32 @BLEN(%struct.buffer* %8)
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %59

12:                                               ; preds = %2
  %13 = load %struct.buffer*, %struct.buffer** %3, align 8
  %14 = call i32 @verify_align_4(%struct.buffer* %13)
  %15 = load %struct.buffer*, %struct.buffer** %3, align 8
  %16 = call i64 @BPTR(%struct.buffer* %15)
  %17 = inttoptr i64 %16 to %struct.openvpn_ipv6hdr*
  store %struct.openvpn_ipv6hdr* %17, %struct.openvpn_ipv6hdr** %5, align 8
  %18 = load %struct.buffer*, %struct.buffer** %3, align 8
  %19 = call i32 @BLEN(%struct.buffer* %18)
  %20 = load %struct.openvpn_ipv6hdr*, %struct.openvpn_ipv6hdr** %5, align 8
  %21 = getelementptr inbounds %struct.openvpn_ipv6hdr, %struct.openvpn_ipv6hdr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @ntohs(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = add nsw i32 %24, 40
  %26 = icmp ne i32 %19, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  br label %59

28:                                               ; preds = %12
  %29 = load %struct.openvpn_ipv6hdr*, %struct.openvpn_ipv6hdr** %5, align 8
  %30 = getelementptr inbounds %struct.openvpn_ipv6hdr, %struct.openvpn_ipv6hdr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OPENVPN_IPPROTO_TCP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %59

35:                                               ; preds = %28
  %36 = load %struct.buffer*, %struct.buffer** %3, align 8
  %37 = bitcast %struct.buffer* %6 to i8*
  %38 = bitcast %struct.buffer* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = call i64 @buf_advance(%struct.buffer* %6, i32 40)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = call i32 @BLEN(%struct.buffer* %6)
  %43 = icmp sge i32 %42, 4
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = call i64 @BPTR(%struct.buffer* %6)
  %46 = inttoptr i64 %45 to %struct.openvpn_tcphdr*
  store %struct.openvpn_tcphdr* %46, %struct.openvpn_tcphdr** %7, align 8
  %47 = load %struct.openvpn_tcphdr*, %struct.openvpn_tcphdr** %7, align 8
  %48 = getelementptr inbounds %struct.openvpn_tcphdr, %struct.openvpn_tcphdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @OPENVPN_TCPH_SYN_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, 20
  %57 = call i32 @mss_fixup_dowork(%struct.buffer* %6, i64 %56)
  br label %58

58:                                               ; preds = %53, %44
  br label %59

59:                                               ; preds = %11, %27, %34, %58, %41, %35
  ret void
}

declare dso_local i32 @BLEN(%struct.buffer*) #1

declare dso_local i32 @verify_align_4(%struct.buffer*) #1

declare dso_local i64 @BPTR(%struct.buffer*) #1

declare dso_local i64 @ntohs(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @buf_advance(%struct.buffer*, i32) #1

declare dso_local i32 @mss_fixup_dowork(%struct.buffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
