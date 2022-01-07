; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/vsock/extr_vsock_diag_test.c_print_vsock_stat.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/vsock/extr_vsock_diag_test.c_print_vsock_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_stat = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" %s %s %s %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.vsock_stat*)* @print_vsock_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_vsock_stat(i32* %0, %struct.vsock_stat* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.vsock_stat*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.vsock_stat* %1, %struct.vsock_stat** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.vsock_stat*, %struct.vsock_stat** %4, align 8
  %7 = getelementptr inbounds %struct.vsock_stat, %struct.vsock_stat* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.vsock_stat*, %struct.vsock_stat** %4, align 8
  %11 = getelementptr inbounds %struct.vsock_stat, %struct.vsock_stat* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @print_vsock_addr(i32* %5, i32 %9, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.vsock_stat*, %struct.vsock_stat** %4, align 8
  %19 = getelementptr inbounds %struct.vsock_stat, %struct.vsock_stat* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vsock_stat*, %struct.vsock_stat** %4, align 8
  %23 = getelementptr inbounds %struct.vsock_stat, %struct.vsock_stat* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @print_vsock_addr(i32* %17, i32 %21, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.vsock_stat*, %struct.vsock_stat** %4, align 8
  %29 = getelementptr inbounds %struct.vsock_stat, %struct.vsock_stat* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @sock_type_str(i32 %31)
  %33 = load %struct.vsock_stat*, %struct.vsock_stat** %4, align 8
  %34 = getelementptr inbounds %struct.vsock_stat, %struct.vsock_stat* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @sock_state_str(i32 %36)
  %38 = load %struct.vsock_stat*, %struct.vsock_stat** %4, align 8
  %39 = getelementptr inbounds %struct.vsock_stat, %struct.vsock_stat* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @sock_shutdown_str(i32 %41)
  %43 = load %struct.vsock_stat*, %struct.vsock_stat** %4, align 8
  %44 = getelementptr inbounds %struct.vsock_stat, %struct.vsock_stat* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %32, i8* %37, i8* %42, i32 %46)
  ret void
}

declare dso_local i32 @print_vsock_addr(i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @sock_type_str(i32) #1

declare dso_local i8* @sock_state_str(i32) #1

declare dso_local i8* @sock_shutdown_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
