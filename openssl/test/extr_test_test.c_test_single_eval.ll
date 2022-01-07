; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_test_test.c_test_single_eval.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_test_test.c_test_single_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"123456\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"23456\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"3456\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"456\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_single_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_single_eval() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca i8*, align 8
  store i32 4, i32* %1, align 4
  store i64 -9000, i64* %2, align 8
  store i8 100, i8* %3, align 1
  store i8 22, i8* %4, align 1
  store i64 500, i64* %5, align 8
  store i64 1234, i64* %6, align 8
  %9 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %9, i8 0, i64 4, i1 false)
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8* %10, i8** %8, align 8
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  %13 = call i64 @TEST_int_eq(i32 %11, i32 4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %193

15:                                               ; preds = %0
  %16 = load i32, i32* %1, align 4
  %17 = call i64 @TEST_int_eq(i32 %16, i32 5)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %193

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  %22 = call i64 @TEST_int_gt(i32 %21, i32 5)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %193

24:                                               ; preds = %19
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  %27 = call i64 @TEST_int_le(i32 5, i32 %25)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %193

29:                                               ; preds = %24
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %1, align 4
  %32 = call i64 @TEST_int_ne(i32 %31, i32 5)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %193

34:                                               ; preds = %29
  %35 = load i32, i32* %1, align 4
  %36 = mul nsw i32 %35, 2
  store i32 %36, i32* %1, align 4
  %37 = call i64 @TEST_int_eq(i32 12, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %193

39:                                               ; preds = %34
  %40 = load i64, i64* %2, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %2, align 8
  %42 = call i64 @TEST_long_eq(i64 %40, i64 -9000)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %193

44:                                               ; preds = %39
  %45 = load i64, i64* %2, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %2, align 8
  %47 = call i64 @TEST_long_eq(i64 %46, i64 -9000)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %193

49:                                               ; preds = %44
  %50 = load i64, i64* %2, align 8
  %51 = sdiv i64 %50, 2
  store i64 %51, i64* %2, align 8
  %52 = call i64 @TEST_long_ne(i64 -9000, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %193

54:                                               ; preds = %49
  %55 = load i64, i64* %2, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %2, align 8
  %57 = call i64 @TEST_long_lt(i64 %56, i64 -4500)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %193

59:                                               ; preds = %54
  %60 = load i8, i8* %3, align 1
  %61 = add i8 %60, 1
  store i8 %61, i8* %3, align 1
  %62 = call i64 @TEST_char_eq(i8 signext %61, i8 signext 101)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %193

64:                                               ; preds = %59
  %65 = load i8, i8* %3, align 1
  %66 = add i8 %65, -1
  store i8 %66, i8* %3, align 1
  %67 = call i64 @TEST_char_eq(i8 signext 101, i8 signext %65)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %193

69:                                               ; preds = %64
  %70 = load i8, i8* %3, align 1
  %71 = add i8 %70, -1
  store i8 %71, i8* %3, align 1
  %72 = call i64 @TEST_char_ne(i8 signext 100, i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %193

74:                                               ; preds = %69
  %75 = load i8, i8* %3, align 1
  %76 = add i8 %75, -1
  store i8 %76, i8* %3, align 1
  %77 = call i64 @TEST_char_le(i8 signext 98, i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %193

79:                                               ; preds = %74
  %80 = load i8, i8* %3, align 1
  %81 = add i8 %80, 1
  store i8 %81, i8* %3, align 1
  %82 = sext i8 %80 to i32
  %83 = call i64 @TEST_char_lt(i32 %82, i8 signext 99)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %193

85:                                               ; preds = %79
  %86 = load i8, i8* %4, align 1
  %87 = add i8 %86, 1
  store i8 %87, i8* %4, align 1
  %88 = zext i8 %86 to i32
  %89 = call i64 @TEST_uchar_eq(i8 zeroext 22, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %193

91:                                               ; preds = %85
  %92 = load i8, i8* %4, align 1
  %93 = zext i8 %92 to i32
  %94 = sdiv i32 %93, 2
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %4, align 1
  %96 = call i64 @TEST_uchar_eq(i8 zeroext %95, i32 11)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %193

98:                                               ; preds = %91
  %99 = load i64, i64* %5, align 8
  %100 = xor i64 %99, 1
  store i64 %100, i64* %5, align 8
  %101 = call i64 @TEST_ulong_eq(i64 %100, i32 501)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %193

103:                                              ; preds = %98
  %104 = load i64, i64* %5, align 8
  %105 = xor i64 %104, 3
  store i64 %105, i64* %5, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i64 @TEST_ulong_eq(i64 502, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %193

109:                                              ; preds = %103
  %110 = load i64, i64* %5, align 8
  %111 = mul i64 %110, 3
  %112 = sub i64 %111, 6
  store i64 %112, i64* %5, align 8
  %113 = call i64 @TEST_ulong_eq(i64 %112, i32 1500)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %193

115:                                              ; preds = %109
  %116 = load i32, i32* %1, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %1, align 4
  %118 = load i64, i64* %6, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %6, align 8
  %120 = call i64 @TEST_size_t_eq(i64 %118, i32 1234)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %193

122:                                              ; preds = %115
  %123 = load i64, i64* %6, align 8
  %124 = call i64 @TEST_size_t_eq(i64 %123, i32 1235)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %193

126:                                              ; preds = %122
  %127 = load i32, i32* %1, align 4
  %128 = call i64 @TEST_int_eq(i32 11, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %193

130:                                              ; preds = %126
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %8, align 8
  %133 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %134 = call i64 @TEST_ptr_eq(i8* %131, i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %193

136:                                              ; preds = %130
  %137 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  %139 = load i8*, i8** %8, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %8, align 8
  %141 = call i64 @TEST_ptr_eq(i8* %138, i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %193

143:                                              ; preds = %136
  %144 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 -2
  store i8* %146, i8** %8, align 8
  %147 = call i64 @TEST_ptr_eq(i8* %144, i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %193

149:                                              ; preds = %143
  %150 = load i8*, i8** %8, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %8, align 8
  %152 = call i64 @TEST_ptr(i8* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %193

154:                                              ; preds = %149
  %155 = load i8*, i8** %8, align 8
  %156 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = call i64 @TEST_ptr_eq(i8* %155, i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %193

160:                                              ; preds = %154
  store i8* null, i8** %8, align 8
  %161 = call i64 @TEST_ptr_null(i32 0)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %193

163:                                              ; preds = %160
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 1), i8** %8, align 8
  %164 = call i64 @TEST_str_eq(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 1), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %193

166:                                              ; preds = %163
  %167 = load i8*, i8** %8, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %8, align 8
  %169 = call i64 @TEST_str_eq(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %193

171:                                              ; preds = %166
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %8, align 8
  %174 = ptrtoint i8* %172 to i32
  %175 = call i64 @TEST_str_ne(i32 %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %193

177:                                              ; preds = %171
  %178 = load i8*, i8** %8, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 -1
  store i8* %179, i8** %8, align 8
  %180 = call i64 @TEST_mem_eq(i8* %179, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %177
  %183 = load i8*, i8** %8, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %8, align 8
  %185 = ptrtoint i8* %183 to i32
  %186 = call i64 @TEST_mem_ne(i32 %185, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %182
  %189 = load i8*, i8** %8, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 -1
  store i8* %190, i8** %8, align 8
  %191 = call i64 @TEST_mem_eq(i8* %189, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %192 = icmp ne i64 %191, 0
  br label %193

193:                                              ; preds = %188, %182, %177, %171, %166, %163, %160, %154, %149, %143, %136, %130, %126, %122, %115, %109, %103, %98, %91, %85, %79, %74, %69, %64, %59, %54, %49, %44, %39, %34, %29, %24, %19, %15, %0
  %194 = phi i1 [ false, %182 ], [ false, %177 ], [ false, %171 ], [ false, %166 ], [ false, %163 ], [ false, %160 ], [ false, %154 ], [ false, %149 ], [ false, %143 ], [ false, %136 ], [ false, %130 ], [ false, %126 ], [ false, %122 ], [ false, %115 ], [ false, %109 ], [ false, %103 ], [ false, %98 ], [ false, %91 ], [ false, %85 ], [ false, %79 ], [ false, %74 ], [ false, %69 ], [ false, %64 ], [ false, %59 ], [ false, %54 ], [ false, %49 ], [ false, %44 ], [ false, %39 ], [ false, %34 ], [ false, %29 ], [ false, %24 ], [ false, %19 ], [ false, %15 ], [ false, %0 ], [ %192, %188 ]
  %195 = zext i1 %194 to i32
  ret i32 %195
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @TEST_int_eq(i32, i32) #2

declare dso_local i64 @TEST_int_gt(i32, i32) #2

declare dso_local i64 @TEST_int_le(i32, i32) #2

declare dso_local i64 @TEST_int_ne(i32, i32) #2

declare dso_local i64 @TEST_long_eq(i64, i64) #2

declare dso_local i64 @TEST_long_ne(i64, i64) #2

declare dso_local i64 @TEST_long_lt(i64, i64) #2

declare dso_local i64 @TEST_char_eq(i8 signext, i8 signext) #2

declare dso_local i64 @TEST_char_ne(i8 signext, i8 signext) #2

declare dso_local i64 @TEST_char_le(i8 signext, i8 signext) #2

declare dso_local i64 @TEST_char_lt(i32, i8 signext) #2

declare dso_local i64 @TEST_uchar_eq(i8 zeroext, i32) #2

declare dso_local i64 @TEST_ulong_eq(i64, i32) #2

declare dso_local i64 @TEST_size_t_eq(i64, i32) #2

declare dso_local i64 @TEST_ptr_eq(i8*, i8*) #2

declare dso_local i64 @TEST_ptr(i8*) #2

declare dso_local i64 @TEST_ptr_null(i32) #2

declare dso_local i64 @TEST_str_eq(i8*, i8*) #2

declare dso_local i64 @TEST_str_ne(i32, i8*) #2

declare dso_local i64 @TEST_mem_eq(i8*, i32, i8*, i32) #2

declare dso_local i64 @TEST_mem_ne(i32, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
