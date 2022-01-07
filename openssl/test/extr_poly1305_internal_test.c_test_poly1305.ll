; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_poly1305_internal_test.c_test_poly1305.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_poly1305_internal_test.c_test_poly1305.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8*, i64 }

@tests = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Poly1305 test #%d failed.\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Poly1305 test #%d/1+(N-1) failed.\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Poly1305 test #%d/2 failed.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Poly1305 test #%d/%zu+%zu failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_poly1305 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_poly1305(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [16 x i8], align 16
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tests, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i64 %15
  %17 = bitcast %struct.TYPE_9__* %5 to i8*
  %18 = bitcast %struct.TYPE_9__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 40, i1 false)
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @TEST_size_t_eq(i64 %34, i32 16)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %148

38:                                               ; preds = %1
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @Poly1305_Init(i32* %4, i8* %39)
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @Poly1305_Update(i32* %4, i8* %41, i64 %42)
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %45 = call i32 @Poly1305_Final(i32* %4, i8* %44)
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %47 = load i64, i64* %10, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @TEST_mem_eq(i8* %46, i64 %47, i8* %48, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %3, align 4
  %54 = call i32 (i8*, i32, ...) @TEST_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 0, i32* %2, align 4
  br label %148

55:                                               ; preds = %38
  %56 = load i64, i64* %7, align 8
  %57 = icmp ugt i64 %56, 16
  br i1 %57, label %58, label %80

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @Poly1305_Init(i32* %4, i8* %59)
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @Poly1305_Update(i32* %4, i8* %61, i64 1)
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %65, 1
  %67 = call i32 @Poly1305_Update(i32* %4, i8* %64, i64 %66)
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %69 = call i32 @Poly1305_Final(i32* %4, i8* %68)
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %71 = load i64, i64* %10, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @TEST_mem_eq(i8* %70, i64 %71, i8* %72, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %58
  %77 = load i32, i32* %3, align 4
  %78 = call i32 (i8*, i32, ...) @TEST_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  store i32 0, i32* %2, align 4
  br label %148

79:                                               ; preds = %58
  br label %80

80:                                               ; preds = %79, %55
  %81 = load i64, i64* %7, align 8
  %82 = icmp ugt i64 %81, 32
  br i1 %82, label %83, label %147

83:                                               ; preds = %80
  %84 = load i64, i64* %7, align 8
  %85 = udiv i64 %84, 2
  store i64 %85, i64* %12, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @Poly1305_Init(i32* %4, i8* %86)
  %88 = load i8*, i8** %6, align 8
  %89 = load i64, i64* %12, align 8
  %90 = call i32 @Poly1305_Update(i32* %4, i8* %88, i64 %89)
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* %12, align 8
  %96 = sub i64 %94, %95
  %97 = call i32 @Poly1305_Update(i32* %4, i8* %93, i64 %96)
  %98 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %99 = call i32 @Poly1305_Final(i32* %4, i8* %98)
  %100 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %101 = load i64, i64* %10, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @TEST_mem_eq(i8* %100, i64 %101, i8* %102, i64 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %83
  %107 = load i32, i32* %3, align 4
  %108 = call i32 (i8*, i32, ...) @TEST_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  store i32 0, i32* %2, align 4
  br label %148

109:                                              ; preds = %83
  store i64 16, i64* %12, align 8
  br label %110

110:                                              ; preds = %143, %109
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %7, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %146

114:                                              ; preds = %110
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @Poly1305_Init(i32* %4, i8* %115)
  %117 = load i8*, i8** %6, align 8
  %118 = load i64, i64* %12, align 8
  %119 = call i32 @Poly1305_Update(i32* %4, i8* %117, i64 %118)
  %120 = load i8*, i8** %6, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* %12, align 8
  %125 = sub i64 %123, %124
  %126 = call i32 @Poly1305_Update(i32* %4, i8* %122, i64 %125)
  %127 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %128 = call i32 @Poly1305_Final(i32* %4, i8* %127)
  %129 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %130 = load i64, i64* %10, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = load i64, i64* %10, align 8
  %133 = call i32 @TEST_mem_eq(i8* %129, i64 %130, i8* %131, i64 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %114
  %136 = load i32, i32* %3, align 4
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %12, align 8
  %140 = sub i64 %138, %139
  %141 = call i32 (i8*, i32, ...) @TEST_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %136, i64 %137, i64 %140)
  store i32 0, i32* %2, align 4
  br label %148

142:                                              ; preds = %114
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %12, align 8
  %145 = add i64 %144, 16
  store i64 %145, i64* %12, align 8
  br label %110

146:                                              ; preds = %110
  br label %147

147:                                              ; preds = %146, %80
  store i32 1, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %135, %106, %76, %52, %37
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TEST_size_t_eq(i64, i32) #2

declare dso_local i32 @Poly1305_Init(i32*, i8*) #2

declare dso_local i32 @Poly1305_Update(i32*, i8*, i64) #2

declare dso_local i32 @Poly1305_Final(i32*, i8*) #2

declare dso_local i32 @TEST_mem_eq(i8*, i64, i8*, i64) #2

declare dso_local i32 @TEST_info(i8*, i32, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
