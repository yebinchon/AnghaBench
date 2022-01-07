; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_export_string_data.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_export_string_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@export_string_data.fmt = internal constant [5 x i8] c"\22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*, i64)* @export_string_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_string_data(i8** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = udiv i64 %13, 1
  %15 = sub i64 %14, 1
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i8* @escape_string(i8* %17, i64 %18, i64* %8)
  store i8* %19, i8** %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = add i64 %20, 3
  %22 = mul i64 %21, 1
  %23 = call i8* @heap_xalloc(i64 %22)
  %24 = load i8**, i8*** %4, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i8**, i8*** %4, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @sprintfW(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @export_string_data.fmt, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @heap_free(i8* %29)
  ret void
}

declare dso_local i8* @escape_string(i8*, i64, i64*) #1

declare dso_local i8* @heap_xalloc(i64) #1

declare dso_local i32 @sprintfW(i8*, i8*, i8*) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
