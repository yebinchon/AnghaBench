; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_bytea_catenate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_bytea_catenate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARHDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @bytea_catenate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bytea_catenate(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @VARSIZE_ANY_EXHDR(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @VARSIZE_ANY_EXHDR(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* @VARHDRSZ, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @palloc(i32 %27)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @SET_VARSIZE(i32* %30, i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i8* @VARDATA(i32* %33)
  store i8* %34, i8** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %21
  %38 = load i8*, i8** %9, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @VARDATA_ANY(i32* %39)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @memcpy(i8* %38, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %21
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @VARDATA_ANY(i32* %51)
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @memcpy(i8* %50, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %43
  %56 = load i32*, i32** %5, align 8
  ret i32* %56
}

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @SET_VARSIZE(i32*, i32) #1

declare dso_local i8* @VARDATA(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @VARDATA_ANY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
