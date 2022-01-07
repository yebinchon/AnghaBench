; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/extr_wizchip_conf.c_ctlwizchip.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/extr_wizchip_conf.c_ctlwizchip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@_WIZCHIP_SOCK_NUM_ = common dso_local global i32 0, align 4
@WIZCHIP = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctlwizchip(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32*], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = bitcast [2 x i32*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 16, i1 false)
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %101 [
    i32 132, label %10
    i32 134, label %12
    i32 143, label %31
    i32 141, label %36
    i32 131, label %40
    i32 140, label %45
    i32 142, label %49
    i32 136, label %83
    i32 137, label %92
  ]

10:                                               ; preds = %2
  %11 = call i32 (...) @wizchip_sw_reset()
  br label %102

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  store i32* %17, i32** %18, align 16
  %19 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %20 = load i32*, i32** %19, align 16
  %21 = load i32, i32* @_WIZCHIP_SOCK_NUM_, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  store i32* %23, i32** %24, align 8
  br label %25

25:                                               ; preds = %15, %12
  %26 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %27 = load i32*, i32** %26, align 16
  %28 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @wizchip_init(i32* %27, i32* %29)
  store i32 %30, i32* %3, align 4
  br label %103

31:                                               ; preds = %2
  %32 = load i8*, i8** %5, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wizchip_clrinterrupt(i32 %34)
  br label %102

36:                                               ; preds = %2
  %37 = call i32 (...) @wizchip_getinterrupt()
  %38 = load i8*, i8** %5, align 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 4
  br label %102

40:                                               ; preds = %2
  %41 = load i8*, i8** %5, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wizchip_setinterruptmask(i32 %43)
  br label %102

45:                                               ; preds = %2
  %46 = call i32 (...) @wizchip_getinterruptmask()
  %47 = load i8*, i8** %5, align 8
  %48 = bitcast i8* %47 to i32*
  store i32 %46, i32* %48, align 4
  br label %102

49:                                               ; preds = %2
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @WIZCHIP, i32 0, i32 0), align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %52, i32* %55, align 4
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @WIZCHIP, i32 0, i32 0), align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %58, i32* %61, align 4
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @WIZCHIP, i32 0, i32 0), align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = bitcast i8* %65 to i32*
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32 %64, i32* %67, align 4
  %68 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @WIZCHIP, i32 0, i32 0), align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  store i32 %70, i32* %73, align 4
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @WIZCHIP, i32 0, i32 0), align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  store i32 %76, i32* %79, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  store i32 0, i32* %82, align 4
  br label %102

83:                                               ; preds = %2
  %84 = call i32 (...) @wizphy_getphypmode()
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 -1, i32* %3, align 4
  br label %103

88:                                               ; preds = %83
  %89 = load i32, i32* %6, align 4
  %90 = load i8*, i8** %5, align 8
  %91 = bitcast i8* %90 to i32*
  store i32 %89, i32* %91, align 4
  br label %102

92:                                               ; preds = %2
  %93 = call i32 (...) @wizphy_getphylink()
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 -1, i32* %3, align 4
  br label %103

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = load i8*, i8** %5, align 8
  %100 = bitcast i8* %99 to i32*
  store i32 %98, i32* %100, align 4
  br label %102

101:                                              ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %103

102:                                              ; preds = %97, %88, %49, %45, %40, %36, %31, %10
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %101, %96, %87, %25
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wizchip_sw_reset(...) #2

declare dso_local i32 @wizchip_init(i32*, i32*) #2

declare dso_local i32 @wizchip_clrinterrupt(i32) #2

declare dso_local i32 @wizchip_getinterrupt(...) #2

declare dso_local i32 @wizchip_setinterruptmask(i32) #2

declare dso_local i32 @wizchip_getinterruptmask(...) #2

declare dso_local i32 @wizphy_getphypmode(...) #2

declare dso_local i32 @wizphy_getphylink(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
