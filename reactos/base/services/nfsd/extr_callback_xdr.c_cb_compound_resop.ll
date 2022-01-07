; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_cb_compound_resop.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_cb_compound_resop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_resop = type { i32, i32, i32 }

@cb_resop_discrim = common dso_local global i32 0, align 4
@NULL_xdrproc_t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"resop.res\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cb_resop*)* @cb_compound_resop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_compound_resop(i32* %0, %struct.cb_resop* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cb_resop*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.cb_resop* %1, %struct.cb_resop** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.cb_resop*, %struct.cb_resop** %4, align 8
  %7 = getelementptr inbounds %struct.cb_resop, %struct.cb_resop* %6, i32 0, i32 2
  %8 = load %struct.cb_resop*, %struct.cb_resop** %4, align 8
  %9 = getelementptr inbounds %struct.cb_resop, %struct.cb_resop* %8, i32 0, i32 1
  %10 = bitcast i32* %9 to i8*
  %11 = load i32, i32* @cb_resop_discrim, align 4
  %12 = load i32, i32* @NULL_xdrproc_t, align 4
  %13 = call i32 @xdr_union(i32* %5, i32* %7, i8* %10, i32 %11, i32 %12)
  %14 = load %struct.cb_resop*, %struct.cb_resop** %4, align 8
  %15 = getelementptr inbounds %struct.cb_resop, %struct.cb_resop* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.cb_resop*, %struct.cb_resop** %4, align 8
  %17 = getelementptr inbounds %struct.cb_resop, %struct.cb_resop* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = call i32 @CBX_ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %20
  %24 = load %struct.cb_resop*, %struct.cb_resop** %4, align 8
  %25 = getelementptr inbounds %struct.cb_resop, %struct.cb_resop* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  ret i32 %26
}

declare dso_local i32 @xdr_union(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @CBX_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
