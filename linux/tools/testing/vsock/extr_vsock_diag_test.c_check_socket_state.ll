; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/vsock/extr_vsock_diag_test.c_check_socket_state.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/vsock/extr_vsock_diag_test.c_check_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_stat = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"expected socket state %#x, got %#x\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsock_stat*, i64)* @check_socket_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_socket_state(%struct.vsock_stat* %0, i64 %1) #0 {
  %3 = alloca %struct.vsock_stat*, align 8
  %4 = alloca i64, align 8
  store %struct.vsock_stat* %0, %struct.vsock_stat** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.vsock_stat*, %struct.vsock_stat** %3, align 8
  %6 = getelementptr inbounds %struct.vsock_stat, %struct.vsock_stat* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.vsock_stat*, %struct.vsock_stat** %3, align 8
  %15 = getelementptr inbounds %struct.vsock_stat, %struct.vsock_stat* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %17)
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @exit(i32 %19) #3
  unreachable

21:                                               ; preds = %2
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i64, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
