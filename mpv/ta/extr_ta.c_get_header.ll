; ModuleID = '/home/carl/AnghaBench/mpv/ta/extr_ta.c_get_header.c'
source_filename = "/home/carl/AnghaBench/mpv/ta/extr_ta.c_get_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ta_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ta_header* (i8*)* @get_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ta_header* @get_header(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ta_header*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call %struct.ta_header* @PTR_TO_HEADER(i8* %7)
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %6
  %11 = phi %struct.ta_header* [ %8, %6 ], [ null, %9 ]
  store %struct.ta_header* %11, %struct.ta_header** %3, align 8
  %12 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  %13 = call i32 @ta_dbg_check_header(%struct.ta_header* %12)
  %14 = load %struct.ta_header*, %struct.ta_header** %3, align 8
  ret %struct.ta_header* %14
}

declare dso_local %struct.ta_header* @PTR_TO_HEADER(i8*) #1

declare dso_local i32 @ta_dbg_check_header(%struct.ta_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
