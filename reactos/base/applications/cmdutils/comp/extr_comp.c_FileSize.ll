; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/comp/extr_comp.c_FileSize.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/comp/extr_comp.c_FileSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FileSize(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 -1, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @SEEK_END, align 4
  %6 = call i64 @fseek(i32* %4, i32 0, i32 %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @ftell(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @rewind(i32* %13)
  br label %15

15:                                               ; preds = %12, %8, %1
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
