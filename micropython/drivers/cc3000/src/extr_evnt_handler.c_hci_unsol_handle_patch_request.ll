; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_evnt_handler.c_hci_unsol_handle_patch_request.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_evnt_handler.c_hci_unsol_handle_patch_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* (i32*)*, i32* (i32*)*, i32* (i32*)*, i32 }

@HCI_EVENT_HEADER_SIZE = common dso_local global i64 0, align 8
@tSLInformation = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_unsol_handle_patch_request(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i64, i64* @HCI_EVENT_HEADER_SIZE, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  store i32* %8, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %62 [
    i32 129, label %11
    i32 128, label %28
    i32 130, label %45
  ]

11:                                               ; preds = %1
  %12 = load i32* (i32*)*, i32* (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 0), align 8
  %13 = icmp ne i32* (i32*)* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i32* (i32*)*, i32* (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 0), align 8
  %16 = call i32* %15(i32* %4)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 3), align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @hci_patch_send(i32 129, i32 %20, i32* %21, i32 %22)
  br label %62

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %11
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 3), align 8
  %27 = call i32 @hci_patch_send(i32 129, i32 %26, i32* null, i32 0)
  br label %62

28:                                               ; preds = %1
  %29 = load i32* (i32*)*, i32* (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 1), align 8
  %30 = icmp ne i32* (i32*)* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32* (i32*)*, i32* (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 1), align 8
  %33 = call i32* %32(i32* %4)
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 3), align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @hci_patch_send(i32 128, i32 %37, i32* %38, i32 %39)
  br label %62

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 3), align 8
  %44 = call i32 @hci_patch_send(i32 128, i32 %43, i32* null, i32 0)
  br label %62

45:                                               ; preds = %1
  %46 = load i32* (i32*)*, i32* (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 2), align 8
  %47 = icmp ne i32* (i32*)* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32* (i32*)*, i32* (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 2), align 8
  %50 = call i32* %49(i32* %4)
  store i32* %50, i32** %5, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 3), align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @hci_patch_send(i32 130, i32 %54, i32* %55, i32 %56)
  br label %62

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %45
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 3), align 8
  %61 = call i32 @hci_patch_send(i32 130, i32 %60, i32* null, i32 0)
  br label %62

62:                                               ; preds = %19, %36, %53, %1, %59, %42, %25
  ret void
}

declare dso_local i32 @hci_patch_send(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
