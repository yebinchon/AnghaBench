; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_cmd_append_sstr_key.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_cmd_append_sstr_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_cmd_append_sstr_key(i32* %0, i8* %1, i64 %2, i32* %3, i16* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i16* %4, i16** %10, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 @redis_key_prefix(i32* %13, i8** %7, i64* %8)
  store i32 %14, i32* %11, align 4
  %15 = load i16*, i16** %10, align 8
  %16 = icmp ne i16* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call signext i16 @cluster_hash_key(i8* %18, i64 %19)
  %21 = load i16*, i16** %10, align 8
  store i16 %20, i16* %21, align 2
  br label %22

22:                                               ; preds = %17, %5
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @redis_cmd_append_sstr(i32* %23, i8* %24, i64 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @efree(i8* %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* %12, align 4
  ret i32 %33
}

declare dso_local i32 @redis_key_prefix(i32*, i8**, i64*) #1

declare dso_local signext i16 @cluster_hash_key(i8*, i64) #1

declare dso_local i32 @redis_cmd_append_sstr(i32*, i8*, i64) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
