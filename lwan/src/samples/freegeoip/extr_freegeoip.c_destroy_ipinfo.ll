; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/freegeoip/extr_freegeoip.c_destroy_ipinfo.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/freegeoip/extr_freegeoip.c_destroy_ipinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.ip_info = type { %struct.ip_info*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.ip_info*, %struct.ip_info* }
%struct.TYPE_6__ = type { %struct.ip_info*, %struct.ip_info* }
%struct.TYPE_5__ = type { %struct.ip_info*, %struct.ip_info* }
%struct.TYPE_8__ = type { %struct.ip_info*, %struct.ip_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_entry*, i8*)* @destroy_ipinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_ipinfo(%struct.cache_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ip_info*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %7 = bitcast %struct.cache_entry* %6 to %struct.ip_info*
  store %struct.ip_info* %7, %struct.ip_info** %5, align 8
  %8 = load %struct.ip_info*, %struct.ip_info** %5, align 8
  %9 = icmp ne %struct.ip_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %58

11:                                               ; preds = %2
  %12 = load %struct.ip_info*, %struct.ip_info** %5, align 8
  %13 = getelementptr inbounds %struct.ip_info, %struct.ip_info* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.ip_info*, %struct.ip_info** %14, align 8
  %16 = call i32 @free(%struct.ip_info* %15)
  %17 = load %struct.ip_info*, %struct.ip_info** %5, align 8
  %18 = getelementptr inbounds %struct.ip_info, %struct.ip_info* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.ip_info*, %struct.ip_info** %19, align 8
  %21 = call i32 @free(%struct.ip_info* %20)
  %22 = load %struct.ip_info*, %struct.ip_info** %5, align 8
  %23 = getelementptr inbounds %struct.ip_info, %struct.ip_info* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.ip_info*, %struct.ip_info** %24, align 8
  %26 = call i32 @free(%struct.ip_info* %25)
  %27 = load %struct.ip_info*, %struct.ip_info** %5, align 8
  %28 = getelementptr inbounds %struct.ip_info, %struct.ip_info* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.ip_info*, %struct.ip_info** %29, align 8
  %31 = call i32 @free(%struct.ip_info* %30)
  %32 = load %struct.ip_info*, %struct.ip_info** %5, align 8
  %33 = getelementptr inbounds %struct.ip_info, %struct.ip_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.ip_info*, %struct.ip_info** %34, align 8
  %36 = call i32 @free(%struct.ip_info* %35)
  %37 = load %struct.ip_info*, %struct.ip_info** %5, align 8
  %38 = getelementptr inbounds %struct.ip_info, %struct.ip_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.ip_info*, %struct.ip_info** %39, align 8
  %41 = call i32 @free(%struct.ip_info* %40)
  %42 = load %struct.ip_info*, %struct.ip_info** %5, align 8
  %43 = getelementptr inbounds %struct.ip_info, %struct.ip_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.ip_info*, %struct.ip_info** %44, align 8
  %46 = call i32 @free(%struct.ip_info* %45)
  %47 = load %struct.ip_info*, %struct.ip_info** %5, align 8
  %48 = getelementptr inbounds %struct.ip_info, %struct.ip_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.ip_info*, %struct.ip_info** %49, align 8
  %51 = call i32 @free(%struct.ip_info* %50)
  %52 = load %struct.ip_info*, %struct.ip_info** %5, align 8
  %53 = getelementptr inbounds %struct.ip_info, %struct.ip_info* %52, i32 0, i32 0
  %54 = load %struct.ip_info*, %struct.ip_info** %53, align 8
  %55 = call i32 @free(%struct.ip_info* %54)
  %56 = load %struct.ip_info*, %struct.ip_info** %5, align 8
  %57 = call i32 @free(%struct.ip_info* %56)
  br label %58

58:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @free(%struct.ip_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
