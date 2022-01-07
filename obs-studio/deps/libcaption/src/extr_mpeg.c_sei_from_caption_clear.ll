; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_from_caption_clear.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_from_caption_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@cc_type_ntsc_cc_field_1 = common dso_local global i32 0, align 4
@eia608_control_end_of_caption = common dso_local global i32 0, align 4
@DEFAULT_CHANNEL = common dso_local global i32 0, align 4
@eia608_control_erase_non_displayed_memory = common dso_local global i32 0, align 4
@eia608_control_erase_display_memory = common dso_local global i32 0, align 4
@LIBCAPTION_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sei_from_caption_clear(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @cea708_init(i32* %3, i32 %6)
  %8 = load i32, i32* @cc_type_ntsc_cc_field_1, align 4
  %9 = load i32, i32* @eia608_control_end_of_caption, align 4
  %10 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %11 = call i32 @eia608_control_command(i32 %9, i32 %10)
  %12 = call i32 @cea708_add_cc_data(i32* %3, i32 1, i32 %8, i32 %11)
  %13 = load i32, i32* @cc_type_ntsc_cc_field_1, align 4
  %14 = load i32, i32* @eia608_control_end_of_caption, align 4
  %15 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %16 = call i32 @eia608_control_command(i32 %14, i32 %15)
  %17 = call i32 @cea708_add_cc_data(i32* %3, i32 1, i32 %13, i32 %16)
  %18 = load i32, i32* @cc_type_ntsc_cc_field_1, align 4
  %19 = load i32, i32* @eia608_control_erase_non_displayed_memory, align 4
  %20 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %21 = call i32 @eia608_control_command(i32 %19, i32 %20)
  %22 = call i32 @cea708_add_cc_data(i32* %3, i32 1, i32 %18, i32 %21)
  %23 = load i32, i32* @cc_type_ntsc_cc_field_1, align 4
  %24 = load i32, i32* @eia608_control_erase_non_displayed_memory, align 4
  %25 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %26 = call i32 @eia608_control_command(i32 %24, i32 %25)
  %27 = call i32 @cea708_add_cc_data(i32* %3, i32 1, i32 %23, i32 %26)
  %28 = load i32, i32* @cc_type_ntsc_cc_field_1, align 4
  %29 = load i32, i32* @eia608_control_erase_display_memory, align 4
  %30 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %31 = call i32 @eia608_control_command(i32 %29, i32 %30)
  %32 = call i32 @cea708_add_cc_data(i32* %3, i32 1, i32 %28, i32 %31)
  %33 = load i32, i32* @cc_type_ntsc_cc_field_1, align 4
  %34 = load i32, i32* @eia608_control_erase_display_memory, align 4
  %35 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %36 = call i32 @eia608_control_command(i32 %34, i32 %35)
  %37 = call i32 @cea708_add_cc_data(i32* %3, i32 1, i32 %33, i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = call i32 @sei_append_708(%struct.TYPE_4__* %38, i32* %3)
  %40 = load i32, i32* @LIBCAPTION_OK, align 4
  ret i32 %40
}

declare dso_local i32 @cea708_init(i32*, i32) #1

declare dso_local i32 @cea708_add_cc_data(i32*, i32, i32, i32) #1

declare dso_local i32 @eia608_control_command(i32, i32) #1

declare dso_local i32 @sei_append_708(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
