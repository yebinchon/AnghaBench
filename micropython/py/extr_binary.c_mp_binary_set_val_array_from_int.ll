; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_binary.c_mp_binary_set_val_array_from_int.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_binary.c_mp_binary_set_val_array_from_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_binary_set_val_array_from_int(i8 signext %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8, i8* %5, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %73 [
    i32 98, label %11
    i32 128, label %17
    i32 66, label %17
    i32 104, label %23
    i32 72, label %30
    i32 105, label %37
    i32 73, label %44
    i32 108, label %51
    i32 76, label %58
    i32 80, label %65
  ]

11:                                               ; preds = %4
  %12 = load i8*, i8** %8, align 8
  %13 = ptrtoint i8* %12 to i8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8 %13, i8* %16, align 1
  br label %73

17:                                               ; preds = %4, %4
  %18 = load i8*, i8** %8, align 8
  %19 = ptrtoint i8* %18 to i8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %19, i8* %22, align 1
  br label %73

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = ptrtoint i8* %24 to i16
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to i16*
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i16, i16* %27, i64 %28
  store i16 %25, i16* %29, align 2
  br label %73

30:                                               ; preds = %4
  %31 = load i8*, i8** %8, align 8
  %32 = ptrtoint i8* %31 to i16
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to i16*
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i16, i16* %34, i64 %35
  store i16 %32, i16* %36, align 2
  br label %73

37:                                               ; preds = %4
  %38 = load i8*, i8** %8, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load i8*, i8** %6, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 %39, i32* %43, align 4
  br label %73

44:                                               ; preds = %4
  %45 = load i8*, i8** %8, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = load i8*, i8** %6, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %46, i32* %50, align 4
  br label %73

51:                                               ; preds = %4
  %52 = load i8*, i8** %8, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load i8*, i8** %6, align 8
  %55 = bitcast i8* %54 to i64*
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 %53, i64* %57, align 8
  br label %73

58:                                               ; preds = %4
  %59 = load i8*, i8** %8, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load i8*, i8** %6, align 8
  %62 = bitcast i8* %61 to i64*
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %60, i64* %64, align 8
  br label %73

65:                                               ; preds = %4
  %66 = load i8*, i8** %8, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load i8*, i8** %6, align 8
  %70 = bitcast i8* %69 to i8**
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  store i8* %68, i8** %72, align 8
  br label %73

73:                                               ; preds = %4, %65, %58, %51, %44, %37, %30, %23, %17, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
