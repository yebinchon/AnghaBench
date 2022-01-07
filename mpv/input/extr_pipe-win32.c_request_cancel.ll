; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_pipe-win32.c_request_cancel.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_pipe-win32.c_request_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_input_src = type { %struct.priv* }
%struct.priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"Exiting...\0A\00", align 1
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_input_src*)* @request_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_cancel(%struct.mp_input_src* %0) #0 {
  %2 = alloca %struct.mp_input_src*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.mp_input_src* %0, %struct.mp_input_src** %2, align 8
  %4 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %5 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %4, i32 0, i32 0
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %8 = call i32 @MP_VERBOSE(%struct.mp_input_src* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 2
  %11 = call i32 @atomic_store(i32* %10, i32 1)
  br label %12

12:                                               ; preds = %20, %1
  %13 = load %struct.priv*, %struct.priv** %3, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @CancelIoEx(i32 %15, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %27

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.priv*, %struct.priv** %3, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @WaitForSingleObject(i32 %23, i32 1)
  %25 = load i64, i64* @WAIT_OBJECT_0, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %12, label %27

27:                                               ; preds = %20, %18
  ret void
}

declare dso_local i32 @MP_VERBOSE(%struct.mp_input_src*, i8*) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i64 @CancelIoEx(i32, i32*) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
