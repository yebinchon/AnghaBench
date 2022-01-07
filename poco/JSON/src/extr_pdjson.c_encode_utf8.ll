; ModuleID = '/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_encode_utf8.c'
source_filename = "/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_encode_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"invalid codepoint %06lx\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"can't encode UTF-8 for %06lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @encode_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_utf8(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ult i64 %6, 128
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @pushchar(i32* %9, i64 %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %3, align 4
  br label %120

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %14, 2048
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = lshr i64 %18, 6
  %20 = and i64 %19, 31
  %21 = or i64 %20, 192
  %22 = call i64 @pushchar(i32* %17, i64 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = lshr i64 %26, 0
  %28 = and i64 %27, 63
  %29 = or i64 %28, 128
  %30 = call i64 @pushchar(i32* %25, i64 %29)
  %31 = icmp eq i64 %30, 0
  br label %32

32:                                               ; preds = %24, %16
  %33 = phi i1 [ false, %16 ], [ %31, %24 ]
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %120

36:                                               ; preds = %13
  %37 = load i64, i64* %5, align 8
  %38 = icmp ult i64 %37, 65536
  br i1 %38, label %39, label %77

39:                                               ; preds = %36
  %40 = load i64, i64* %5, align 8
  %41 = icmp uge i64 %40, 55296
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i64, i64* %5, align 8
  %44 = icmp ule i64 %43, 57343
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32*, i32** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @json_error(i32* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %47)
  store i32 -1, i32* %3, align 4
  br label %120

49:                                               ; preds = %42, %39
  %50 = load i32*, i32** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = lshr i64 %51, 12
  %53 = and i64 %52, 15
  %54 = or i64 %53, 224
  %55 = call i64 @pushchar(i32* %50, i64 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %49
  %58 = load i32*, i32** %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = lshr i64 %59, 6
  %61 = and i64 %60, 63
  %62 = or i64 %61, 128
  %63 = call i64 @pushchar(i32* %58, i64 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load i32*, i32** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = lshr i64 %67, 0
  %69 = and i64 %68, 63
  %70 = or i64 %69, 128
  %71 = call i64 @pushchar(i32* %66, i64 %70)
  %72 = icmp eq i64 %71, 0
  br label %73

73:                                               ; preds = %65, %57, %49
  %74 = phi i1 [ false, %57 ], [ false, %49 ], [ %72, %65 ]
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %3, align 4
  br label %120

77:                                               ; preds = %36
  %78 = load i64, i64* %5, align 8
  %79 = icmp ult i64 %78, 1114112
  br i1 %79, label %80, label %116

80:                                               ; preds = %77
  %81 = load i32*, i32** %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = lshr i64 %82, 18
  %84 = and i64 %83, 7
  %85 = or i64 %84, 240
  %86 = call i64 @pushchar(i32* %81, i64 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %80
  %89 = load i32*, i32** %4, align 8
  %90 = load i64, i64* %5, align 8
  %91 = lshr i64 %90, 12
  %92 = and i64 %91, 63
  %93 = or i64 %92, 128
  %94 = call i64 @pushchar(i32* %89, i64 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %88
  %97 = load i32*, i32** %4, align 8
  %98 = load i64, i64* %5, align 8
  %99 = lshr i64 %98, 6
  %100 = and i64 %99, 63
  %101 = or i64 %100, 128
  %102 = call i64 @pushchar(i32* %97, i64 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %96
  %105 = load i32*, i32** %4, align 8
  %106 = load i64, i64* %5, align 8
  %107 = lshr i64 %106, 0
  %108 = and i64 %107, 63
  %109 = or i64 %108, 128
  %110 = call i64 @pushchar(i32* %105, i64 %109)
  %111 = icmp eq i64 %110, 0
  br label %112

112:                                              ; preds = %104, %96, %88, %80
  %113 = phi i1 [ false, %96 ], [ false, %88 ], [ false, %80 ], [ %111, %104 ]
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %3, align 4
  br label %120

116:                                              ; preds = %77
  %117 = load i32*, i32** %4, align 8
  %118 = load i64, i64* %5, align 8
  %119 = call i32 @json_error(i32* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %118)
  store i32 -1, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %112, %73, %45, %32, %8
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @pushchar(i32*, i64) #1

declare dso_local i32 @json_error(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
