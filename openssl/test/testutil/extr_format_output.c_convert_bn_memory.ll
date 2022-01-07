; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_format_output.c_convert_bn_memory.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_format_output.c_convert_bn_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_OUTPUT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i32*, i32*)* @convert_bn_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_bn_memory(i8* %0, i64 %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = mul i64 %17, 2
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %12, align 4
  %20 = load i8*, i8** %9, align 8
  store i8* %20, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %99

23:                                               ; preds = %5
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @BN_is_zero(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %99, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* @BN_OUTPUT_SIZE, align 4
  %32 = call i32 @hex_convert_memory(i8* %28, i64 %29, i8* %30, i32 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %97

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %60, %36
  %38 = load i8*, i8** %14, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 48
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %14, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 32
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ true, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %63

49:                                               ; preds = %47
  %50 = load i8*, i8** %14, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 48
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i8*, i8** %14, align 8
  store i8* %55, i8** %15, align 8
  %56 = load i8*, i8** %14, align 8
  store i8 32, i8* %56, align 1
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %54, %49
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %14, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %14, align 8
  br label %37

63:                                               ; preds = %47
  %64 = load i8*, i8** %14, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 240
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %68
  %77 = load i32*, i32** %11, align 8
  %78 = call i64 @BN_is_negative(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32*, i32** %10, align 8
  store i32 0, i32* %81, align 4
  %82 = load i8*, i8** %15, align 8
  store i8 45, i8* %82, align 1
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %80, %76, %68
  br label %96

86:                                               ; preds = %63
  %87 = load i32*, i32** %10, align 8
  store i32 0, i32* %87, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = call i64 @BN_is_negative(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i8*, i8** %15, align 8
  store i8 45, i8* %92, align 1
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %91, %86
  br label %96

96:                                               ; preds = %95, %85
  br label %97

97:                                               ; preds = %96, %27
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %6, align 4
  br label %147

99:                                               ; preds = %23, %5
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %124, %99
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %100
  %105 = load i8*, i8** %14, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %14, align 8
  store i8 32, i8* %105, align 1
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @BN_OUTPUT_SIZE, align 4
  %109 = mul nsw i32 2, %108
  %110 = srem i32 %107, %109
  %111 = load i32, i32* @BN_OUTPUT_SIZE, align 4
  %112 = mul nsw i32 2, %111
  %113 = sub nsw i32 %112, 1
  %114 = icmp eq i32 %110, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %104
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %12, align 4
  %118 = sub nsw i32 %117, 1
  %119 = icmp ne i32 %116, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i8*, i8** %14, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %14, align 8
  store i8 32, i8* %121, align 1
  br label %123

123:                                              ; preds = %120, %115, %104
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %100

127:                                              ; preds = %100
  %128 = load i8*, i8** %14, align 8
  store i8 0, i8* %128, align 1
  %129 = load i32*, i32** %11, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %138

132:                                              ; preds = %127
  %133 = load i32*, i32** %11, align 8
  %134 = call i64 @BN_is_negative(i32* %133)
  %135 = icmp ne i64 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  store i8* %137, i8** %16, align 8
  br label %138

138:                                              ; preds = %132, %131
  %139 = load i8*, i8** %14, align 8
  %140 = load i8*, i8** %16, align 8
  %141 = call i32 @strlen(i8* %140)
  %142 = sext i32 %141 to i64
  %143 = sub i64 0, %142
  %144 = getelementptr inbounds i8, i8* %139, i64 %143
  %145 = load i8*, i8** %16, align 8
  %146 = call i32 @strcpy(i8* %144, i8* %145)
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %138, %97
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @BN_is_zero(i32*) #1

declare dso_local i32 @hex_convert_memory(i8*, i64, i8*, i32) #1

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
