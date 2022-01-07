; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream.c_mp_url_escape.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream.c_mp_url_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@url_default_ok = common dso_local global i8* null, align 8
@hex_digits = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_url_escape(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = mul nsw i32 %15, 3
  %17 = add nsw i32 %16, 1
  %18 = call i8* @talloc_size(i8* %13, i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 126
  br label %28

28:                                               ; preds = %22, %3
  %29 = phi i1 [ false, %3 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %97, %28
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %10, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %100

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %10, align 1
  %42 = call i64 @strchr(i8* %40, i8 signext %41)
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  br label %64

46:                                               ; preds = %35
  %47 = load i8*, i8** @url_default_ok, align 8
  %48 = load i8, i8* %10, align 1
  %49 = call i64 @strchr(i8* %47, i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %10, align 1
  %57 = call i64 @strchr(i8* %55, i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi i1 [ false, %51 ], [ %58, %54 ]
  br label %61

61:                                               ; preds = %59, %46
  %62 = phi i1 [ true, %46 ], [ %60, %59 ]
  %63 = zext i1 %62 to i32
  br label %64

64:                                               ; preds = %61, %38
  %65 = phi i32 [ %45, %38 ], [ %63, %61 ]
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i8, i8* %10, align 1
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %8, align 8
  store i8 %69, i8* %70, align 1
  br label %96

72:                                               ; preds = %64
  %73 = load i8, i8* %10, align 1
  store i8 %73, i8* %12, align 1
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %8, align 8
  store i8 37, i8* %74, align 1
  %76 = load i8**, i8*** @hex_digits, align 8
  %77 = load i8, i8* %12, align 1
  %78 = zext i8 %77 to i32
  %79 = sdiv i32 %78, 16
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %76, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = ptrtoint i8* %82 to i8
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %8, align 8
  store i8 %83, i8* %84, align 1
  %86 = load i8**, i8*** @hex_digits, align 8
  %87 = load i8, i8* %12, align 1
  %88 = zext i8 %87 to i32
  %89 = srem i32 %88, 16
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %86, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = ptrtoint i8* %92 to i8
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %8, align 8
  store i8 %93, i8* %94, align 1
  br label %96

96:                                               ; preds = %72, %68
  br label %97

97:                                               ; preds = %96
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %5, align 8
  br label %31

100:                                              ; preds = %31
  %101 = load i8*, i8** %8, align 8
  store i8 0, i8* %101, align 1
  %102 = load i8*, i8** %7, align 8
  ret i8* %102
}

declare dso_local i8* @talloc_size(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
