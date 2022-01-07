; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_vdbeRecordDecodeInt.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_vdbeRecordDecodeInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CORRUPT_DB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @vdbeRecordDecodeInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeRecordDecodeInt(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i64, i64* @CORRUPT_DB, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %14, 9
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 7
  br label %19

19:                                               ; preds = %16, %13, %10
  %20 = phi i1 [ false, %13 ], [ false, %10 ], [ %18, %16 ]
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi i1 [ true, %2 ], [ %20, %19 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %87 [
    i32 0, label %26
    i32 1, label %26
    i32 2, label %34
    i32 3, label %42
    i32 4, label %50
    i32 5, label %59
    i32 6, label %72
  ]

26:                                               ; preds = %21, %21
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 128
  %31 = call i32 @testcase(i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @ONE_BYTE_INT(i32* %32)
  store i32 %33, i32* %3, align 4
  br label %90

34:                                               ; preds = %21
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 128
  %39 = call i32 @testcase(i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @TWO_BYTE_INT(i32* %40)
  store i32 %41, i32* %3, align 4
  br label %90

42:                                               ; preds = %21
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 128
  %47 = call i32 @testcase(i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @THREE_BYTE_INT(i32* %48)
  store i32 %49, i32* %3, align 4
  br label %90

50:                                               ; preds = %21
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 128
  %55 = call i32 @testcase(i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @FOUR_BYTE_UINT(i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %90

59:                                               ; preds = %21
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 128
  %64 = call i32 @testcase(i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = call i32 @FOUR_BYTE_UINT(i32* %66)
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @TWO_BYTE_INT(i32* %68)
  %70 = mul nsw i32 undef, %69
  %71 = add nsw i32 %67, %70
  store i32 %71, i32* %3, align 4
  br label %90

72:                                               ; preds = %21
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @FOUR_BYTE_UINT(i32* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 128
  %79 = call i32 @testcase(i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = shl i32 %80, 32
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = call i32 @FOUR_BYTE_UINT(i32* %83)
  %85 = or i32 %81, %84
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %90

87:                                               ; preds = %21
  %88 = load i32, i32* %4, align 4
  %89 = sub nsw i32 %88, 8
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %72, %59, %50, %42, %34, %26
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @ONE_BYTE_INT(i32*) #1

declare dso_local i32 @TWO_BYTE_INT(i32*) #1

declare dso_local i32 @THREE_BYTE_INT(i32*) #1

declare dso_local i32 @FOUR_BYTE_UINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
