; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabbuf_append.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabbuf_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32*, i8*)* @stabbuf_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stabbuf_append(i8** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = add i32 %14, %15
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp uge i32 %16, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %21, %22
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = call i32 (...) @GetProcessHeap()
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @HeapReAlloc(i32 %27, i32 0, i8* %29, i32 %31)
  %33 = load i8**, i8*** %4, align 8
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %20, %3
  %35 = load i8**, i8*** %4, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strcpy(i8* %39, i8* %40)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @HeapReAlloc(i32, i32, i8*, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
