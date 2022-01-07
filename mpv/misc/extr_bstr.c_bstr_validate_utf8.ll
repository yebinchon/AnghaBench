; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_validate_utf8.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_validate_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bstr_validate_utf8(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bstr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast %struct.bstr* %4 to { i32, i64* }*
  %10 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %9, i32 0, i32 0
  store i32 %0, i32* %10, align 8
  %11 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %9, i32 0, i32 1
  store i64* %1, i64** %11, align 8
  br label %12

12:                                               ; preds = %74, %2
  %13 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %75

16:                                               ; preds = %12
  %17 = bitcast %struct.bstr* %4 to { i32, i64* }*
  %18 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %17, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = call i64 @bstr_decode_utf8(i32 %19, i64* %21, %struct.bstr* %4)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %74

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i8
  %30 = zext i8 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @bstr_parse_utf8_code_length(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %73

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 6
  br i1 %38, label %39, label %73

39:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %69, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %50, %52
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %76

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i8
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 192
  %66 = icmp ne i32 %65, 128
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %72

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %40

72:                                               ; preds = %67, %40
  br label %73

73:                                               ; preds = %72, %35, %24
  store i32 -8, i32* %3, align 4
  br label %76

74:                                               ; preds = %16
  br label %12

75:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %73, %49
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @bstr_decode_utf8(i32, i64*, %struct.bstr*) #1

declare dso_local i32 @bstr_parse_utf8_code_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
