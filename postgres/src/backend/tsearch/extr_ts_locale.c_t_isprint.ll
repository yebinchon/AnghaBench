; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_locale.c_t_isprint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_locale.c_t_isprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WC_BUF_LEN = common dso_local global i32 0, align 4
@DEFAULT_COLLATION_OID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t_isprint(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @pg_mblen(i8* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @WC_BUF_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @DEFAULT_COLLATION_OID, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @lc_ctype_is_c(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %1
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @TOUCHAR(i8* %24)
  %26 = call i32 @isprint(i32 %25) #4
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %37

27:                                               ; preds = %19
  %28 = load i32, i32* @WC_BUF_LEN, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @char2wchar(i64* %15, i32 %28, i8* %29, i32 %30, i32 %31)
  %33 = getelementptr inbounds i64, i64* %15, i64 0
  %34 = load i64, i64* %33, align 16
  %35 = trunc i64 %34 to i32
  %36 = call i32 @iswprint(i32 %35)
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %37

37:                                               ; preds = %27, %23
  %38 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @pg_mblen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @lc_ctype_is_c(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #3

declare dso_local i32 @TOUCHAR(i8*) #1

declare dso_local i32 @char2wchar(i64*, i32, i8*, i32, i32) #1

declare dso_local i32 @iswprint(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
