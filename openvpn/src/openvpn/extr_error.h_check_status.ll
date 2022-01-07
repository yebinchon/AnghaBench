; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_error.h_check_status.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_error.h_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { i32 }
%struct.tuntap = type { i32 }

@x_cs_verbose_level = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.link_socket*, %struct.tuntap*)* @check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_status(i32 %0, i8* %1, %struct.link_socket* %2, %struct.tuntap* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.link_socket*, align 8
  %8 = alloca %struct.tuntap*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.link_socket* %2, %struct.link_socket** %7, align 8
  store %struct.tuntap* %3, %struct.tuntap** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = load i32, i32* @x_cs_verbose_level, align 4
  %13 = call i64 @check_debug_level(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11, %4
  %16 = load i32, i32* %5, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.link_socket*, %struct.link_socket** %7, align 8
  %19 = load %struct.tuntap*, %struct.tuntap** %8, align 8
  %20 = call i32 @x_check_status(i32 %16, i8* %17, %struct.link_socket* %18, %struct.tuntap* %19)
  br label %21

21:                                               ; preds = %15, %11
  ret void
}

declare dso_local i64 @check_debug_level(i32) #1

declare dso_local i32 @x_check_status(i32, i8*, %struct.link_socket*, %struct.tuntap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
