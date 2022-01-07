; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lwip/api/extr_tcpip.c_tcpip_callback_with_block.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lwip/api/extr_tcpip.c_tcpip_callback_with_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpip_msg = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }

@mbox = common dso_local global i32 0, align 4
@MEMP_TCPIP_MSG_API = common dso_local global i32 0, align 4
@ERR_MEM = common dso_local global i64 0, align 8
@TCPIP_MSG_CALLBACK = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@ERR_VAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tcpip_callback_with_block(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tcpip_msg*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = call i64 @sys_mbox_valid(i32* @mbox)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %3
  %12 = load i32, i32* @MEMP_TCPIP_MSG_API, align 4
  %13 = call i64 @memp_malloc(i32 %12)
  %14 = inttoptr i64 %13 to %struct.tcpip_msg*
  store %struct.tcpip_msg* %14, %struct.tcpip_msg** %8, align 8
  %15 = load %struct.tcpip_msg*, %struct.tcpip_msg** %8, align 8
  %16 = icmp eq %struct.tcpip_msg* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i64, i64* @ERR_MEM, align 8
  store i64 %18, i64* %4, align 8
  br label %53

19:                                               ; preds = %11
  %20 = load i32, i32* @TCPIP_MSG_CALLBACK, align 4
  %21 = load %struct.tcpip_msg*, %struct.tcpip_msg** %8, align 8
  %22 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.tcpip_msg*, %struct.tcpip_msg** %8, align 8
  %25 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.tcpip_msg*, %struct.tcpip_msg** %8, align 8
  %30 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i8* %28, i8** %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load %struct.tcpip_msg*, %struct.tcpip_msg** %8, align 8
  %37 = call i32 @sys_mbox_post(i32* @mbox, %struct.tcpip_msg* %36)
  br label %49

38:                                               ; preds = %19
  %39 = load %struct.tcpip_msg*, %struct.tcpip_msg** %8, align 8
  %40 = call i64 @sys_mbox_trypost(i32* @mbox, %struct.tcpip_msg* %39)
  %41 = load i64, i64* @ERR_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* @MEMP_TCPIP_MSG_API, align 4
  %45 = load %struct.tcpip_msg*, %struct.tcpip_msg** %8, align 8
  %46 = call i32 @memp_free(i32 %44, %struct.tcpip_msg* %45)
  %47 = load i64, i64* @ERR_MEM, align 8
  store i64 %47, i64* %4, align 8
  br label %53

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i64, i64* @ERR_OK, align 8
  store i64 %50, i64* %4, align 8
  br label %53

51:                                               ; preds = %3
  %52 = load i64, i64* @ERR_VAL, align 8
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %51, %49, %43, %17
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local i64 @sys_mbox_valid(i32*) #1

declare dso_local i64 @memp_malloc(i32) #1

declare dso_local i32 @sys_mbox_post(i32*, %struct.tcpip_msg*) #1

declare dso_local i64 @sys_mbox_trypost(i32*, %struct.tcpip_msg*) #1

declare dso_local i32 @memp_free(i32, %struct.tcpip_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
