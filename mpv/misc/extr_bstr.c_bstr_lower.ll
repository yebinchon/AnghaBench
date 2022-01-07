; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_lower.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_lower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bstr_lower(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.bstr, align 8
  %4 = alloca i32, align 4
  %5 = bitcast %struct.bstr* %3 to { i32, i32* }*
  %6 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %5, i32 0, i32 0
  store i32 %0, i32* %6, align 8
  %7 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %5, i32 0, i32 1
  store i32* %1, i32** %7, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds %struct.bstr, %struct.bstr* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bstr, %struct.bstr* %3, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mp_tolower(i32 %19)
  %21 = getelementptr inbounds %struct.bstr, %struct.bstr* %3, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %20, i32* %25, align 4
  br label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %8

29:                                               ; preds = %8
  ret void
}

declare dso_local i32 @mp_tolower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
