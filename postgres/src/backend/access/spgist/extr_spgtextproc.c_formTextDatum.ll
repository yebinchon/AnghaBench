; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgtextproc.c_formTextDatum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgtextproc.c_formTextDatum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARHDRSZ = common dso_local global i32 0, align 4
@VARHDRSZ_SHORT = common dso_local global i64 0, align 8
@VARATT_SHORT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @formTextDatum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @formTextDatum(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @VARHDRSZ, align 4
  %8 = add nsw i32 %6, %7
  %9 = call i64 @palloc(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @VARHDRSZ_SHORT, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @VARATT_SHORT_MAX, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @VARHDRSZ_SHORT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @SET_VARSIZE_SHORT(i8* %18, i64 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* @VARHDRSZ_SHORT, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @memcpy(i8* %29, i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %17
  br label %47

34:                                               ; preds = %2
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @VARHDRSZ, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @SET_VARSIZE(i8* %35, i32 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @VARHDRSZ, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @memcpy(i8* %43, i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %34, %33
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @PointerGetDatum(i8* %48)
  ret i32 %49
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @SET_VARSIZE_SHORT(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @SET_VARSIZE(i8*, i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
