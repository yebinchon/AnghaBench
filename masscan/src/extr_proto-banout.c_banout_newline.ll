; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_newline.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_newline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @banout_newline(%struct.BannerOutput* %0, i32 %1) #0 {
  %3 = alloca %struct.BannerOutput*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.BannerOutput*, align 8
  store %struct.BannerOutput* %0, %struct.BannerOutput** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.BannerOutput* @banout_find_proto(%struct.BannerOutput* %6, i32 %7)
  store %struct.BannerOutput* %8, %struct.BannerOutput** %5, align 8
  %9 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %10 = icmp ne %struct.BannerOutput* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %13 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @banout_append_char(%struct.BannerOutput* %17, i32 %18, i8 signext 10)
  br label %20

20:                                               ; preds = %16, %11, %2
  ret void
}

declare dso_local %struct.BannerOutput* @banout_find_proto(%struct.BannerOutput*, i32) #1

declare dso_local i32 @banout_append_char(%struct.BannerOutput*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
