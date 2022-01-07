; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_cb_compound_argop.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_cb_compound_argop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_argop = type { i32, i32 }

@cb_argop_discrim = common dso_local global i32 0, align 4
@NULL_xdrproc_t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cmb:argop.args\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cb_argop*)* @cb_compound_argop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_compound_argop(i32* %0, %struct.cb_argop* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cb_argop*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.cb_argop* %1, %struct.cb_argop** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.cb_argop*, %struct.cb_argop** %4, align 8
  %8 = getelementptr inbounds %struct.cb_argop, %struct.cb_argop* %7, i32 0, i32 1
  %9 = load %struct.cb_argop*, %struct.cb_argop** %4, align 8
  %10 = getelementptr inbounds %struct.cb_argop, %struct.cb_argop* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to i8*
  %12 = load i32, i32* @cb_argop_discrim, align 4
  %13 = load i32, i32* @NULL_xdrproc_t, align 4
  %14 = call i32 @xdr_union(i32* %6, i32* %8, i8* %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 @CBX_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %17
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @xdr_union(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @CBX_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
