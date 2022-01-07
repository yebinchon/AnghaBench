; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_mimeole.c_copy_headers_to_buf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_mimeole.c_copy_headers_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@PARSER_BUF_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@STREAM_SEEK_CUR = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**)* @copy_headers_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_headers_to_buf(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  %16 = load i32, i32* @PARSER_BUF_SIZE, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i8**, i8*** %5, align 8
  store i8* null, i8** %18, align 8
  br label %19

19:                                               ; preds = %110, %2
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i8* @HeapAlloc(i32 %23, i32 0, i32 %25)
  store i8* %26, i8** %6, align 8
  br label %35

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %28, 2
  store i32 %29, i32* %7, align 4
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i8* @HeapReAlloc(i32 %30, i32 0, i8* %31, i32 %33)
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %27, %22
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %39, i32* %10, align 4
  br label %118

40:                                               ; preds = %35
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %46, %47
  %49 = call i32 @IStream_Read(i32* %41, i8* %45, i32 %48, i32* %13)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @FAILED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %118

54:                                               ; preds = %40
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i64, i64* @TRUE, align 8
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %64, %54
  br label %67

67:                                               ; preds = %108, %66
  %68 = load i64, i64* %11, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = call i8* @strstr(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %75, i8** %12, align 8
  %76 = icmp ne i8* %75, null
  br label %77

77:                                               ; preds = %70, %67
  %78 = phi i1 [ false, %67 ], [ %76, %70 ]
  br i1 %78, label %79, label %109

79:                                               ; preds = %77
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = add nsw i64 %84, 2
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %87, %88
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %106

91:                                               ; preds = %79
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %92, %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* @STREAM_SEEK_CUR, align 4
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @IStream_Seek(i32* %96, i32 %99, i32 %97, i32* null)
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load i64, i64* @TRUE, align 8
  store i64 %105, i64* %11, align 8
  br label %108

106:                                              ; preds = %79
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %106, %91
  br label %67

109:                                              ; preds = %77
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %11, align 8
  %112 = icmp ne i64 %111, 0
  %113 = xor i1 %112, true
  br i1 %113, label %19, label %114

114:                                              ; preds = %110
  %115 = load i8*, i8** %6, align 8
  %116 = load i8**, i8*** %5, align 8
  store i8* %115, i8** %116, align 8
  %117 = load i32, i32* @S_OK, align 4
  store i32 %117, i32* %3, align 4
  br label %123

118:                                              ; preds = %53, %38
  %119 = call i32 (...) @GetProcessHeap()
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @HeapFree(i32 %119, i32 0, i8* %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %114
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @HeapReAlloc(i32, i32, i8*, i32) #1

declare dso_local i32 @IStream_Read(i32*, i8*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @IStream_Seek(i32*, i32, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
