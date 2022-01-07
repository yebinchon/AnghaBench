; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_h.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACK_FLAG_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i64, i32)* @pack_h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_h(i32* %0, i32 %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i8* @RSTRING_PTR(i32 %21)
  store i8* %22, i8** %20, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @RSTRING_LEN(i32 %23)
  store i64 %24, i64* %17, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @PACK_FLAG_LSB, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  store i32 4, i32* %16, align 4
  br label %31

30:                                               ; preds = %6
  store i32 4, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i64, i64* %11, align 8
  %33 = icmp eq i64 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* %17, align 8
  store i64 %35, i64* %11, align 8
  br label %43

36:                                               ; preds = %31
  %37 = load i64, i64* %17, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* %11, align 8
  store i64 %41, i64* %17, align 8
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %42, %34
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %11, align 8
  %49 = add nsw i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @str_len_ensure(i32* %44, i32 %45, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i8* @RSTRING_PTR(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8* %56, i8** %18, align 8
  %57 = load i8*, i8** %18, align 8
  store i8* %57, i8** %19, align 8
  br label %58

58:                                               ; preds = %94, %43
  %59 = load i64, i64* %11, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %97

61:                                               ; preds = %58
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  %62 = load i64, i64* %17, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i8*, i8** %20, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %20, align 8
  %67 = load i8, i8* %65, align 1
  %68 = sext i8 %67 to i32
  %69 = call i32 @hex2int(i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i64, i64* %17, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* %17, align 8
  br label %72

72:                                               ; preds = %64, %61
  %73 = load i64, i64* %17, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i8*, i8** %20, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %20, align 8
  %78 = load i8, i8* %76, align 1
  %79 = sext i8 %78 to i32
  %80 = call i32 @hex2int(i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i64, i64* %17, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %17, align 8
  br label %83

83:                                               ; preds = %75, %72
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = shl i32 %87, %88
  %90 = add i32 %86, %89
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %18, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %18, align 8
  store i8 %91, i8* %92, align 1
  br label %94

94:                                               ; preds = %83
  %95 = load i64, i64* %11, align 8
  %96 = sub nsw i64 %95, 2
  store i64 %96, i64* %11, align 8
  br label %58

97:                                               ; preds = %58
  %98 = load i8*, i8** %18, align 8
  %99 = load i8*, i8** %19, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  ret i32 %103
}

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @str_len_ensure(i32*, i32, i32) #1

declare dso_local i32 @hex2int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
