; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_cb_notify_deviceid_delete.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_cb_notify_deviceid_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notify_deviceid4 = type { i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"notify_deviceid.delete.layouttype\00", align 1
@PNFS_DEVICEID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"notify_deviceid.delete.deviceid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.notify_deviceid4*)* @cb_notify_deviceid_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cb_notify_deviceid_delete(i32* %0, %struct.notify_deviceid4* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.notify_deviceid4*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.notify_deviceid4* %1, %struct.notify_deviceid4** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.notify_deviceid4*, %struct.notify_deviceid4** %4, align 8
  %8 = getelementptr inbounds %struct.notify_deviceid4, %struct.notify_deviceid4* %7, i32 0, i32 1
  %9 = call i64 @xdr_u_int32_t(i32* %6, i32* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @CBX_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %27

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.notify_deviceid4*, %struct.notify_deviceid4** %4, align 8
  %17 = getelementptr inbounds %struct.notify_deviceid4, %struct.notify_deviceid4* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load i32, i32* @PNFS_DEVICEID_SIZE, align 4
  %21 = call i64 @xdr_opaque(i32* %15, i8* %19, i32 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %14
  %25 = call i32 @CBX_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %27

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %24, %12
  %28 = load i64, i64* %5, align 8
  ret i64 %28
}

declare dso_local i64 @xdr_u_int32_t(i32*, i32*) #1

declare dso_local i32 @CBX_ERR(i8*) #1

declare dso_local i64 @xdr_opaque(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
