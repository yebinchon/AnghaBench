; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_pack_unpack.c_pack_string.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_pack_unpack.c_pack_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @pack_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pack_string(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @next_token(i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call signext i8 @token(i32* %12)
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 63
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @prev_token(i32* %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i8* @read_string(i32* %23, i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %7, i32* %8)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32* (...) @json_null()
  br label %34

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32* [ %32, %31 ], [ null, %33 ]
  store i32* %35, i32** %3, align 8
  br label %47

36:                                               ; preds = %22
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32* @jsonp_stringn_nocheck_own(i8* %40, i64 %41)
  store i32* %42, i32** %3, align 8
  br label %47

43:                                               ; preds = %36
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32* @json_stringn_nocheck(i8* %44, i64 %45)
  store i32* %46, i32** %3, align 8
  br label %47

47:                                               ; preds = %43, %39, %34
  %48 = load i32*, i32** %3, align 8
  ret i32* %48
}

declare dso_local i32 @next_token(i32*) #1

declare dso_local signext i8 @token(i32*) #1

declare dso_local i32 @prev_token(i32*) #1

declare dso_local i8* @read_string(i32*, i32*, i8*, i64*, i32*) #1

declare dso_local i32* @json_null(...) #1

declare dso_local i32* @jsonp_stringn_nocheck_own(i8*, i64) #1

declare dso_local i32* @json_stringn_nocheck(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
