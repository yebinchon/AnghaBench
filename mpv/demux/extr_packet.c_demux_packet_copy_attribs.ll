; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_packet.c_demux_packet_copy_attribs.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_packet.c_demux_packet_copy_attribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_packet = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demux_packet_copy_attribs(%struct.demux_packet* %0, %struct.demux_packet* %1) #0 {
  %3 = alloca %struct.demux_packet*, align 8
  %4 = alloca %struct.demux_packet*, align 8
  store %struct.demux_packet* %0, %struct.demux_packet** %3, align 8
  store %struct.demux_packet* %1, %struct.demux_packet** %4, align 8
  %5 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %6 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %5, i32 0, i32 11
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %9 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %8, i32 0, i32 11
  store i32 %7, i32* %9, align 4
  %10 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %11 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %14 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %13, i32 0, i32 10
  store i32 %12, i32* %14, align 4
  %15 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %16 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %19 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %18, i32 0, i32 9
  store i32 %17, i32* %19, align 4
  %20 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %21 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %24 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 4
  %25 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %26 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %29 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %31 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %34 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %36 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %39 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %41 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %44 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %46 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %49 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %51 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %54 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %56 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %59 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %61 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %64 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
