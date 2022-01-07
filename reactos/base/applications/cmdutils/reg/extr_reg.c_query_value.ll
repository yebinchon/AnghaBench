; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_query_value.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_query_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.query_value.fmt = private unnamed_addr constant [4 x i8] c"%1\0A\00", align 1
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@newlineW = common dso_local global i32 0, align 4
@num_values_found = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@STRING_CANNOT_FIND = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@MAX_SUBKEY_LEN = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i32)* @query_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_value(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca [4 x i8], align 1
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 2048, i32* %11, align 4
  %22 = bitcast [4 x i8]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.query_value.fmt, i32 0, i32 0), i64 4, i1 false)
  %23 = load i32, i32* %11, align 4
  %24 = call i8* @heap_xalloc(i32 %23)
  store i8* %24, i8** %17, align 8
  br label %25

25:                                               ; preds = %40, %4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %17, align 8
  %30 = call i64 @RegQueryValueExW(i32 %27, i8* %28, i32* null, i32* %14, i8* %29, i32* %12)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @ERROR_MORE_DATA, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i8*, i8** %17, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i8* @heap_xrealloc(i8* %36, i32 %37)
  store i8* %38, i8** %17, align 8
  br label %40

39:                                               ; preds = %25
  br label %41

40:                                               ; preds = %34
  br label %25

41:                                               ; preds = %39
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 0
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 (i8*, ...) @output_string(i8* %46, i8* %47)
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i8*, i8** %17, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @output_value(i8* %49, i32 %50, i8* %51, i32 %52)
  %54 = load i32, i32* @newlineW, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (i8*, ...) @output_string(i8* %56)
  %58 = load i32, i32* @num_values_found, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @num_values_found, align 4
  br label %60

60:                                               ; preds = %45, %41
  %61 = load i8*, i8** %17, align 8
  %62 = call i32 @heap_free(i8* %61)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %87, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i8*, i8** %7, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i8*, i8** %7, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @STRING_CANNOT_FIND, align 4
  %79 = call i32 @output_message(i32 %78)
  store i32 1, i32* %5, align 4
  br label %133

80:                                               ; preds = %72, %69
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 0
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 (i8*, ...) @output_string(i8* %81, i8* %82)
  %84 = load i32, i32* @REG_SZ, align 4
  %85 = call i32 @output_value(i8* null, i32 %84, i8* null, i32 0)
  br label %86

86:                                               ; preds = %80, %65
  store i32 0, i32* %5, align 4
  br label %133

87:                                               ; preds = %60
  %88 = load i32, i32* @MAX_SUBKEY_LEN, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 1
  %91 = trunc i64 %90 to i32
  %92 = call i8* @heap_xalloc(i32 %91)
  store i8* %92, i8** %19, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @strlenW(i8* %93)
  store i32 %94, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %129, %87
  %96 = load i32, i32* @MAX_SUBKEY_LEN, align 4
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i8*, i8** %19, align 8
  %100 = call i64 @RegEnumKeyExW(i32 %97, i32 %98, i8* %99, i32* %13, i32* null, i32* null, i32* null, i32* null)
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* @ERROR_SUCCESS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %128

104:                                              ; preds = %95
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i8*, i8** %19, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i8* @build_subkey_path(i8* %105, i32 %106, i8* %107, i32 %108)
  store i8* %109, i8** %20, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i8*, i8** %19, align 8
  %112 = load i32, i32* @KEY_READ, align 4
  %113 = call i32 @RegOpenKeyExW(i32 %110, i8* %111, i32 0, i32 %112, i32* %21)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %104
  %116 = load i32, i32* %21, align 4
  %117 = load i8*, i8** %7, align 8
  %118 = load i8*, i8** %20, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @query_value(i32 %116, i8* %117, i8* %118, i32 %119)
  %121 = load i32, i32* %21, align 4
  %122 = call i32 @RegCloseKey(i32 %121)
  br label %123

123:                                              ; preds = %115, %104
  %124 = load i8*, i8** %20, align 8
  %125 = call i32 @heap_free(i8* %124)
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %16, align 4
  br label %129

128:                                              ; preds = %95
  br label %130

129:                                              ; preds = %123
  br label %95

130:                                              ; preds = %128
  %131 = load i8*, i8** %19, align 8
  %132 = call i32 @heap_free(i8* %131)
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %130, %86, %77
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @heap_xalloc(i32) #2

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i8*, i32*) #2

declare dso_local i8* @heap_xrealloc(i8*, i32) #2

declare dso_local i32 @output_string(i8*, ...) #2

declare dso_local i32 @output_value(i8*, i32, i8*, i32) #2

declare dso_local i32 @heap_free(i8*) #2

declare dso_local i32 @output_message(i32) #2

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
