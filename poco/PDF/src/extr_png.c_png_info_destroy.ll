; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_png.c_png_info_destroy.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_png.c_png_info_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }

@.str = private unnamed_addr constant [21 x i8] c"in png_info_destroy\0A\00", align 1
@PNG_FREE_ALL = common dso_local global i32 0, align 4
@png_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_info_destroy(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PNG_FREE_ALL, align 4
  %9 = call i32 @png_free_data(%struct.TYPE_5__* %6, i32 %7, i32 %8, i32 -1)
  %10 = load i32, i32* @png_info, align 4
  %11 = call i32 @png_sizeof(i32 %10)
  %12 = call i32 @png_info_init_3(i32* %4, i32 %11)
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_free_data(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @png_info_init_3(i32*, i32) #1

declare dso_local i32 @png_sizeof(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
