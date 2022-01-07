; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_internal.c_px_find_digest.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_internal.c_px_find_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_digest = type { i32 (i32*)*, i64 }

@int_digest_list = common dso_local global %struct.int_digest* null, align 8
@PXE_NO_HASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @px_find_digest(i8* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.int_digest*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load %struct.int_digest*, %struct.int_digest** @int_digest_list, align 8
  store %struct.int_digest* %8, %struct.int_digest** %6, align 8
  br label %9

9:                                                ; preds = %31, %2
  %10 = load %struct.int_digest*, %struct.int_digest** %6, align 8
  %11 = getelementptr inbounds %struct.int_digest, %struct.int_digest* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = load %struct.int_digest*, %struct.int_digest** %6, align 8
  %16 = getelementptr inbounds %struct.int_digest, %struct.int_digest* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @pg_strcasecmp(i64 %17, i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = call i32* @px_alloc(i32 4)
  store i32* %22, i32** %7, align 8
  %23 = load %struct.int_digest*, %struct.int_digest** %6, align 8
  %24 = getelementptr inbounds %struct.int_digest, %struct.int_digest* %23, i32 0, i32 0
  %25 = load i32 (i32*)*, i32 (i32*)** %24, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 %25(i32* %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32**, i32*** %5, align 8
  store i32* %28, i32** %29, align 8
  store i32 0, i32* %3, align 4
  br label %36

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.int_digest*, %struct.int_digest** %6, align 8
  %33 = getelementptr inbounds %struct.int_digest, %struct.int_digest* %32, i32 1
  store %struct.int_digest* %33, %struct.int_digest** %6, align 8
  br label %9

34:                                               ; preds = %9
  %35 = load i32, i32* @PXE_NO_HASH, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %21
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @pg_strcasecmp(i64, i8*) #1

declare dso_local i32* @px_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
