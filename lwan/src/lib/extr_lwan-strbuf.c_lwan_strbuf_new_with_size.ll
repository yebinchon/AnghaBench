; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-strbuf.c_lwan_strbuf_new_with_size.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-strbuf.c_lwan_strbuf_new_with_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_strbuf = type { i32 }

@DYNAMICALLY_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lwan_strbuf* @lwan_strbuf_new_with_size(i64 %0) #0 {
  %2 = alloca %struct.lwan_strbuf*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.lwan_strbuf*, align 8
  store i64 %0, i64* %3, align 8
  %5 = call %struct.lwan_strbuf* @malloc(i32 4)
  store %struct.lwan_strbuf* %5, %struct.lwan_strbuf** %4, align 8
  %6 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @lwan_strbuf_init_with_size(%struct.lwan_strbuf* %6, i64 %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @UNLIKELY(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %4, align 8
  %16 = call i32 @free(%struct.lwan_strbuf* %15)
  store %struct.lwan_strbuf* null, %struct.lwan_strbuf** %2, align 8
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @DYNAMICALLY_ALLOCATED, align 4
  %19 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %4, align 8
  %20 = getelementptr inbounds %struct.lwan_strbuf, %struct.lwan_strbuf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %4, align 8
  store %struct.lwan_strbuf* %23, %struct.lwan_strbuf** %2, align 8
  br label %24

24:                                               ; preds = %17, %14
  %25 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %2, align 8
  ret %struct.lwan_strbuf* %25
}

declare dso_local %struct.lwan_strbuf* @malloc(i32) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @lwan_strbuf_init_with_size(%struct.lwan_strbuf*, i64) #1

declare dso_local i32 @free(%struct.lwan_strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
