; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_nt_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_nt_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }

@IMAGE_DOS_SIGNATURE = common dso_local global i64 0, align 8
@IMAGE_NT_SIGNATURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pe_load_nt_header(i32 %0, i64 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i64, i64* %5, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = call i64 @ReadProcessMemory(i32 %8, i8* %10, %struct.TYPE_5__* %7, i32 24, i32* null)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IMAGE_DOS_SIGNATURE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %20, %22
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = call i64 @ReadProcessMemory(i32 %19, i8* %24, %struct.TYPE_5__* %25, i32 24, i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IMAGE_NT_SIGNATURE, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %28, %18, %13, %3
  %35 = phi i1 [ false, %18 ], [ false, %13 ], [ false, %3 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i64 @ReadProcessMemory(i32, i8*, %struct.TYPE_5__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
