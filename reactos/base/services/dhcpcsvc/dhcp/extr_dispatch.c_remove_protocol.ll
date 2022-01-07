; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dispatch.c_remove_protocol.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dispatch.c_remove_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeout = type { %struct.timeout*, %struct.interface_info* }
%struct.interface_info = type { i32 }
%struct.protocol = type { %struct.protocol*, %struct.interface_info* }

@timeouts = common dso_local global %struct.timeout* null, align 8
@free_timeouts = common dso_local global %struct.timeout* null, align 8
@protocols = common dso_local global %struct.protocol* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_protocol(%struct.protocol* %0) #0 {
  %2 = alloca %struct.protocol*, align 8
  %3 = alloca %struct.protocol*, align 8
  %4 = alloca %struct.protocol*, align 8
  %5 = alloca %struct.protocol*, align 8
  %6 = alloca %struct.interface_info*, align 8
  %7 = alloca %struct.timeout*, align 8
  %8 = alloca %struct.timeout*, align 8
  %9 = alloca %struct.timeout*, align 8
  store %struct.protocol* %0, %struct.protocol** %2, align 8
  %10 = load %struct.protocol*, %struct.protocol** %2, align 8
  %11 = getelementptr inbounds %struct.protocol, %struct.protocol* %10, i32 0, i32 1
  %12 = load %struct.interface_info*, %struct.interface_info** %11, align 8
  store %struct.interface_info* %12, %struct.interface_info** %6, align 8
  store %struct.timeout* null, %struct.timeout** %7, align 8
  %13 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  store %struct.timeout* %13, %struct.timeout** %8, align 8
  br label %14

14:                                               ; preds = %49, %1
  %15 = load %struct.timeout*, %struct.timeout** %8, align 8
  %16 = icmp ne %struct.timeout* %15, null
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  %18 = load %struct.timeout*, %struct.timeout** %8, align 8
  %19 = getelementptr inbounds %struct.timeout, %struct.timeout* %18, i32 0, i32 1
  %20 = load %struct.interface_info*, %struct.interface_info** %19, align 8
  %21 = load %struct.interface_info*, %struct.interface_info** %6, align 8
  %22 = icmp eq %struct.interface_info* %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load %struct.timeout*, %struct.timeout** %7, align 8
  %25 = icmp ne %struct.timeout* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.timeout*, %struct.timeout** %8, align 8
  %28 = getelementptr inbounds %struct.timeout, %struct.timeout* %27, i32 0, i32 0
  %29 = load %struct.timeout*, %struct.timeout** %28, align 8
  %30 = load %struct.timeout*, %struct.timeout** %7, align 8
  %31 = getelementptr inbounds %struct.timeout, %struct.timeout* %30, i32 0, i32 0
  store %struct.timeout* %29, %struct.timeout** %31, align 8
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.timeout*, %struct.timeout** %8, align 8
  %34 = getelementptr inbounds %struct.timeout, %struct.timeout* %33, i32 0, i32 0
  %35 = load %struct.timeout*, %struct.timeout** %34, align 8
  store %struct.timeout* %35, %struct.timeout** @timeouts, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.timeout*, %struct.timeout** %8, align 8
  %38 = getelementptr inbounds %struct.timeout, %struct.timeout* %37, i32 0, i32 0
  %39 = load %struct.timeout*, %struct.timeout** %38, align 8
  store %struct.timeout* %39, %struct.timeout** %9, align 8
  %40 = load %struct.timeout*, %struct.timeout** @free_timeouts, align 8
  %41 = load %struct.timeout*, %struct.timeout** %8, align 8
  %42 = getelementptr inbounds %struct.timeout, %struct.timeout* %41, i32 0, i32 0
  store %struct.timeout* %40, %struct.timeout** %42, align 8
  %43 = load %struct.timeout*, %struct.timeout** %8, align 8
  store %struct.timeout* %43, %struct.timeout** @free_timeouts, align 8
  br label %49

44:                                               ; preds = %17
  %45 = load %struct.timeout*, %struct.timeout** %8, align 8
  %46 = getelementptr inbounds %struct.timeout, %struct.timeout* %45, i32 0, i32 0
  %47 = load %struct.timeout*, %struct.timeout** %46, align 8
  store %struct.timeout* %47, %struct.timeout** %9, align 8
  %48 = load %struct.timeout*, %struct.timeout** %8, align 8
  store %struct.timeout* %48, %struct.timeout** %7, align 8
  br label %49

49:                                               ; preds = %44, %36
  %50 = load %struct.timeout*, %struct.timeout** %9, align 8
  store %struct.timeout* %50, %struct.timeout** %8, align 8
  br label %14

51:                                               ; preds = %14
  store %struct.protocol* null, %struct.protocol** %5, align 8
  %52 = load %struct.protocol*, %struct.protocol** @protocols, align 8
  store %struct.protocol* %52, %struct.protocol** %3, align 8
  br label %53

53:                                               ; preds = %80, %51
  %54 = load %struct.protocol*, %struct.protocol** %3, align 8
  %55 = icmp ne %struct.protocol* %54, null
  br i1 %55, label %56, label %82

56:                                               ; preds = %53
  %57 = load %struct.protocol*, %struct.protocol** %3, align 8
  %58 = getelementptr inbounds %struct.protocol, %struct.protocol* %57, i32 0, i32 0
  %59 = load %struct.protocol*, %struct.protocol** %58, align 8
  store %struct.protocol* %59, %struct.protocol** %4, align 8
  %60 = load %struct.protocol*, %struct.protocol** %3, align 8
  %61 = load %struct.protocol*, %struct.protocol** %2, align 8
  %62 = icmp eq %struct.protocol* %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %56
  %64 = load %struct.protocol*, %struct.protocol** %5, align 8
  %65 = icmp ne %struct.protocol* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.protocol*, %struct.protocol** %3, align 8
  %68 = getelementptr inbounds %struct.protocol, %struct.protocol* %67, i32 0, i32 0
  %69 = load %struct.protocol*, %struct.protocol** %68, align 8
  %70 = load %struct.protocol*, %struct.protocol** %5, align 8
  %71 = getelementptr inbounds %struct.protocol, %struct.protocol* %70, i32 0, i32 0
  store %struct.protocol* %69, %struct.protocol** %71, align 8
  br label %76

72:                                               ; preds = %63
  %73 = load %struct.protocol*, %struct.protocol** %3, align 8
  %74 = getelementptr inbounds %struct.protocol, %struct.protocol* %73, i32 0, i32 0
  %75 = load %struct.protocol*, %struct.protocol** %74, align 8
  store %struct.protocol* %75, %struct.protocol** @protocols, align 8
  br label %76

76:                                               ; preds = %72, %66
  %77 = load %struct.protocol*, %struct.protocol** %3, align 8
  %78 = call i32 @free(%struct.protocol* %77)
  br label %79

79:                                               ; preds = %76, %56
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.protocol*, %struct.protocol** %4, align 8
  store %struct.protocol* %81, %struct.protocol** %3, align 8
  br label %53

82:                                               ; preds = %53
  ret void
}

declare dso_local i32 @free(%struct.protocol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
