; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_string_extract_option.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_string_extract_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @options_string_extract_option(i8* %0, i8* %1, %struct.gc_arena* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gc_arena*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.gc_arena* %2, %struct.gc_arena** %6, align 8
  store i8* null, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %9, align 8
  br label %17

17:                                               ; preds = %77, %3
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %78

20:                                               ; preds = %17
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @strncmp(i8* %21, i8* %22, i64 %23)
  %25 = icmp eq i64 0, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %20
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  %32 = icmp ugt i64 %29, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %26
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %40, label %69

40:                                               ; preds = %33
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i8* @strchr(i8* %45, i8 signext 44)
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  br label %59

55:                                               ; preds = %40
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = sext i32 %57 to i64
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi i64 [ %54, %49 ], [ %58, %55 ]
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = add i64 %61, 1
  %63 = load %struct.gc_arena*, %struct.gc_arena** %6, align 8
  %64 = call i8* @gc_malloc(i64 %62, i32 1, %struct.gc_arena* %63)
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @memcpy(i8* %65, i8* %66, i64 %67)
  br label %78

69:                                               ; preds = %33, %26, %20
  %70 = load i8*, i8** %9, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 44)
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %9, align 8
  br label %77

77:                                               ; preds = %74, %69
  br label %17

78:                                               ; preds = %59, %17
  %79 = load i8*, i8** %7, align 8
  ret i8* %79
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @gc_malloc(i64, i32, %struct.gc_arena*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
