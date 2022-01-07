; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ctype_internal_test.c_test_ctype_chars.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ctype_internal_test.c_test_ctype_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_ctype_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ctype_chars(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = trunc i32 %4 to i8
  %6 = call i64 @isascii(i8 zeroext %5)
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @ossl_isascii(i32 %9)
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @TEST_int_eq(i32 %8, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %156

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @ossl_isascii(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %156

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @isalpha(i32 %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @ossl_isalpha(i32 %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @TEST_int_eq(i32 %25, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %153

32:                                               ; preds = %21
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @isalnum(i32 %33)
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @ossl_isalnum(i32 %37)
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @TEST_int_eq(i32 %36, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %153

43:                                               ; preds = %32
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @isblank(i32 %44)
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @ossl_isblank(i32 %48)
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @TEST_int_eq(i32 %47, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %153

54:                                               ; preds = %43
  %55 = load i32, i32* %3, align 4
  %56 = call i64 @iscntrl(i32 %55)
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %3, align 4
  %60 = call i64 @ossl_iscntrl(i32 %59)
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i64 @TEST_int_eq(i32 %58, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %153

65:                                               ; preds = %54
  %66 = load i32, i32* %3, align 4
  %67 = call i64 @isdigit(i32 %66)
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %3, align 4
  %71 = call i64 @ossl_isdigit(i32 %70)
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @TEST_int_eq(i32 %69, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %153

76:                                               ; preds = %65
  %77 = load i32, i32* %3, align 4
  %78 = call i64 @isgraph(i32 %77)
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %3, align 4
  %82 = call i64 @ossl_isgraph(i32 %81)
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i64 @TEST_int_eq(i32 %80, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %153

87:                                               ; preds = %76
  %88 = load i32, i32* %3, align 4
  %89 = call i64 @islower(i32 %88)
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %3, align 4
  %93 = call i64 @ossl_islower(i32 %92)
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i64 @TEST_int_eq(i32 %91, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %153

98:                                               ; preds = %87
  %99 = load i32, i32* %3, align 4
  %100 = call i64 @isprint(i32 %99)
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %3, align 4
  %104 = call i64 @ossl_isprint(i32 %103)
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i64 @TEST_int_eq(i32 %102, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %153

109:                                              ; preds = %98
  %110 = load i32, i32* %3, align 4
  %111 = call i64 @ispunct(i32 %110)
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %3, align 4
  %115 = call i64 @ossl_ispunct(i32 %114)
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i64 @TEST_int_eq(i32 %113, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %153

120:                                              ; preds = %109
  %121 = load i32, i32* %3, align 4
  %122 = call i64 @isspace(i32 %121)
  %123 = icmp ne i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %3, align 4
  %126 = call i64 @ossl_isspace(i32 %125)
  %127 = icmp ne i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i64 @TEST_int_eq(i32 %124, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %153

131:                                              ; preds = %120
  %132 = load i32, i32* %3, align 4
  %133 = call i64 @isupper(i32 %132)
  %134 = icmp ne i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %3, align 4
  %137 = call i64 @ossl_isupper(i32 %136)
  %138 = icmp ne i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i64 @TEST_int_eq(i32 %135, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %131
  %143 = load i32, i32* %3, align 4
  %144 = call i64 @isxdigit(i32 %143)
  %145 = icmp ne i64 %144, 0
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %3, align 4
  %148 = call i64 @ossl_isxdigit(i32 %147)
  %149 = icmp ne i64 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i64 @TEST_int_eq(i32 %146, i32 %150)
  %152 = icmp ne i64 %151, 0
  br label %153

153:                                              ; preds = %142, %131, %120, %109, %98, %87, %76, %65, %54, %43, %32, %21
  %154 = phi i1 [ false, %131 ], [ false, %120 ], [ false, %109 ], [ false, %98 ], [ false, %87 ], [ false, %76 ], [ false, %65 ], [ false, %54 ], [ false, %43 ], [ false, %32 ], [ false, %21 ], [ %152, %142 ]
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %153, %20, %15
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i64 @TEST_int_eq(i32, i32) #1

declare dso_local i64 @isascii(i8 zeroext) #1

declare dso_local i64 @ossl_isascii(i32) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i64 @ossl_isalpha(i32) #1

declare dso_local i64 @isalnum(i32) #1

declare dso_local i64 @ossl_isalnum(i32) #1

declare dso_local i64 @isblank(i32) #1

declare dso_local i64 @ossl_isblank(i32) #1

declare dso_local i64 @iscntrl(i32) #1

declare dso_local i64 @ossl_iscntrl(i32) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i64 @ossl_isdigit(i32) #1

declare dso_local i64 @isgraph(i32) #1

declare dso_local i64 @ossl_isgraph(i32) #1

declare dso_local i64 @islower(i32) #1

declare dso_local i64 @ossl_islower(i32) #1

declare dso_local i64 @isprint(i32) #1

declare dso_local i64 @ossl_isprint(i32) #1

declare dso_local i64 @ispunct(i32) #1

declare dso_local i64 @ossl_ispunct(i32) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @ossl_isspace(i32) #1

declare dso_local i64 @isupper(i32) #1

declare dso_local i64 @ossl_isupper(i32) #1

declare dso_local i64 @isxdigit(i32) #1

declare dso_local i64 @ossl_isxdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
