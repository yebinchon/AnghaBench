; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_a.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACK_FLAG_a = common dso_local global i32 0, align 4
@PACK_FLAG_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i64, i64, i32)* @pack_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_a(i32* %0, i32 %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8, align 1
  %20 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i8* @RSTRING_PTR(i32 %21)
  store i8* %22, i8** %20, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @RSTRING_LEN(i32 %23)
  store i64 %24, i64* %15, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @PACK_FLAG_a, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @PACK_FLAG_Z, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %6
  store i8 0, i8* %19, align 1
  br label %36

35:                                               ; preds = %29
  store i8 32, i8* %19, align 1
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i64, i64* %12, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %100

40:                                               ; preds = %36
  %41 = load i64, i64* %12, align 8
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i64, i64* %15, align 8
  store i64 %44, i64* %14, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @PACK_FLAG_Z, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %16, align 8
  br label %64

52:                                               ; preds = %40
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %15, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* %12, align 8
  store i64 %57, i64* %14, align 8
  store i64 0, i64* %16, align 8
  br label %63

58:                                               ; preds = %52
  %59 = load i64, i64* %15, align 8
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %15, align 8
  %62 = sub nsw i64 %60, %61
  store i64 %62, i64* %16, align 8
  br label %63

63:                                               ; preds = %58, %56
  br label %64

64:                                               ; preds = %63, %43
  br label %65

65:                                               ; preds = %64
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %14, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i64, i64* %16, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @str_len_ensure(i32* %66, i32 %67, i64 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i8* @RSTRING_PTR(i32 %74)
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %17, align 8
  store i8* %77, i8** %18, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = load i8*, i8** %20, align 8
  %80 = load i64, i64* %14, align 8
  %81 = call i32 @memcpy(i8* %78, i8* %79, i64 %80)
  %82 = load i64, i64* %14, align 8
  %83 = load i8*, i8** %17, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 %82
  store i8* %84, i8** %17, align 8
  br label %85

85:                                               ; preds = %89, %65
  %86 = load i64, i64* %16, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %16, align 8
  %88 = icmp sgt i64 %86, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i8, i8* %19, align 1
  %91 = load i8*, i8** %17, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %17, align 8
  store i8 %90, i8* %91, align 1
  br label %85

93:                                               ; preds = %85
  %94 = load i8*, i8** %17, align 8
  %95 = load i8*, i8** %18, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %93, %39
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @str_len_ensure(i32*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
