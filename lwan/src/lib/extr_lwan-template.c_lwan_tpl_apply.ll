; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lwan_tpl_apply.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lwan_tpl_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_strbuf = type { i32 }
%struct.lwan_tpl = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lwan_strbuf* @lwan_tpl_apply(%struct.lwan_tpl* %0, i8* %1) #0 {
  %3 = alloca %struct.lwan_strbuf*, align 8
  %4 = alloca %struct.lwan_tpl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lwan_strbuf*, align 8
  store %struct.lwan_tpl* %0, %struct.lwan_tpl** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.lwan_tpl*, %struct.lwan_tpl** %4, align 8
  %8 = getelementptr inbounds %struct.lwan_tpl, %struct.lwan_tpl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.lwan_strbuf* @lwan_strbuf_new_with_size(i32 %9)
  store %struct.lwan_strbuf* %10, %struct.lwan_strbuf** %6, align 8
  %11 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %6, align 8
  %12 = icmp ne %struct.lwan_strbuf* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @UNLIKELY(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.lwan_strbuf* null, %struct.lwan_strbuf** %3, align 8
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.lwan_tpl*, %struct.lwan_tpl** %4, align 8
  %20 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @lwan_tpl_apply_with_buffer(%struct.lwan_tpl* %19, %struct.lwan_strbuf* %20, i8* %21)
  %23 = call i64 @LIKELY(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %6, align 8
  store %struct.lwan_strbuf* %26, %struct.lwan_strbuf** %3, align 8
  br label %30

27:                                               ; preds = %18
  %28 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %6, align 8
  %29 = call i32 @lwan_strbuf_free(%struct.lwan_strbuf* %28)
  store %struct.lwan_strbuf* null, %struct.lwan_strbuf** %3, align 8
  br label %30

30:                                               ; preds = %27, %25, %17
  %31 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %3, align 8
  ret %struct.lwan_strbuf* %31
}

declare dso_local %struct.lwan_strbuf* @lwan_strbuf_new_with_size(i32) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i64 @LIKELY(i32) #1

declare dso_local i32 @lwan_tpl_apply_with_buffer(%struct.lwan_tpl*, %struct.lwan_strbuf*, i8*) #1

declare dso_local i32 @lwan_strbuf_free(%struct.lwan_strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
