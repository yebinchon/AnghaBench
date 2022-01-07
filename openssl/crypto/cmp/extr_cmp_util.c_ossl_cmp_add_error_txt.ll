; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_util.c_ossl_cmp_add_error_txt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_util.c_ossl_cmp_add_error_txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERR_LIB_CMP = common dso_local global i32 0, align 4
@ERR_TXT_STRING = common dso_local global i32 0, align 4
@MAX_DATA_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ossl_cmp_add_error_txt(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %17 = call i64 (...) @ERR_peek_last_error()
  store i64 %17, i64* %10, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i64, i64* %10, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @ERR_LIB_CMP, align 4
  %26 = call i32 @put_error(i32 %25, i8* null, i64 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %164, %27
  %29 = load i8*, i8** %4, align 8
  store i8* %29, i8** %13, align 8
  %30 = load i8*, i8** %4, align 8
  store i8* %30, i8** %14, align 8
  %31 = call i32 @ERR_peek_last_error_all(i8** %5, i32* %6, i8** %7, i8** %8, i32* %9)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @ERR_TXT_STRING, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @strlen(i8* %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @MAX_DATA_LEN, align 8
  %42 = icmp uge i64 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %3, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = load i64, i64* @MAX_DATA_LEN, align 8
  %47 = load i64, i64* %12, align 8
  %48 = sub i64 %46, %47
  %49 = icmp uge i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43, %37
  store i64 0, i64* %11, align 8
  br label %59

51:                                               ; preds = %43
  %52 = load i64, i64* @MAX_DATA_LEN, align 8
  %53 = load i64, i64* %12, align 8
  %54 = sub i64 %52, %53
  %55 = load i8*, i8** %3, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = sub i64 %54, %56
  %58 = sub i64 %57, 1
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %51, %50
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %59
  %66 = load i8*, i8** %14, align 8
  %67 = call i64 @strlen(i8* %66)
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp ule i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i64, i64* %16, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %72
  store i8* %74, i8** %14, align 8
  store i8* null, i8** %13, align 8
  br label %80

75:                                               ; preds = %65
  %76 = load i64, i64* %11, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %14, align 8
  %79 = load i8*, i8** %14, align 8
  store i8* %79, i8** %13, align 8
  br label %80

80:                                               ; preds = %75, %71
  br label %125

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %114, %81
  %83 = load i8*, i8** %14, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i8*, i8** %14, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = load i64, i64* %11, align 8
  %94 = icmp ule i64 %92, %93
  br label %95

95:                                               ; preds = %87, %82
  %96 = phi i1 [ false, %82 ], [ %94, %87 ]
  br i1 %96, label %97, label %115

97:                                               ; preds = %95
  %98 = load i8*, i8** %14, align 8
  store i8* %98, i8** %13, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = call i8* @strstr(i8* %99, i8* %100)
  store i8* %101, i8** %14, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load i8*, i8** %3, align 8
  %106 = call i64 @strlen(i8* %105)
  %107 = load i8*, i8** %14, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 %106
  store i8* %108, i8** %14, align 8
  br label %114

109:                                              ; preds = %97
  %110 = load i8*, i8** %13, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = call i64 @strlen(i8* %111)
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8* %113, i8** %14, align 8
  br label %114

114:                                              ; preds = %109, %104
  br label %82

115:                                              ; preds = %95
  %116 = load i8*, i8** %14, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = load i64, i64* %11, align 8
  %122 = icmp ule i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i8* null, i8** %13, align 8
  br label %124

124:                                              ; preds = %123, %115
  br label %125

125:                                              ; preds = %124, %80
  %126 = load i8*, i8** %13, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %158

128:                                              ; preds = %125
  %129 = load i8*, i8** %13, align 8
  %130 = load i8*, i8** %4, align 8
  %131 = icmp ne i8* %129, %130
  br i1 %131, label %132, label %150

132:                                              ; preds = %128
  %133 = load i8*, i8** %4, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = load i8*, i8** %4, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  %140 = call i8* @OPENSSL_strndup(i8* %133, i32 %139)
  store i8* %140, i8** %15, align 8
  %141 = load i8*, i8** %15, align 8
  %142 = icmp eq i8* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %132
  br label %169

144:                                              ; preds = %132
  %145 = load i8*, i8** %3, align 8
  %146 = load i8*, i8** %15, align 8
  %147 = call i32 @ERR_add_error_data(i32 2, i8* %145, i8* %146)
  %148 = load i8*, i8** %15, align 8
  %149 = call i32 @OPENSSL_free(i8* %148)
  br label %150

150:                                              ; preds = %144, %128
  %151 = load i32, i32* @ERR_LIB_CMP, align 4
  %152 = load i8*, i8** %7, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @put_error(i32 %151, i8* %152, i64 %153, i8* %154, i32 %155)
  %157 = load i8*, i8** %13, align 8
  store i8* %157, i8** %4, align 8
  br label %163

158:                                              ; preds = %125
  %159 = load i8*, i8** %3, align 8
  %160 = load i8*, i8** %4, align 8
  %161 = call i32 @ERR_add_error_data(i32 2, i8* %159, i8* %160)
  %162 = load i8*, i8** %14, align 8
  store i8* %162, i8** %4, align 8
  br label %163

163:                                              ; preds = %158, %150
  br label %164

164:                                              ; preds = %163
  %165 = load i8*, i8** %4, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %28, label %169

169:                                              ; preds = %143, %164
  ret void
}

declare dso_local i64 @ERR_peek_last_error(...) #1

declare dso_local i32 @put_error(i32, i8*, i64, i8*, i32) #1

declare dso_local i32 @ERR_peek_last_error_all(i8**, i32*, i8**, i8**, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @OPENSSL_strndup(i8*, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
