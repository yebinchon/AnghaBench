; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_symt_index2ptr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_symbol.c_symt_index2ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }
%struct.module = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symt* @symt_index2ptr(%struct.module* %0, i64 %1) #0 {
  %3 = alloca %struct.symt*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca i64, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = icmp ne i64 %6, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.module*, %struct.module** %4, align 8
  %12 = getelementptr inbounds %struct.module, %struct.module* %11, i32 0, i32 0
  %13 = call i64 @vector_length(i32* %12)
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %2
  store %struct.symt* null, %struct.symt** %3, align 8
  br label %23

16:                                               ; preds = %9
  %17 = load %struct.module*, %struct.module** %4, align 8
  %18 = getelementptr inbounds %struct.module, %struct.module* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @vector_at(i32* %18, i64 %19)
  %21 = inttoptr i64 %20 to %struct.symt**
  %22 = load %struct.symt*, %struct.symt** %21, align 8
  store %struct.symt* %22, %struct.symt** %3, align 8
  br label %23

23:                                               ; preds = %16, %15
  %24 = load %struct.symt*, %struct.symt** %3, align 8
  ret %struct.symt* %24
}

declare dso_local i64 @vector_length(i32*) #1

declare dso_local i64 @vector_at(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
