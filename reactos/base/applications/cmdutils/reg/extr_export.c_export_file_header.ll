; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_export_file_header.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_export_file_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@export_file_header.header = internal constant [39 x i32] [i32 65279, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 32, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 32, i32 69, i32 100, i32 105, i32 116, i32 111, i32 114, i32 32, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 32, i32 53, i32 46, i32 48, i32 48, i32 13, i32 10], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @export_file_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_file_header(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @write_file(i32 %3, i32* getelementptr inbounds ([39 x i32], [39 x i32]* @export_file_header.header, i64 0, i64 0))
  ret void
}

declare dso_local i32 @write_file(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
