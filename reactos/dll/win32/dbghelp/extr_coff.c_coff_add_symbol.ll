; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_coff.c_coff_add_symbol.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_coff.c_coff_add_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CoffFile = type { i32, i32, %struct.symt** }
%struct.symt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CoffFile*, %struct.symt*)* @coff_add_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coff_add_symbol(%struct.CoffFile* %0, %struct.symt* %1) #0 {
  %3 = alloca %struct.CoffFile*, align 8
  %4 = alloca %struct.symt*, align 8
  store %struct.CoffFile* %0, %struct.CoffFile** %3, align 8
  store %struct.symt* %1, %struct.symt** %4, align 8
  %5 = load %struct.CoffFile*, %struct.CoffFile** %3, align 8
  %6 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  %9 = load %struct.CoffFile*, %struct.CoffFile** %3, align 8
  %10 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %8, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %2
  %14 = load %struct.CoffFile*, %struct.CoffFile** %3, align 8
  %15 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %14, i32 0, i32 2
  %16 = load %struct.symt**, %struct.symt*** %15, align 8
  %17 = icmp ne %struct.symt** %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load %struct.CoffFile*, %struct.CoffFile** %3, align 8
  %20 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 2
  store i32 %22, i32* %20, align 4
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load %struct.CoffFile*, %struct.CoffFile** %3, align 8
  %25 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %24, i32 0, i32 2
  %26 = load %struct.symt**, %struct.symt*** %25, align 8
  %27 = load %struct.CoffFile*, %struct.CoffFile** %3, align 8
  %28 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = trunc i64 %31 to i32
  %33 = call %struct.symt** @HeapReAlloc(i32 %23, i32 0, %struct.symt** %26, i32 %32)
  %34 = load %struct.CoffFile*, %struct.CoffFile** %3, align 8
  %35 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %34, i32 0, i32 2
  store %struct.symt** %33, %struct.symt*** %35, align 8
  br label %49

36:                                               ; preds = %13
  %37 = load %struct.CoffFile*, %struct.CoffFile** %3, align 8
  %38 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %37, i32 0, i32 1
  store i32 32, i32* %38, align 4
  %39 = call i32 (...) @GetProcessHeap()
  %40 = load %struct.CoffFile*, %struct.CoffFile** %3, align 8
  %41 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = call %struct.symt** @HeapAlloc(i32 %39, i32 0, i32 %45)
  %47 = load %struct.CoffFile*, %struct.CoffFile** %3, align 8
  %48 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %47, i32 0, i32 2
  store %struct.symt** %46, %struct.symt*** %48, align 8
  br label %49

49:                                               ; preds = %36, %18
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.symt*, %struct.symt** %4, align 8
  %52 = load %struct.CoffFile*, %struct.CoffFile** %3, align 8
  %53 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %52, i32 0, i32 2
  %54 = load %struct.symt**, %struct.symt*** %53, align 8
  %55 = load %struct.CoffFile*, %struct.CoffFile** %3, align 8
  %56 = getelementptr inbounds %struct.CoffFile, %struct.CoffFile* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %struct.symt*, %struct.symt** %54, i64 %59
  store %struct.symt* %51, %struct.symt** %60, align 8
  ret void
}

declare dso_local %struct.symt** @HeapReAlloc(i32, i32, %struct.symt**, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local %struct.symt** @HeapAlloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
