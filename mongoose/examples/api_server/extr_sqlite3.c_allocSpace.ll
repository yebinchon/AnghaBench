; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_allocSpace.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_allocSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32**, i32*, i32*)* @allocSpace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @allocSpace(i8* %0, i32 %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32**, i32*** %9, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @EIGHT_BYTE_ALIGNMENT(i32* %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %6, align 8
  br label %46

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @ROUND8(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32**, i32*** %9, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ule i32* %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load i32**, i32*** %9, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32**, i32*** %9, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %35, align 8
  br label %44

39:                                               ; preds = %20
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %30
  %45 = load i8*, i8** %7, align 8
  store i8* %45, i8** %6, align 8
  br label %46

46:                                               ; preds = %44, %18
  %47 = load i8*, i8** %6, align 8
  ret i8* %47
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @EIGHT_BYTE_ALIGNMENT(i32*) #1

declare dso_local i32 @ROUND8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
