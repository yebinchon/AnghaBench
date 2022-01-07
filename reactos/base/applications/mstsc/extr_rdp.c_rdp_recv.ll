; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_recv.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32* }

@rdp_recv.rdp_s = internal global %struct.TYPE_7__* null, align 8
@g_next_packet = common dso_local global i32* null, align 8
@g_packetno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*)* @rdp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @rdp_recv(i32* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rdp_recv.rdp_s, align 8
  %8 = icmp eq %struct.TYPE_7__* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** @g_next_packet, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rdp_recv.rdp_s, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp uge i32* %10, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load i32*, i32** @g_next_packet, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %15, %9, %1
  %19 = call %struct.TYPE_7__* @sec_recv(i32* %6)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** @rdp_recv.rdp_s, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rdp_recv.rdp_s, align 8
  %21 = icmp eq %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %74

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 255
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rdp_recv.rdp_s, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** @g_next_packet, align 8
  %30 = load i32*, i32** %3, align 8
  store i32 0, i32* %30, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rdp_recv.rdp_s, align 8
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %2, align 8
  br label %74

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rdp_recv.rdp_s, align 8
  %37 = call i32 @rdp5_process(%struct.TYPE_7__* %36)
  %38 = load i32*, i32** %3, align 8
  store i32 0, i32* %38, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rdp_recv.rdp_s, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %2, align 8
  br label %74

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rdp_recv.rdp_s, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** @g_next_packet, align 8
  br label %49

45:                                               ; preds = %15
  %46 = load i32*, i32** @g_next_packet, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rdp_recv.rdp_s, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rdp_recv.rdp_s, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @in_uint16_le(%struct.TYPE_7__* %50, i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 32768
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32*, i32** @g_next_packet, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 8
  store i32* %57, i32** @g_next_packet, align 8
  %58 = load i32*, i32** %3, align 8
  store i32 0, i32* %58, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rdp_recv.rdp_s, align 8
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %2, align 8
  br label %74

60:                                               ; preds = %49
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rdp_recv.rdp_s, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @in_uint16_le(%struct.TYPE_7__* %61, i32 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rdp_recv.rdp_s, align 8
  %65 = call i32 @in_uint8s(%struct.TYPE_7__* %64, i32 2)
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, 15
  %68 = load i32*, i32** %3, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32*, i32** @g_next_packet, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** @g_next_packet, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rdp_recv.rdp_s, align 8
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %2, align 8
  br label %74

74:                                               ; preds = %60, %55, %35, %26, %22
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %75
}

declare dso_local %struct.TYPE_7__* @sec_recv(i32*) #1

declare dso_local i32 @rdp5_process(%struct.TYPE_7__*) #1

declare dso_local i32 @in_uint16_le(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @in_uint8s(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
