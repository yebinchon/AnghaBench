; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_read_binary.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_read_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@CHAR_BIT = common dso_local global i32 0, align 4
@MP_DIGIT_BIT = common dso_local global i32 0, align 4
@MP_MEMORY = common dso_local global i32 0, align 4
@MP_NEG = common dso_local global i64 0, align 8
@MP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_read_binary(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br label %20

20:                                               ; preds = %17, %14, %3
  %21 = phi i1 [ false, %14 ], [ false, %3 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @CHAR_BIT, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* @MP_DIGIT_BIT, align 4
  %28 = sub nsw i32 %27, 1
  %29 = add nsw i32 %26, %28
  %30 = load i32, i32* @MP_DIGIT_BIT, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @s_pad(%struct.TYPE_8__* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %20
  %37 = load i32, i32* @MP_MEMORY, align 4
  store i32 %37, i32* %4, align 4
  br label %92

38:                                               ; preds = %20
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = call i32 @mp_int_zero(%struct.TYPE_8__* %39)
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i32, i32* @CHAR_BIT, align 4
  %46 = sub nsw i32 %45, 1
  %47 = ashr i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %38
  %50 = load i64, i64* @MP_NEG, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @s_2comp(i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %38
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = call i8* @MP_DIGITS(%struct.TYPE_8__* %57)
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %6, align 8
  store i8* %59, i8** %10, align 8
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %76, %56
  %62 = load i32, i32* %11, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = load i32, i32* @CHAR_BIT, align 4
  %67 = call i32 @s_qmul(%struct.TYPE_8__* %65, i32 %66)
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8*, i8** %9, align 8
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %73, %70
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %71, align 1
  br label %76

76:                                               ; preds = %64
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %11, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %10, align 8
  br label %61

81:                                               ; preds = %61
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = call i64 @MP_SIGN(%struct.TYPE_8__* %82)
  %84 = load i64, i64* @MP_NEG, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @s_2comp(i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32, i32* @MP_OK, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %36
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @s_pad(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mp_int_zero(%struct.TYPE_8__*) #1

declare dso_local i32 @s_2comp(i8*, i32) #1

declare dso_local i8* @MP_DIGITS(%struct.TYPE_8__*) #1

declare dso_local i32 @s_qmul(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @MP_SIGN(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
