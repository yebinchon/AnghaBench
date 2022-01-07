; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_lib.c_sanitize_line.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_lib.c_sanitize_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.sanitize_line.utf8_bom = private unnamed_addr constant [3 x i8] c"\EF\BB\BF", align 1
@PEM_FLAG_EAY_COMPATIBLE = common dso_local global i32 0, align 4
@PEM_FLAG_ONLY_B64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @sanitize_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanitize_line(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %4
  %14 = bitcast [3 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.sanitize_line.utf8_bom, i32 0, i32 0), i64 3, i1 false)
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %20 = call i64 @memcmp(i8* %18, i8* %19, i32 3)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 3
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 3
  %28 = call i32 @memmove(i8* %23, i8* %25, i32 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 3
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8 0, i8* %33, align 1
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %34, 3
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %22, %17, %13
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @PEM_FLAG_EAY_COMPATIBLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %56, %42
  %44 = load i32, i32* %6, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 %52, 32
  br label %54

54:                                               ; preds = %46, %43
  %55 = phi i1 [ false, %43 ], [ %53, %46 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %6, align 4
  br label %43

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %145

62:                                               ; preds = %37
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @PEM_FLAG_ONLY_B64, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %98, %67
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %68
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @ossl_isbase64(i8 signext %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %72
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 10
  br i1 %87, label %96, label %88

88:                                               ; preds = %80
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 13
  br i1 %95, label %96, label %97

96:                                               ; preds = %88, %80, %72
  br label %101

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %68

101:                                              ; preds = %96, %68
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %6, align 4
  br label %144

103:                                              ; preds = %62
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %139, %103
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %142

108:                                              ; preds = %104
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 10
  br i1 %115, label %124, label %116

116:                                              ; preds = %108
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 13
  br i1 %123, label %124, label %125

124:                                              ; preds = %116, %108
  br label %142

125:                                              ; preds = %116
  %126 = load i8*, i8** %5, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = call i64 @ossl_iscntrl(i8 signext %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = load i8*, i8** %5, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  store i8 32, i8* %137, align 1
  br label %138

138:                                              ; preds = %133, %125
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %104

142:                                              ; preds = %124, %104
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %142, %101
  br label %145

145:                                              ; preds = %144, %59
  %146 = load i8*, i8** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  store i8 10, i8* %150, align 1
  %151 = load i8*, i8** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8 0, i8* %154, align 1
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local i32 @ossl_isbase64(i8 signext) #2

declare dso_local i64 @ossl_iscntrl(i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
