; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_compat.c___RtlImageNtHeader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_compat.c___RtlImageNtHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64 }

@IMAGE_DOS_SIGNATURE = common dso_local global i64 0, align 8
@IMAGE_NT_SIGNATURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @__RtlImageNtHeader(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IMAGE_DOS_SIGNATURE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %32

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %5, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IMAGE_NT_SIGNATURE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %32

30:                                               ; preds = %15
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %2, align 8
  br label %32

32:                                               ; preds = %30, %29, %14
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
