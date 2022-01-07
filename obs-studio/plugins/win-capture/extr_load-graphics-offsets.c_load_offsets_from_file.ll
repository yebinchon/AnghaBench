; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_load-graphics-offsets.c_load_offsets_from_file.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_load-graphics-offsets.c_load_offsets_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graphics_offsets = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.graphics_offsets*, i8*)* @load_offsets_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_offsets_from_file(%struct.graphics_offsets* %0, i8* %1) #0 {
  %3 = alloca %struct.graphics_offsets*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.graphics_offsets* %0, %struct.graphics_offsets** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* @os_quick_read_utf8_file(i8* %7)
  store i8* %8, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.graphics_offsets*, %struct.graphics_offsets** %3, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @load_offsets_from_string(%struct.graphics_offsets* %17, i8* %18)
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %11, %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @bfree(i8* %21)
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

declare dso_local i8* @os_quick_read_utf8_file(i8*) #1

declare dso_local i32 @load_offsets_from_string(%struct.graphics_offsets*, i8*) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
