; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_read_xv_csp.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_read_xv_csp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.xvctx* }
%struct.xvctx = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"bt_709\00", align 1
@MP_CSP_BT_709 = common dso_local global i64 0, align 8
@MP_CSP_BT_601 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @read_xv_csp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_xv_csp(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.xvctx*, align 8
  %4 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %5 = load %struct.vo*, %struct.vo** %2, align 8
  %6 = getelementptr inbounds %struct.vo, %struct.vo* %5, i32 0, i32 0
  %7 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  store %struct.xvctx* %7, %struct.xvctx** %3, align 8
  %8 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %9 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.vo*, %struct.vo** %2, align 8
  %11 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %12 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @xv_get_eq(%struct.vo* %10, i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %4)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 100
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64, i64* @MP_CSP_BT_709, align 8
  br label %23

21:                                               ; preds = %16
  %22 = load i64, i64* @MP_CSP_BT_601, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  %25 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %26 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %1
  ret void
}

declare dso_local i64 @xv_get_eq(%struct.vo*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
