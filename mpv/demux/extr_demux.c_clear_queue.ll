; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_clear_queue.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_clear_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_queue = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32*, i32*, i32*, %struct.demux_packet*, i64, %struct.demux_stream* }
%struct.demux_packet = type { %struct.demux_packet*, i64 }
%struct.demux_stream = type { %struct.demux_packet*, %struct.demux_internal* }
%struct.demux_internal = type { i32 }

@MP_NOPTS_VALUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_queue*)* @clear_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_queue(%struct.demux_queue* %0) #0 {
  %2 = alloca %struct.demux_queue*, align 8
  %3 = alloca %struct.demux_stream*, align 8
  %4 = alloca %struct.demux_internal*, align 8
  %5 = alloca %struct.demux_packet*, align 8
  %6 = alloca %struct.demux_packet*, align 8
  store %struct.demux_queue* %0, %struct.demux_queue** %2, align 8
  %7 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %8 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %7, i32 0, i32 15
  %9 = load %struct.demux_stream*, %struct.demux_stream** %8, align 8
  store %struct.demux_stream* %9, %struct.demux_stream** %3, align 8
  %10 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %11 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %10, i32 0, i32 1
  %12 = load %struct.demux_internal*, %struct.demux_internal** %11, align 8
  store %struct.demux_internal* %12, %struct.demux_internal** %4, align 8
  %13 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %14 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %13, i32 0, i32 13
  %15 = load %struct.demux_packet*, %struct.demux_packet** %14, align 8
  %16 = icmp ne %struct.demux_packet* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %19 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %18, i32 0, i32 14
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %22 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %21, i32 0, i32 13
  %23 = load %struct.demux_packet*, %struct.demux_packet** %22, align 8
  %24 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %20, %25
  %27 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %28 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  br label %33

33:                                               ; preds = %17, %1
  %34 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %35 = call i32 @free_index(%struct.demux_queue* %34)
  %36 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %37 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %36, i32 0, i32 13
  %38 = load %struct.demux_packet*, %struct.demux_packet** %37, align 8
  store %struct.demux_packet* %38, %struct.demux_packet** %5, align 8
  br label %39

39:                                               ; preds = %42, %33
  %40 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %41 = icmp ne %struct.demux_packet* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %44 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %43, i32 0, i32 0
  %45 = load %struct.demux_packet*, %struct.demux_packet** %44, align 8
  store %struct.demux_packet* %45, %struct.demux_packet** %6, align 8
  %46 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %47 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %46, i32 0, i32 0
  %48 = load %struct.demux_packet*, %struct.demux_packet** %47, align 8
  %49 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %50 = icmp ne %struct.demux_packet* %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %54 = call i32 @talloc_free(%struct.demux_packet* %53)
  %55 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  store %struct.demux_packet* %55, %struct.demux_packet** %5, align 8
  br label %39

56:                                               ; preds = %39
  %57 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %58 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %57, i32 0, i32 12
  store i32* null, i32** %58, align 8
  %59 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %60 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %59, i32 0, i32 13
  store %struct.demux_packet* null, %struct.demux_packet** %60, align 8
  %61 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %62 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %61, i32 0, i32 11
  store i32* null, i32** %62, align 8
  %63 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %64 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %63, i32 0, i32 10
  store i32* null, i32** %64, align 8
  %65 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %66 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %67 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %66, i32 0, i32 7
  store i8* %65, i8** %67, align 8
  %68 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %69 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %68, i32 0, i32 8
  store i8* %65, i8** %69, align 8
  %70 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %71 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %70, i32 0, i32 9
  store i8* %65, i8** %71, align 8
  %72 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %73 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %75 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %77 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %76, i32 0, i32 2
  store i32 -1, i32* %77, align 8
  %78 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %79 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %80 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  %81 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %82 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %81, i32 0, i32 6
  store i8* %78, i8** %82, align 8
  %83 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %84 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %83, i32 0, i32 3
  store i32 0, i32* %84, align 4
  %85 = load %struct.demux_queue*, %struct.demux_queue** %2, align 8
  %86 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %85, i32 0, i32 4
  store i32 0, i32* %86, align 8
  ret void
}

declare dso_local i32 @free_index(%struct.demux_queue*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @talloc_free(%struct.demux_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
