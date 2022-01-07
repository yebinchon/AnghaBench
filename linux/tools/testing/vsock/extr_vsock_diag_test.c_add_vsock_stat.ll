; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/vsock/extr_vsock_diag_test.c_add_vsock_stat.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/vsock/extr_vsock_diag_test.c_add_vsock_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.vsock_diag_msg = type { i32 }
%struct.vsock_stat = type { i32, %struct.vsock_diag_msg }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, %struct.vsock_diag_msg*)* @add_vsock_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_vsock_stat(%struct.list_head* %0, %struct.vsock_diag_msg* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.vsock_diag_msg*, align 8
  %5 = alloca %struct.vsock_stat*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store %struct.vsock_diag_msg* %1, %struct.vsock_diag_msg** %4, align 8
  %6 = call %struct.vsock_stat* @malloc(i32 8)
  store %struct.vsock_stat* %6, %struct.vsock_stat** %5, align 8
  %7 = load %struct.vsock_stat*, %struct.vsock_stat** %5, align 8
  %8 = icmp ne %struct.vsock_stat* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EXIT_FAILURE, align 4
  %12 = call i32 @exit(i32 %11) #4
  unreachable

13:                                               ; preds = %2
  %14 = load %struct.vsock_stat*, %struct.vsock_stat** %5, align 8
  %15 = getelementptr inbounds %struct.vsock_stat, %struct.vsock_stat* %14, i32 0, i32 1
  %16 = load %struct.vsock_diag_msg*, %struct.vsock_diag_msg** %4, align 8
  %17 = bitcast %struct.vsock_diag_msg* %15 to i8*
  %18 = bitcast %struct.vsock_diag_msg* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load %struct.vsock_stat*, %struct.vsock_stat** %5, align 8
  %20 = getelementptr inbounds %struct.vsock_stat, %struct.vsock_stat* %19, i32 0, i32 0
  %21 = load %struct.list_head*, %struct.list_head** %3, align 8
  %22 = call i32 @list_add_tail(i32* %20, %struct.list_head* %21)
  ret void
}

declare dso_local %struct.vsock_stat* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
