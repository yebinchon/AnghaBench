; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_REGPROC_export_binary.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_REGPROC_export_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.REGPROC_export_binary.hex = private unnamed_addr constant [5 x i8] c"hex:\00", align 1
@__const.REGPROC_export_binary.concat = private unnamed_addr constant [6 x i8] c"\\\0D\0A  \00", align 1
@__const.REGPROC_export_binary.newline = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@REG_BINARY = common dso_local global i64 0, align 8
@__const.REGPROC_export_binary.hex_format = private unnamed_addr constant [9 x i8] c"hex(%x):\00", align 1
@REG_SZ = common dso_local global i64 0, align 8
@REG_EXPAND_SZ = common dso_local global i64 0, align 8
@REG_MULTI_SZ = common dso_local global i64 0, align 8
@REG_FILE_HEX_LINE_LEN = common dso_local global i64 0, align 8
@__const.REGPROC_export_binary.format = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64*, i64*, i64, i64*, i64, i32)* @REGPROC_export_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @REGPROC_export_binary(i8** %0, i64* %1, i64* %2, i64 %3, i64* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [5 x i8], align 1
  %19 = alloca [17 x i8], align 16
  %20 = alloca [6 x i8], align 1
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca [3 x i8], align 1
  %24 = alloca i32*, align 8
  %25 = alloca [9 x i8], align 1
  %26 = alloca [5 x i8], align 1
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i8** %0, i8*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %29 = bitcast [5 x i8]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.REGPROC_export_binary.hex, i32 0, i32 0), i64 5, i1 false)
  %30 = bitcast [6 x i8]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.REGPROC_export_binary.concat, i32 0, i32 0), i64 6, i1 false)
  %31 = bitcast [3 x i8]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.REGPROC_export_binary.newline, i32 0, i32 0), i64 3, i1 false)
  store i32* null, i32** %24, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @REG_BINARY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %7
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %18, i64 0, i64 0
  store i8* %36, i8** %17, align 8
  br label %68

37:                                               ; preds = %7
  %38 = bitcast [9 x i8]* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %38, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.REGPROC_export_binary.hex_format, i32 0, i32 0), i64 9, i1 false)
  %39 = getelementptr inbounds [17 x i8], [17 x i8]* %19, i64 0, i64 0
  store i8* %39, i8** %17, align 8
  %40 = getelementptr inbounds [17 x i8], [17 x i8]* %19, i64 0, i64 0
  %41 = getelementptr inbounds [9 x i8], [9 x i8]* %25, i64 0, i64 0
  %42 = load i64, i64* %11, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @sprintfW(i8* %40, i8* %41, i32 %43)
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @REG_SZ, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %37
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @REG_EXPAND_SZ, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @REG_MULTI_SZ, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52, %48, %37
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = load i64*, i64** %12, align 8
  %61 = bitcast i64* %60 to i8*
  %62 = load i64, i64* %13, align 8
  %63 = udiv i64 %62, 1
  %64 = call i32* @GetMultiByteStringN(i8* %61, i64 %63, i64* %13)
  store i32* %64, i32** %24, align 8
  %65 = load i32*, i32** %24, align 8
  %66 = bitcast i32* %65 to i64*
  store i64* %66, i64** %12, align 8
  br label %67

67:                                               ; preds = %59, %56, %52
  br label %68

68:                                               ; preds = %67, %35
  %69 = getelementptr inbounds [6 x i8], [6 x i8]* %20, i64 0, i64 0
  %70 = call i64 @lstrlenW(i8* %69)
  store i64 %70, i64* %22, align 8
  store i64 2, i64* %21, align 8
  %71 = load i64*, i64** %10, align 8
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %15, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = call i64 @lstrlenW(i8* %73)
  %75 = load i64*, i64** %10, align 8
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %74
  store i64 %77, i64* %75, align 8
  %78 = load i64*, i64** %10, align 8
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %16, align 8
  %80 = load i64, i64* %13, align 8
  %81 = mul nsw i64 %80, 3
  %82 = load i64*, i64** %10, align 8
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %81
  store i64 %84, i64* %82, align 8
  %85 = load i64*, i64** %10, align 8
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @REG_FILE_HEX_LINE_LEN, align 8
  %88 = load i64, i64* %21, align 8
  %89 = sub nsw i64 %87, %88
  %90 = sdiv i64 %86, %89
  %91 = load i64, i64* %22, align 8
  %92 = mul nsw i64 %90, %91
  %93 = add nsw i64 %92, 1
  %94 = load i64*, i64** %10, align 8
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %93
  store i64 %96, i64* %94, align 8
  %97 = load i8**, i8*** %8, align 8
  %98 = load i64*, i64** %9, align 8
  %99 = load i64*, i64** %10, align 8
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @REGPROC_resize_char_buffer(i8** %97, i64* %98, i64 %100)
  %102 = load i8**, i8*** %8, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = load i64, i64* %15, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8*, i8** %17, align 8
  %107 = call i32 @lstrcpyW(i8* %105, i8* %106)
  %108 = load i64, i64* %13, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %156

110:                                              ; preds = %68
  %111 = bitcast [5 x i8]* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %111, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.REGPROC_export_binary.format, i32 0, i32 0), i64 5, i1 false)
  %112 = load i64, i64* %16, align 8
  store i64 %112, i64* %28, align 8
  store i64 0, i64* %27, align 8
  br label %113

113:                                              ; preds = %110, %154
  %114 = load i8**, i8*** %8, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = load i64, i64* %16, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = getelementptr inbounds [5 x i8], [5 x i8]* %26, i64 0, i64 0
  %119 = load i64*, i64** %12, align 8
  %120 = load i64, i64* %27, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @sprintfW(i8* %117, i8* %118, i32 %123)
  %125 = load i64, i64* %16, align 8
  %126 = add nsw i64 %125, 2
  store i64 %126, i64* %16, align 8
  %127 = load i64, i64* %27, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %27, align 8
  %129 = load i64, i64* %13, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %113
  br label %155

132:                                              ; preds = %113
  %133 = load i8**, i8*** %8, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = load i64, i64* %16, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %16, align 8
  %137 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8 44, i8* %137, align 1
  %138 = load i64, i64* %28, align 8
  %139 = add nsw i64 %138, 3
  store i64 %139, i64* %28, align 8
  %140 = load i64, i64* %28, align 8
  %141 = load i64, i64* @REG_FILE_HEX_LINE_LEN, align 8
  %142 = icmp sge i64 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %132
  %144 = load i8**, i8*** %8, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = load i64, i64* %16, align 8
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  %148 = getelementptr inbounds [6 x i8], [6 x i8]* %20, i64 0, i64 0
  %149 = call i32 @lstrcpyW(i8* %147, i8* %148)
  %150 = load i64, i64* %22, align 8
  %151 = load i64, i64* %16, align 8
  %152 = add nsw i64 %151, %150
  store i64 %152, i64* %16, align 8
  %153 = load i64, i64* %21, align 8
  store i64 %153, i64* %28, align 8
  br label %154

154:                                              ; preds = %143, %132
  br label %113

155:                                              ; preds = %131
  br label %156

156:                                              ; preds = %155, %68
  %157 = load i8**, i8*** %8, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = load i64, i64* %16, align 8
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  %161 = getelementptr inbounds [3 x i8], [3 x i8]* %23, i64 0, i64 0
  %162 = call i32 @lstrcpyW(i8* %160, i8* %161)
  %163 = call i32 (...) @GetProcessHeap()
  %164 = load i32*, i32** %24, align 8
  %165 = call i32 @HeapFree(i32 %163, i32 0, i32* %164)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sprintfW(i8*, i8*, i32) #2

declare dso_local i32* @GetMultiByteStringN(i8*, i64, i64*) #2

declare dso_local i64 @lstrlenW(i8*) #2

declare dso_local i32 @REGPROC_resize_char_buffer(i8**, i64*, i64) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #2

declare dso_local i32 @GetProcessHeap(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
