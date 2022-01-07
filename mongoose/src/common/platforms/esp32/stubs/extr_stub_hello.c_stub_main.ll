; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/esp32/stubs/extr_stub_hello.c_stub_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/esp32/stubs/extr_stub_hello.c_stub_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_bss_start = common dso_local global i32 0, align 4
@_bss_end = common dso_local global i32 0, align 4
@buf = common dso_local global i32* null, align 8
@hello = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stub_main() #0 {
  %1 = alloca i32, align 4
  store i32 1229015119, i32* %1, align 4
  %2 = call i32 @SLIP_send(i32* %1, i32 4)
  %3 = call i32 @memset(i32* @_bss_start, i32 0, i32 trunc (i64 sdiv exact (i64 sub (i64 ptrtoint (i32* @_bss_end to i64), i64 ptrtoint (i32* @_bss_start to i64)), i64 4) to i32))
  %4 = load i32*, i32** @buf, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 123, i32* %5, align 4
  %6 = load i32*, i32** @hello, align 8
  %7 = call i32 @SLIP_send(i32* %6, i32 5)
  br label %8

8:                                                ; preds = %0, %8
  br label %8
}

declare dso_local i32 @SLIP_send(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
