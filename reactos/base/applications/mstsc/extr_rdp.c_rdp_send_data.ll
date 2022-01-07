; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_send_data.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@rdp_hdr = common dso_local global i32 0, align 4
@RDP_PDU_DATA = common dso_local global i32 0, align 4
@g_mcs_userid = common dso_local global i32 0, align 4
@g_rdp_shareid = common dso_local global i32 0, align 4
@g_encryption = common dso_local global i64 0, align 8
@SEC_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @rdp_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdp_send_data(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = load i32, i32* @rdp_hdr, align 4
  %8 = call i32 @s_pop_layer(%struct.TYPE_9__* %6, i32 %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %11, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @out_uint16_le(%struct.TYPE_9__* %16, i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = load i32, i32* @RDP_PDU_DATA, align 4
  %21 = or i32 %20, 16
  %22 = call i32 @out_uint16_le(%struct.TYPE_9__* %19, i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = load i32, i32* @g_mcs_userid, align 4
  %25 = add nsw i32 %24, 1001
  %26 = call i32 @out_uint16_le(%struct.TYPE_9__* %23, i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = load i32, i32* @g_rdp_shareid, align 4
  %29 = call i32 @out_uint32_le(%struct.TYPE_9__* %27, i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = call i32 @out_uint8(%struct.TYPE_9__* %30, i32 0)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i32 @out_uint8(%struct.TYPE_9__* %32, i32 1)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %35, 14
  %37 = call i32 @out_uint16_le(%struct.TYPE_9__* %34, i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @out_uint8(%struct.TYPE_9__* %38, i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = call i32 @out_uint8(%struct.TYPE_9__* %41, i32 0)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = call i32 @out_uint16(%struct.TYPE_9__* %43, i32 0)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = load i64, i64* @g_encryption, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %2
  %49 = load i32, i32* @SEC_ENCRYPT, align 4
  br label %51

50:                                               ; preds = %2
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = call i32 @sec_send(%struct.TYPE_9__* %45, i32 %52)
  ret void
}

declare dso_local i32 @s_pop_layer(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @out_uint16_le(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @out_uint32_le(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @out_uint8(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @out_uint16(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @sec_send(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
