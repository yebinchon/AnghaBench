; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_process_io.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_process_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SOCKET_WRITE = common dso_local global i32 0, align 4
@TUN_WRITE = common dso_local global i32 0, align 4
@SOCKET_READ = common dso_local global i32 0, align 4
@TUN_READ = common dso_local global i32 0, align 4
@MANAGEMENT_READ = common dso_local global i32 0, align 4
@MANAGEMENT_WRITE = common dso_local global i32 0, align 4
@management = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_io(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  %4 = load %struct.context*, %struct.context** %2, align 8
  %5 = getelementptr inbounds %struct.context, %struct.context* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SOCKET_WRITE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.context*, %struct.context** %2, align 8
  %14 = call i32 @process_outgoing_link(%struct.context* %13)
  br label %56

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @TUN_WRITE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.context*, %struct.context** %2, align 8
  %22 = call i32 @process_outgoing_tun(%struct.context* %21)
  br label %55

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SOCKET_READ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.context*, %struct.context** %2, align 8
  %30 = call i32 @read_incoming_link(%struct.context* %29)
  %31 = load %struct.context*, %struct.context** %2, align 8
  %32 = call i32 @IS_SIG(%struct.context* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load %struct.context*, %struct.context** %2, align 8
  %36 = call i32 @process_incoming_link(%struct.context* %35)
  br label %37

37:                                               ; preds = %34, %28
  br label %54

38:                                               ; preds = %23
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @TUN_READ, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.context*, %struct.context** %2, align 8
  %45 = call i32 @read_incoming_tun(%struct.context* %44)
  %46 = load %struct.context*, %struct.context** %2, align 8
  %47 = call i32 @IS_SIG(%struct.context* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load %struct.context*, %struct.context** %2, align 8
  %51 = call i32 @process_incoming_tun(%struct.context* %50)
  br label %52

52:                                               ; preds = %49, %43
  br label %53

53:                                               ; preds = %52, %38
  br label %54

54:                                               ; preds = %53, %37
  br label %55

55:                                               ; preds = %54, %20
  br label %56

56:                                               ; preds = %55, %12
  ret void
}

declare dso_local i32 @process_outgoing_link(%struct.context*) #1

declare dso_local i32 @process_outgoing_tun(%struct.context*) #1

declare dso_local i32 @read_incoming_link(%struct.context*) #1

declare dso_local i32 @IS_SIG(%struct.context*) #1

declare dso_local i32 @process_incoming_link(%struct.context*) #1

declare dso_local i32 @read_incoming_tun(%struct.context*) #1

declare dso_local i32 @process_incoming_tun(%struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
