; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_gin.c_make_text_key.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_gin.c_make_text_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JGIN_MAXLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@JGINFLAG_HASHED = common dso_local global i8 0, align 1
@VARHDRSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*, i32)* @make_text_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_text_key(i8 signext %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [10 x i8], align 1
  %9 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @JGIN_MAXLENGTH, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @hash_any(i8* %14, i32 %15)
  %17 = call i32 @DatumGetUInt32(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @snprintf(i8* %18, i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  store i8* %21, i8** %5, align 8
  store i32 8, i32* %6, align 4
  %22 = load i8, i8* @JGINFLAG_HASHED, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* %4, align 1
  %25 = sext i8 %24 to i32
  %26 = or i32 %25, %23
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %4, align 1
  br label %28

28:                                               ; preds = %13, %3
  %29 = load i64, i64* @VARHDRSZ, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = add nsw i64 %32, 1
  %34 = call i64 @palloc(i64 %33)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i64, i64* @VARHDRSZ, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = add nsw i64 %40, 1
  %42 = call i32 @SET_VARSIZE(i32* %36, i64 %41)
  %43 = load i8, i8* %4, align 1
  %44 = load i32*, i32** %7, align 8
  %45 = call i8* @VARDATA(i32* %44)
  store i8 %43, i8* %45, align 1
  %46 = load i32*, i32** %7, align 8
  %47 = call i8* @VARDATA(i32* %46)
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @memcpy(i8* %48, i8* %49, i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @PointerGetDatum(i32* %52)
  ret i32 %53
}

declare dso_local i32 @DatumGetUInt32(i32) #1

declare dso_local i32 @hash_any(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i32 @SET_VARSIZE(i32*, i64) #1

declare dso_local i8* @VARDATA(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
