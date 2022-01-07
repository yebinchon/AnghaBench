; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_export_hex_data.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_export_hex_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@export_hex_data.fmt = internal constant [5 x i8] c"%02x\00", align 1
@export_hex_data.hex_concat = internal constant [6 x i8] c"\\\0D\0A  \00", align 1
@MAX_HEX_CHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, i32, i32, i8*, i32)* @export_hex_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_hex_data(i32 %0, i8** %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @export_hex_data_type(i32 %16, i32 %17)
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  br label %85

26:                                               ; preds = %6
  %27 = load i32, i32* %12, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %13, align 8
  %30 = load i32, i32* %12, align 4
  %31 = mul nsw i32 %30, 3
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = call i8* @heap_xalloc(i32 %34)
  %36 = load i8**, i8*** %8, align 8
  store i8* %35, i8** %36, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %37

37:                                               ; preds = %82, %26
  %38 = load i64, i64* %14, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %85

42:                                               ; preds = %37
  %43 = load i8**, i8*** %8, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8*, i8** %11, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @sprintfW(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @export_hex_data.fmt, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* %15, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %13, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  br label %85

59:                                               ; preds = %42
  %60 = load i8**, i8*** %8, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %15, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %15, align 8
  %64 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 44, i8* %64, align 1
  %65 = load i8**, i8*** %8, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %15, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 3
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @MAX_HEX_CHARS, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %59
  %75 = load i32, i32* %7, align 4
  %76 = load i8**, i8*** %8, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @write_file(i32 %75, i8* %77)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @write_file(i32 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @export_hex_data.hex_concat, i64 0, i64 0))
  store i32 2, i32* %10, align 4
  store i64 0, i64* %15, align 8
  br label %81

81:                                               ; preds = %74, %59
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %14, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %14, align 8
  br label %37

85:                                               ; preds = %25, %58, %37
  ret void
}

declare dso_local i64 @export_hex_data_type(i32, i32) #1

declare dso_local i8* @heap_xalloc(i32) #1

declare dso_local i64 @sprintfW(i8*, i8*, i32) #1

declare dso_local i32 @write_file(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
