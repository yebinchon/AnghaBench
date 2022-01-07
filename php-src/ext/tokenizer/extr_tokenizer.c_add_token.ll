; ModuleID = '/home/carl/AnghaBench/php-src/ext/tokenizer/extr_tokenizer.c_add_token.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/tokenizer/extr_tokenizer.c_add_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i64, i32)* @add_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_token(i32* %0, i32 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sge i32 %12, 256
  br i1 %13, label %14, label %35

14:                                               ; preds = %5
  %15 = call i32 @array_init(i32* %11)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @add_next_index_long(i32* %11, i32 %16)
  %18 = load i64, i64* %9, align 8
  %19 = icmp eq i64 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @ZSTR_CHAR(i8 zeroext %23)
  %25 = call i32 @add_next_index_str(i32* %11, i32 %24)
  br label %30

26:                                               ; preds = %14
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @add_next_index_stringl(i32* %11, i8* %27, i64 %28)
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @add_next_index_long(i32* %11, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @add_next_index_zval(i32* %33, i32* %11)
  br label %51

35:                                               ; preds = %5
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 1
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32*, i32** %6, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @ZSTR_CHAR(i8 zeroext %42)
  %44 = call i32 @add_next_index_str(i32* %39, i32 %43)
  br label %50

45:                                               ; preds = %35
  %46 = load i32*, i32** %6, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @add_next_index_stringl(i32* %46, i8* %47, i64 %48)
  br label %50

50:                                               ; preds = %45, %38
  br label %51

51:                                               ; preds = %50, %30
  ret void
}

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @add_next_index_long(i32*, i32) #1

declare dso_local i32 @add_next_index_str(i32*, i32) #1

declare dso_local i32 @ZSTR_CHAR(i8 zeroext) #1

declare dso_local i32 @add_next_index_stringl(i32*, i8*, i64) #1

declare dso_local i32 @add_next_index_zval(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
