; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_pack_unpack.c_pack_array.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_pack_unpack.c_pack_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"<format>\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unexpected end of format string\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"<internal>\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unable to append to array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @pack_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pack_array(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32* (...) @json_array()
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @next_token(i32* %9)
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i32*, i32** %4, align 8
  %13 = call signext i8 @token(i32* %12)
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 93
  br i1 %15, label %16, label %41

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = call signext i8 @token(i32* %17)
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @set_error(i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %43

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32* @pack(i32* %24, i32* %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %43

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i64 @json_array_append_new(i32* %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @set_error(i32* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %43

38:                                               ; preds = %30
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @next_token(i32* %39)
  br label %11

41:                                               ; preds = %11
  %42 = load i32*, i32** %6, align 8
  store i32* %42, i32** %3, align 8
  br label %46

43:                                               ; preds = %35, %29, %20
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @json_decref(i32* %44)
  store i32* null, i32** %3, align 8
  br label %46

46:                                               ; preds = %43, %41
  %47 = load i32*, i32** %3, align 8
  ret i32* %47
}

declare dso_local i32* @json_array(...) #1

declare dso_local i32 @next_token(i32*) #1

declare dso_local signext i8 @token(i32*) #1

declare dso_local i32 @set_error(i32*, i8*, i8*) #1

declare dso_local i32* @pack(i32*, i32*) #1

declare dso_local i64 @json_array_append_new(i32*, i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
