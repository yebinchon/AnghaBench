; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_read_type_enum.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_read_type_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt** (i8**)* @stabs_read_type_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt** @stabs_read_type_enum(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  %7 = load i8**, i8*** %2, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 40
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strtol(i8* %16, i8** %6, i32 10)
  store i64 %17, i64* %3, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strtol(i8* %20, i8** %6, i32 10)
  store i64 %21, i64* %4, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  store i8* %23, i8** %5, align 8
  br label %28

24:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strtol(i8* %25, i8** %6, i32 10)
  store i64 %26, i64* %4, align 8
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %24, %13
  %29 = load i8*, i8** %5, align 8
  %30 = load i8**, i8*** %2, align 8
  store i8* %29, i8** %30, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call %struct.symt** @stabs_find_ref(i64 %31, i64 %32)
  ret %struct.symt** %33
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.symt** @stabs_find_ref(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
