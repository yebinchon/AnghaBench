; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-custom.c_rtmp_custom_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-custom.c_rtmp_custom_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_custom = type { %struct.rtmp_custom*, %struct.rtmp_custom*, %struct.rtmp_custom*, %struct.rtmp_custom* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rtmp_custom_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtmp_custom_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rtmp_custom*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.rtmp_custom*
  store %struct.rtmp_custom* %5, %struct.rtmp_custom** %3, align 8
  %6 = load %struct.rtmp_custom*, %struct.rtmp_custom** %3, align 8
  %7 = getelementptr inbounds %struct.rtmp_custom, %struct.rtmp_custom* %6, i32 0, i32 3
  %8 = load %struct.rtmp_custom*, %struct.rtmp_custom** %7, align 8
  %9 = call i32 @bfree(%struct.rtmp_custom* %8)
  %10 = load %struct.rtmp_custom*, %struct.rtmp_custom** %3, align 8
  %11 = getelementptr inbounds %struct.rtmp_custom, %struct.rtmp_custom* %10, i32 0, i32 2
  %12 = load %struct.rtmp_custom*, %struct.rtmp_custom** %11, align 8
  %13 = call i32 @bfree(%struct.rtmp_custom* %12)
  %14 = load %struct.rtmp_custom*, %struct.rtmp_custom** %3, align 8
  %15 = getelementptr inbounds %struct.rtmp_custom, %struct.rtmp_custom* %14, i32 0, i32 1
  %16 = load %struct.rtmp_custom*, %struct.rtmp_custom** %15, align 8
  %17 = call i32 @bfree(%struct.rtmp_custom* %16)
  %18 = load %struct.rtmp_custom*, %struct.rtmp_custom** %3, align 8
  %19 = getelementptr inbounds %struct.rtmp_custom, %struct.rtmp_custom* %18, i32 0, i32 0
  %20 = load %struct.rtmp_custom*, %struct.rtmp_custom** %19, align 8
  %21 = call i32 @bfree(%struct.rtmp_custom* %20)
  %22 = load %struct.rtmp_custom*, %struct.rtmp_custom** %3, align 8
  %23 = call i32 @bfree(%struct.rtmp_custom* %22)
  ret void
}

declare dso_local i32 @bfree(%struct.rtmp_custom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
