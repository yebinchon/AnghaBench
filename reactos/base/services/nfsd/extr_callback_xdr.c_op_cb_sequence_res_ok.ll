; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_op_cb_sequence_res_ok.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_op_cb_sequence_res_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_sequence_res_ok = type { i32, i32, i32, i32, i32 }

@NFS4_SESSIONID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"sequence_res.sessionid\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"sequence_res.sequenceid\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"sequence_res.slotid\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"sequence_res.highest_slotid\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"sequence_res.target_highest_slotid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.cb_sequence_res_ok*)* @op_cb_sequence_res_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @op_cb_sequence_res_ok(i32* %0, %struct.cb_sequence_res_ok* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cb_sequence_res_ok*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.cb_sequence_res_ok* %1, %struct.cb_sequence_res_ok** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.cb_sequence_res_ok*, %struct.cb_sequence_res_ok** %4, align 8
  %8 = getelementptr inbounds %struct.cb_sequence_res_ok, %struct.cb_sequence_res_ok* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @NFS4_SESSIONID_SIZE, align 4
  %11 = call i64 @xdr_opaque(i32* %6, i32 %9, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 @CBX_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %53

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.cb_sequence_res_ok*, %struct.cb_sequence_res_ok** %4, align 8
  %19 = getelementptr inbounds %struct.cb_sequence_res_ok, %struct.cb_sequence_res_ok* %18, i32 0, i32 3
  %20 = call i64 @xdr_u_int32_t(i32* %17, i32* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = call i32 @CBX_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %53

25:                                               ; preds = %16
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.cb_sequence_res_ok*, %struct.cb_sequence_res_ok** %4, align 8
  %28 = getelementptr inbounds %struct.cb_sequence_res_ok, %struct.cb_sequence_res_ok* %27, i32 0, i32 2
  %29 = call i64 @xdr_u_int32_t(i32* %26, i32* %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = call i32 @CBX_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %53

34:                                               ; preds = %25
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.cb_sequence_res_ok*, %struct.cb_sequence_res_ok** %4, align 8
  %37 = getelementptr inbounds %struct.cb_sequence_res_ok, %struct.cb_sequence_res_ok* %36, i32 0, i32 1
  %38 = call i64 @xdr_u_int32_t(i32* %35, i32* %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = call i32 @CBX_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %53

43:                                               ; preds = %34
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.cb_sequence_res_ok*, %struct.cb_sequence_res_ok** %4, align 8
  %46 = getelementptr inbounds %struct.cb_sequence_res_ok, %struct.cb_sequence_res_ok* %45, i32 0, i32 0
  %47 = call i64 @xdr_u_int32_t(i32* %44, i32* %46)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = call i32 @CBX_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %50, %41, %32, %23, %14
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local i64 @xdr_opaque(i32*, i32, i32) #1

declare dso_local i32 @CBX_ERR(i8*) #1

declare dso_local i64 @xdr_u_int32_t(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
