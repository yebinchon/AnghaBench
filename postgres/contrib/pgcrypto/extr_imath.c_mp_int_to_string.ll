; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_to_string.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_MIN_RADIX = common dso_local global i64 0, align 8
@MP_MAX_RADIX = common dso_local global i64 0, align 8
@MP_OK = common dso_local global i32 0, align 4
@MP_NEG = common dso_local global i64 0, align 8
@MP_TRUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_to_string(i32* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %23, 2
  br label %25

25:                                               ; preds = %22, %19, %4
  %26 = phi i1 [ false, %19 ], [ false, %4 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @MP_MIN_RADIX, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @MP_MAX_RADIX, align 8
  %35 = icmp sle i64 %33, %34
  br label %36

36:                                               ; preds = %32, %25
  %37 = phi i1 [ false, %25 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  store i32 0, i32* %10, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @CMPZ(i32* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = call i8* @s_val2ch(i32 0, i32 1)
  %45 = ptrtoint i8* %44 to i8
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  store i8 %45, i8* %46, align 1
  br label %106

48:                                               ; preds = %36
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @mp_int_init_copy(i32* %12, i32* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @MP_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %114

55:                                               ; preds = %48
  %56 = load i32*, i32** %6, align 8
  %57 = call i64 @MP_SIGN(i32* %56)
  %58 = load i64, i64* @MP_NEG, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  store i8 45, i8* %61, align 1
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i8*, i8** %8, align 8
  store i8* %66, i8** %13, align 8
  br label %67

67:                                               ; preds = %84, %65
  %68 = load i32, i32* %9, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = call i64 @CMPZ(i32* %12)
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %87

75:                                               ; preds = %70
  %76 = load i64, i64* %7, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @s_ddiv(i32* %12, i32 %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i8* @s_val2ch(i32 %79, i32 1)
  %81 = ptrtoint i8* %80 to i8
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %8, align 8
  store i8 %81, i8* %82, align 1
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %9, align 4
  br label %67

87:                                               ; preds = %74, %67
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 -1
  store i8* %89, i8** %14, align 8
  br label %90

90:                                               ; preds = %94, %87
  %91 = load i8*, i8** %13, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = icmp ult i8* %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load i8*, i8** %13, align 8
  %96 = load i8, i8* %95, align 1
  store i8 %96, i8* %16, align 1
  %97 = load i8*, i8** %14, align 8
  %98 = load i8, i8* %97, align 1
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %13, align 8
  store i8 %98, i8* %99, align 1
  %101 = load i8, i8* %16, align 1
  %102 = load i8*, i8** %14, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 -1
  store i8* %103, i8** %14, align 8
  store i8 %101, i8* %102, align 1
  br label %90

104:                                              ; preds = %90
  %105 = call i32 @mp_int_clear(i32* %12)
  br label %106

106:                                              ; preds = %104, %43
  %107 = load i8*, i8** %8, align 8
  store i8 0, i8* %107, align 1
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @MP_OK, align 4
  store i32 %111, i32* %5, align 4
  br label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @MP_TRUNC, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %110, %53
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CMPZ(i32*) #1

declare dso_local i8* @s_val2ch(i32, i32) #1

declare dso_local i32 @mp_int_init_copy(i32*, i32*) #1

declare dso_local i64 @MP_SIGN(i32*) #1

declare dso_local i32 @s_ddiv(i32*, i32) #1

declare dso_local i32 @mp_int_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
