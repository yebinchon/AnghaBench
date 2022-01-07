; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c__bt_restore_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c__bt_restore_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MaxIndexTuplesPerPage = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"_bt_restore_page: cannot add item to page\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @_bt_restore_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bt_restore_page(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %9, align 8
  %19 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %30, %3
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @memcpy(i32* %7, i8* %31, i32 4)
  %33 = call i32 @IndexTupleSize(i32* %7)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @MAXALIGN(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %22, i64 %39
  store i64 %37, i64* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %25, i64 %43
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %5, align 8
  br label %26

51:                                               ; preds = %26
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %82, %51
  %56 = load i32, i32* %13, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %22, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %25, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %68, %69
  %71 = call i64 @PageAddItem(i32 %59, i64 %63, i32 %67, i32 %70, i32 0, i32 0)
  %72 = load i64, i64* @InvalidOffsetNumber, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %58
  %75 = load i32, i32* @PANIC, align 4
  %76 = call i32 @elog(i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %58
  %78 = load i32, i32* %8, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %5, align 8
  br label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %13, align 4
  br label %55

85:                                               ; preds = %55
  %86 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @IndexTupleSize(i32*) #2

declare dso_local i32 @MAXALIGN(i32) #2

declare dso_local i64 @PageAddItem(i32, i64, i32, i32, i32, i32) #2

declare dso_local i32 @elog(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
