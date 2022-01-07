; ModuleID = '/home/carl/AnghaBench/mpv/ta/extr_ta_utils.c_strndup_append_at.c'
source_filename = "/home/carl/AnghaBench/mpv/ta/extr_ta_utils.c_strndup_append_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64, i8*, i64)* @strndup_append_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strndup_append_at(i8** %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @ta_get_size(i8* %13)
  %15 = load i64, i64* %7, align 8
  %16 = icmp uge i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i8**, i8*** %6, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %85

26:                                               ; preds = %22, %4
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @strnlen(i8* %30, i64 %31)
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i64 [ %32, %29 ], [ 0, %33 ]
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @ta_get_size(i8* %43)
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %45, %46
  %48 = add i64 %47, 1
  %49 = icmp ult i64 %44, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %41
  %51 = load i8**, i8*** %6, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %53, %54
  %56 = add i64 %55, 1
  %57 = call i8* @ta_realloc_size(i32* null, i8* %52, i64 %56)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %85

61:                                               ; preds = %50
  %62 = load i8*, i8** %11, align 8
  %63 = load i8**, i8*** %6, align 8
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %61, %41
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i8**, i8*** %6, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @memcpy(i8* %71, i8* %72, i64 %73)
  br label %75

75:                                               ; preds = %67, %64
  %76 = load i8**, i8*** %6, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %78, %79
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load i8**, i8*** %6, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @ta_dbg_mark_as_string(i8* %83)
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %75, %60, %25
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ta_get_size(i8*) #1

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local i8* @ta_realloc_size(i32*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ta_dbg_mark_as_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
