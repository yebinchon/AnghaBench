; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_names_free.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_names_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { %struct.pool*, %struct.pool* }

@pool_head = common dso_local global %struct.pool* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @names_free() #0 {
  %1 = alloca %struct.pool*, align 8
  %2 = alloca %struct.pool*, align 8
  %3 = load %struct.pool*, %struct.pool** @pool_head, align 8
  %4 = icmp ne %struct.pool* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %28

6:                                                ; preds = %0
  %7 = load %struct.pool*, %struct.pool** @pool_head, align 8
  store %struct.pool* %7, %struct.pool** %1, align 8
  br label %8

8:                                                ; preds = %21, %6
  %9 = load %struct.pool*, %struct.pool** %1, align 8
  %10 = icmp ne %struct.pool* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = load %struct.pool*, %struct.pool** %1, align 8
  %13 = getelementptr inbounds %struct.pool, %struct.pool* %12, i32 0, i32 1
  %14 = load %struct.pool*, %struct.pool** %13, align 8
  %15 = icmp ne %struct.pool* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.pool*, %struct.pool** %1, align 8
  %18 = getelementptr inbounds %struct.pool, %struct.pool* %17, i32 0, i32 1
  %19 = load %struct.pool*, %struct.pool** %18, align 8
  %20 = call i32 @free(%struct.pool* %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.pool*, %struct.pool** %1, align 8
  store %struct.pool* %22, %struct.pool** %2, align 8
  %23 = load %struct.pool*, %struct.pool** %1, align 8
  %24 = getelementptr inbounds %struct.pool, %struct.pool* %23, i32 0, i32 0
  %25 = load %struct.pool*, %struct.pool** %24, align 8
  store %struct.pool* %25, %struct.pool** %1, align 8
  %26 = load %struct.pool*, %struct.pool** %2, align 8
  %27 = call i32 @free(%struct.pool* %26)
  br label %8

28:                                               ; preds = %5, %8
  ret void
}

declare dso_local i32 @free(%struct.pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
