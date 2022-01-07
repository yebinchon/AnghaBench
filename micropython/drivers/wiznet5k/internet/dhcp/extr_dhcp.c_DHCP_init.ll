; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_DHCP_init.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_DHCP_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DHCP_CHADDR = common dso_local global i32* null, align 8
@DHCP_SOCKET = common dso_local global i32 0, align 4
@pDHCPMSG = common dso_local global i32* null, align 8
@DHCP_XID = common dso_local global i32 0, align 4
@STATE_DHCP_INIT = common dso_local global i32 0, align 4
@dhcp_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DHCP_init(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [4 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 16, i1 false)
  %7 = load i32*, i32** @DHCP_CHADDR, align 8
  %8 = call i32 @getSHAR(i32* %7)
  %9 = load i32*, i32** @DHCP_CHADDR, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** @DHCP_CHADDR, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %11, %14
  %16 = load i32*, i32** @DHCP_CHADDR, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %15, %18
  %20 = load i32*, i32** @DHCP_CHADDR, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %19, %22
  %24 = load i32*, i32** @DHCP_CHADDR, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %23, %26
  %28 = load i32*, i32** @DHCP_CHADDR, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %2
  %34 = load i32*, i32** @DHCP_CHADDR, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** @DHCP_CHADDR, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 8, i32* %37, align 4
  %38 = load i32*, i32** @DHCP_CHADDR, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 220, i32* %39, align 4
  %40 = load i32*, i32** @DHCP_CHADDR, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32 0, i32* %41, align 4
  %42 = load i32*, i32** @DHCP_CHADDR, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32 0, i32* %43, align 4
  %44 = load i32*, i32** @DHCP_CHADDR, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  store i32 0, i32* %45, align 4
  %46 = load i32*, i32** @DHCP_CHADDR, align 8
  %47 = call i32 @setSHAR(i32* %46)
  br label %48

48:                                               ; preds = %33, %2
  %49 = load i32, i32* %3, align 4
  store i32 %49, i32* @DHCP_SOCKET, align 4
  %50 = load i32*, i32** %4, align 8
  store i32* %50, i32** @pDHCPMSG, align 8
  store i32 305419896, i32* @DHCP_XID, align 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %52 = call i32 @setSIPR(i32* %51)
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %54 = call i32 @setSIPR(i32* %53)
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %56 = call i32 @setGAR(i32* %55)
  %57 = call i32 (...) @reset_DHCP_timeout()
  %58 = load i32, i32* @STATE_DHCP_INIT, align 4
  store i32 %58, i32* @dhcp_state, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getSHAR(i32*) #2

declare dso_local i32 @setSHAR(i32*) #2

declare dso_local i32 @setSIPR(i32*) #2

declare dso_local i32 @setGAR(i32*) #2

declare dso_local i32 @reset_DHCP_timeout(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
