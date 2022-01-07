; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_utf8.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_RANGE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"pack(U): value out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i64, i64, i32)* @pack_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_utf8(i32* %0, i32 %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [4 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @mrb_fixnum(i32 %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp slt i32 %19, 128
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32, i32* %15, align 4
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  store i8 %23, i8* %24, align 1
  store i32 1, i32* %14, align 4
  br label %92

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %26, 2048
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %15, align 4
  %30 = ashr i32 %29, 6
  %31 = or i32 192, %30
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  store i8 %32, i8* %33, align 1
  %34 = load i32, i32* %15, align 4
  %35 = and i32 %34, 63
  %36 = or i32 128, %35
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  store i8 %37, i8* %38, align 1
  store i32 2, i32* %14, align 4
  br label %91

39:                                               ; preds = %25
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 65536
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load i32, i32* %15, align 4
  %44 = ashr i32 %43, 12
  %45 = or i32 224, %44
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* %15, align 4
  %49 = ashr i32 %48, 6
  %50 = and i32 %49, 63
  %51 = or i32 128, %50
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  store i8 %52, i8* %53, align 1
  %54 = load i32, i32* %15, align 4
  %55 = and i32 %54, 63
  %56 = or i32 128, %55
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 2
  store i8 %57, i8* %58, align 1
  store i32 3, i32* %14, align 4
  br label %90

59:                                               ; preds = %39
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %60, 2097152
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = load i32, i32* %15, align 4
  %64 = ashr i32 %63, 18
  %65 = or i32 240, %64
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  store i8 %66, i8* %67, align 1
  %68 = load i32, i32* %15, align 4
  %69 = ashr i32 %68, 12
  %70 = and i32 %69, 63
  %71 = or i32 128, %70
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  store i8 %72, i8* %73, align 1
  %74 = load i32, i32* %15, align 4
  %75 = ashr i32 %74, 6
  %76 = and i32 %75, 63
  %77 = or i32 128, %76
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 2
  store i8 %78, i8* %79, align 1
  %80 = load i32, i32* %15, align 4
  %81 = and i32 %80, 63
  %82 = or i32 128, %81
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 3
  store i8 %83, i8* %84, align 1
  store i32 4, i32* %14, align 4
  br label %89

85:                                               ; preds = %59
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* @E_RANGE_ERROR, align 4
  %88 = call i32 @mrb_raise(i32* %86, i32 %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %85, %62
  br label %90

90:                                               ; preds = %89, %42
  br label %91

91:                                               ; preds = %90, %28
  br label %92

92:                                               ; preds = %91, %21
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i64, i64* %10, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = call i32 @str_len_ensure(i32* %93, i32 %94, i64 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @RSTRING_PTR(i32 %100)
  %102 = load i64, i64* %10, align 8
  %103 = add nsw i64 %101, %102
  %104 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @memcpy(i64 %103, i8* %104, i32 %105)
  %107 = load i32, i32* %14, align 4
  ret i32 %107
}

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @str_len_ensure(i32*, i32, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @RSTRING_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
