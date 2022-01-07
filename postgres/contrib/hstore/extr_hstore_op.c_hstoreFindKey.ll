; ModuleID = '/home/carl/AnghaBench/postgres/contrib/hstore/extr_hstore_op.c_hstoreFindKey.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/hstore/extr_hstore_op.c_hstoreFindKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hstoreFindKey(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @ARRPTR(i32* %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32 [ %22, %20 ], [ 0, %23 ]
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @HS_COUNT(i32* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i8* @STRPTR(i32* %28)
  store i8* %29, i8** %14, align 8
  br label %30

30:                                               ; preds = %83, %24
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %84

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 %36, %37
  %39 = sdiv i32 %38, 2
  %40 = add nsw i32 %35, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @HSTORE_KEYLEN(i32* %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load i32*, i32** %10, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @HSTORE_KEY(i32* %47, i8* %48, i32 %49)
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @memcmp(i32 %50, i8* %51, i32 %52)
  store i32 %53, i32* %15, align 4
  br label %62

54:                                               ; preds = %34
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @HSTORE_KEYLEN(i32* %55, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 -1
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %54, %46
  %63 = load i32, i32* %15, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32*, i32** %7, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %5, align 4
  br label %91

74:                                               ; preds = %62
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %80, %77
  br label %83

83:                                               ; preds = %82
  br label %30

84:                                               ; preds = %30
  %85 = load i32*, i32** %7, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = load i32*, i32** %7, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  store i32 -1, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %72
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32* @ARRPTR(i32*) #1

declare dso_local i32 @HS_COUNT(i32*) #1

declare dso_local i8* @STRPTR(i32*) #1

declare dso_local i32 @HSTORE_KEYLEN(i32*, i32) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @HSTORE_KEY(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
