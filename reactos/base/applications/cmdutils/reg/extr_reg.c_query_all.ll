; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_query_all.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_query_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.query_all.fmt = private unnamed_addr constant [4 x i8] c"%1\0A\00", align 1
@__const.query_all.fmt_path = private unnamed_addr constant [7 x i8] c"%1\\%2\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@newlineW = common dso_local global i32 0, align 4
@MAX_SUBKEY_LEN = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @query_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_all(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i8], align 1
  %17 = alloca [7 x i8], align 1
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 256, i32* %8, align 4
  store i32 2048, i32* %10, align 4
  %23 = bitcast [4 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.query_all.fmt, i32 0, i32 0), i64 4, i1 false)
  %24 = bitcast [7 x i8]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.query_all.fmt_path, i32 0, i32 0), i64 7, i1 false)
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i8*, ...) @output_string(i8* %25, i8* %26)
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 1
  %31 = trunc i64 %30 to i32
  %32 = call i8* @heap_xalloc(i32 %31)
  store i8* %32, i8** %18, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i8* @heap_xalloc(i32 %33)
  store i8* %34, i8** %21, align 8
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %79, %3
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i8*, i8** %18, align 8
  %41 = load i8*, i8** %21, align 8
  %42 = call i64 @RegEnumValueW(i32 %38, i32 %39, i8* %40, i32* %9, i32* null, i32* %14, i8* %41, i32* %11)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %35
  %47 = load i8*, i8** %18, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i8*, i8** %21, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @output_value(i8* %47, i32 %48, i8* %49, i32 %50)
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %79

54:                                               ; preds = %35
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @ERROR_MORE_DATA, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %10, align 4
  %64 = load i8*, i8** %21, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i8* @heap_xrealloc(i8* %64, i32 %65)
  store i8* %66, i8** %21, align 8
  br label %76

67:                                               ; preds = %58
  %68 = load i32, i32* %8, align 4
  %69 = mul nsw i32 %68, 2
  store i32 %69, i32* %8, align 4
  %70 = load i8*, i8** %18, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 1
  %74 = trunc i64 %73 to i32
  %75 = call i8* @heap_xrealloc(i8* %70, i32 %74)
  store i8* %75, i8** %18, align 8
  br label %76

76:                                               ; preds = %67, %62
  br label %78

77:                                               ; preds = %54
  br label %80

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78, %46
  br label %35

80:                                               ; preds = %77
  %81 = load i8*, i8** %21, align 8
  %82 = call i32 @heap_free(i8* %81)
  %83 = load i8*, i8** %18, align 8
  %84 = call i32 @heap_free(i8* %83)
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87, %80
  %91 = load i32, i32* @newlineW, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 (i8*, ...) @output_string(i8* %93)
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i32, i32* @MAX_SUBKEY_LEN, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 1
  %99 = trunc i64 %98 to i32
  %100 = call i8* @heap_xalloc(i32 %99)
  store i8* %100, i8** %19, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @strlenW(i8* %101)
  store i32 %102, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %145, %95
  %104 = load i32, i32* @MAX_SUBKEY_LEN, align 4
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i8*, i8** %19, align 8
  %108 = call i64 @RegEnumKeyExW(i32 %105, i32 %106, i8* %107, i32* %12, i32* null, i32* null, i32* null, i32* null)
  store i64 %108, i64* %7, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* @ERROR_SUCCESS, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %144

112:                                              ; preds = %103
  %113 = load i64, i64* %6, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %112
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i8*, i8** %19, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i8* @build_subkey_path(i8* %116, i32 %117, i8* %118, i32 %119)
  store i8* %120, i8** %20, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load i8*, i8** %19, align 8
  %123 = load i32, i32* @KEY_READ, align 4
  %124 = call i32 @RegOpenKeyExW(i32 %121, i8* %122, i32 0, i32 %123, i32* %22)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %115
  %127 = load i32, i32* %22, align 4
  %128 = load i8*, i8** %20, align 8
  %129 = load i64, i64* %6, align 8
  %130 = call i32 @query_all(i32 %127, i8* %128, i64 %129)
  %131 = load i32, i32* %22, align 4
  %132 = call i32 @RegCloseKey(i32 %131)
  br label %133

133:                                              ; preds = %126, %115
  %134 = load i8*, i8** %20, align 8
  %135 = call i32 @heap_free(i8* %134)
  br label %141

136:                                              ; preds = %112
  %137 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 0
  %138 = load i8*, i8** %5, align 8
  %139 = load i8*, i8** %19, align 8
  %140 = call i32 (i8*, ...) @output_string(i8* %137, i8* %138, i8* %139)
  br label %141

141:                                              ; preds = %136, %133
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %145

144:                                              ; preds = %103
  br label %146

145:                                              ; preds = %141
  br label %103

146:                                              ; preds = %144
  %147 = load i8*, i8** %19, align 8
  %148 = call i32 @heap_free(i8* %147)
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load i64, i64* %6, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* @newlineW, align 4
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i8*
  %158 = call i32 (i8*, ...) @output_string(i8* %157)
  br label %159

159:                                              ; preds = %154, %151, %146
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @output_string(i8*, ...) #2

declare dso_local i8* @heap_xalloc(i32) #2

declare dso_local i64 @RegEnumValueW(i32, i32, i8*, i32*, i32*, i32*, i8*, i32*) #2

declare dso_local i32 @output_value(i8*, i32, i8*, i32) #2

declare dso_local i8* @heap_xrealloc(i8*, i32) #2

declare dso_local i32 @heap_free(i8*) #2

declare dso_local i32 @strlenW(i8*) #2

declare dso_local i64 @RegEnumKeyExW(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i8* @build_subkey_path(i8*, i32, i8*, i32) #2

declare dso_local i32 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
