; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/ffs-aio-example/multibuff/host_app/extr_test.c_test_exit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/ffs-aio-example/multibuff/host_app/extr_test.c_test_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_state = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_exit(%struct.test_state* %0) #0 {
  %2 = alloca %struct.test_state*, align 8
  store %struct.test_state* %0, %struct.test_state** %2, align 8
  %3 = load %struct.test_state*, %struct.test_state** %2, align 8
  %4 = getelementptr inbounds %struct.test_state, %struct.test_state* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @libusb_release_interface(i32 %5, i32 0)
  %7 = load %struct.test_state*, %struct.test_state** %2, align 8
  %8 = getelementptr inbounds %struct.test_state, %struct.test_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.test_state*, %struct.test_state** %2, align 8
  %13 = getelementptr inbounds %struct.test_state, %struct.test_state* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @libusb_attach_kernel_driver(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.test_state*, %struct.test_state** %2, align 8
  %18 = getelementptr inbounds %struct.test_state, %struct.test_state* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @libusb_close(i32 %19)
  %21 = load %struct.test_state*, %struct.test_state** %2, align 8
  %22 = getelementptr inbounds %struct.test_state, %struct.test_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @libusb_exit(i32 %23)
  ret void
}

declare dso_local i32 @libusb_release_interface(i32, i32) #1

declare dso_local i32 @libusb_attach_kernel_driver(i32, i32) #1

declare dso_local i32 @libusb_close(i32) #1

declare dso_local i32 @libusb_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
