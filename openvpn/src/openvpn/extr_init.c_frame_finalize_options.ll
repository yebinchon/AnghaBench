; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_frame_finalize_options.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_frame_finalize_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_3__, %struct.options }
%struct.TYPE_3__ = type { i32 }
%struct.options = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@FRAME_HEADROOM_MARKER_FRAGMENT = common dso_local global i32 0, align 4
@FRAME_HEADROOM_MARKER_READ_LINK = common dso_local global i32 0, align 4
@FRAME_HEADROOM_MARKER_READ_STREAM = common dso_local global i32 0, align 4
@PAYLOAD_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.options*)* @frame_finalize_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frame_finalize_options(%struct.context* %0, %struct.options* %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca %struct.options*, align 8
  store %struct.context* %0, %struct.context** %3, align 8
  store %struct.options* %1, %struct.options** %4, align 8
  %5 = load %struct.options*, %struct.options** %4, align 8
  %6 = icmp ne %struct.options* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct.context*, %struct.context** %3, align 8
  %9 = getelementptr inbounds %struct.context, %struct.context* %8, i32 0, i32 1
  store %struct.options* %9, %struct.options** %4, align 8
  br label %10

10:                                               ; preds = %7, %2
  %11 = load %struct.context*, %struct.context** %3, align 8
  %12 = call i32 @CIPHER_ENABLED(%struct.context* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = load %struct.context*, %struct.context** %3, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @frame_align_to_extra_frame(i32* %17)
  %19 = load %struct.context*, %struct.context** %3, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* @FRAME_HEADROOM_MARKER_FRAGMENT, align 4
  %23 = load i32, i32* @FRAME_HEADROOM_MARKER_READ_LINK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @FRAME_HEADROOM_MARKER_READ_STREAM, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @frame_or_align_flags(i32* %21, i32 %26)
  br label %28

28:                                               ; preds = %14, %10
  %29 = load %struct.context*, %struct.context** %3, align 8
  %30 = getelementptr inbounds %struct.context, %struct.context* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* @PAYLOAD_ALIGN, align 4
  %33 = call i32 @frame_add_to_extra_buffer(i32* %31, i32 %32)
  %34 = load %struct.context*, %struct.context** %3, align 8
  %35 = getelementptr inbounds %struct.context, %struct.context* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.options*, %struct.options** %4, align 8
  %38 = getelementptr inbounds %struct.options, %struct.options* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.options*, %struct.options** %4, align 8
  %42 = getelementptr inbounds %struct.options, %struct.options* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.options*, %struct.options** %4, align 8
  %46 = getelementptr inbounds %struct.options, %struct.options* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.options*, %struct.options** %4, align 8
  %50 = getelementptr inbounds %struct.options, %struct.options* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @frame_finalize(i32* %36, i32 %40, i32 %44, i32 %48, i32 %52)
  ret void
}

declare dso_local i32 @CIPHER_ENABLED(%struct.context*) #1

declare dso_local i32 @frame_align_to_extra_frame(i32*) #1

declare dso_local i32 @frame_or_align_flags(i32*, i32) #1

declare dso_local i32 @frame_add_to_extra_buffer(i32*, i32) #1

declare dso_local i32 @frame_finalize(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
