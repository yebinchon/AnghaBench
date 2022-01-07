; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_vacuum_one_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_vacuum_one_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MaxOffsetNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @_bt_vacuum_one_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bt_vacuum_one_page(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @MaxOffsetNumber, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @BufferGetPage(i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @PageGetSpecialPointer(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @P_ISLEAF(i32 %24)
  %26 = call i32 @Assert(i32 %25)
  %27 = load i32, i32* %14, align 4
  %28 = call i64 @P_FIRSTDATAKEY(i32 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i64 @PageGetMaxOffsetNumber(i32 %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %11, align 8
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %50, %3
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load i32, i32* %13, align 4
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @PageGetItemId(i32 %37, i64 %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i64 @ItemIdIsDead(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i64, i64* %19, i64 %47
  store i64 %44, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %36
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @OffsetNumberNext(i64 %51)
  store i64 %52, i64* %10, align 8
  br label %32

53:                                               ; preds = %32
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @_bt_delitems_delete(i32 %57, i32 %58, i64* %19, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %63)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BufferGetPage(i32) #2

declare dso_local i32 @PageGetSpecialPointer(i32) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @P_ISLEAF(i32) #2

declare dso_local i64 @P_FIRSTDATAKEY(i32) #2

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #2

declare dso_local i32 @PageGetItemId(i32, i64) #2

declare dso_local i64 @ItemIdIsDead(i32) #2

declare dso_local i64 @OffsetNumberNext(i64) #2

declare dso_local i32 @_bt_delitems_delete(i32, i32, i64*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
