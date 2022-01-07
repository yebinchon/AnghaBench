; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_packet.c_demux_packet_estimate_total_size.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_packet.c_demux_packet_estimate_total_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_packet = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @demux_packet_estimate_total_size(%struct.demux_packet* %0) #0 {
  %2 = alloca %struct.demux_packet*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.demux_packet* %0, %struct.demux_packet** %2, align 8
  %5 = call i64 @ROUND_ALLOC(i32 24)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = add i64 %6, 64
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = add i64 %8, 80
  store i64 %9, i64* %3, align 8
  %10 = load %struct.demux_packet*, %struct.demux_packet** %2, align 8
  %11 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %76

14:                                               ; preds = %1
  %15 = load %struct.demux_packet*, %struct.demux_packet** %2, align 8
  %16 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.demux_packet*, %struct.demux_packet** %2, align 8
  %23 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @ROUND_ALLOC(i32 %24)
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %3, align 8
  %28 = call i64 @ROUND_ALLOC(i32 4)
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 64
  store i64 %32, i64* %3, align 8
  %33 = call i64 @ROUND_ALLOC(i32 4)
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %3, align 8
  %36 = call i64 @ROUND_ALLOC(i32 64)
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %3, align 8
  %39 = load %struct.demux_packet*, %struct.demux_packet** %2, align 8
  %40 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i64 @ROUND_ALLOC(i32 %46)
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %72, %14
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.demux_packet*, %struct.demux_packet** %2, align 8
  %53 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %50
  %59 = load %struct.demux_packet*, %struct.demux_packet** %2, align 8
  %60 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ROUND_ALLOC(i32 %68)
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %3, align 8
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %50

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %75, %1
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local i64 @ROUND_ALLOC(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
