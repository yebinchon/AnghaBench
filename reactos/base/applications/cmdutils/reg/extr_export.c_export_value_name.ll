; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_export_value_name.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_export_value_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@export_value_name.quoted_fmt = internal constant [6 x i8] c"\22%s\22=\00", align 1
@export_value_name.default_name = internal constant [3 x i8] c"@=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @export_value_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @export_value_name(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i8* @escape_string(i8* %18, i64 %19, i64* %7)
  store i8* %20, i8** %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, 4
  %23 = mul i64 %22, 1
  %24 = call i8* @heap_xalloc(i64 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @sprintfW(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @export_value_name.quoted_fmt, i64 0, i64 0), i8* %26)
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @write_file(i32 %28, i8* %29)
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @heap_free(i8* %31)
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @heap_free(i8* %33)
  br label %39

35:                                               ; preds = %12, %3
  %36 = call i64 @lstrlenW(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @export_value_name.default_name, i64 0, i64 0))
  store i64 %36, i64* %7, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @write_file(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @export_value_name.default_name, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %17
  %40 = load i64, i64* %7, align 8
  ret i64 %40
}

declare dso_local i8* @escape_string(i8*, i64, i64*) #1

declare dso_local i8* @heap_xalloc(i64) #1

declare dso_local i64 @sprintfW(i8*, i8*, i8*) #1

declare dso_local i32 @write_file(i32, i8*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i64 @lstrlenW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
