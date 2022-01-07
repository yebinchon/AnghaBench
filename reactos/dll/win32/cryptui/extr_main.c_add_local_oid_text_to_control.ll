; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_add_local_oid_text_to_control.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_add_local_oid_text_to_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OIDToString = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@PFM_STARTINDENT = common dso_local global i32 0, align 4
@MY_INDENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@hInstance = common dso_local global i32 0, align 4
@MAX_STRING_LEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @add_local_oid_text_to_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_local_oid_text_to_control(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.OIDToString*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i8 10, i8* %6, align 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 12, i32* %18, align 4
  %19 = load i32, i32* @PFM_STARTINDENT, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @MY_INDENT, align 4
  %22 = mul nsw i32 %21, 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call %struct.OIDToString* @findSupportedOID(i8* %24)
  store %struct.OIDToString* %25, %struct.OIDToString** %5, align 8
  %26 = icmp ne %struct.OIDToString* %25, null
  br i1 %26, label %27, label %108

27:                                               ; preds = %2
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %11, align 8
  %29 = load i32, i32* @hInstance, align 4
  %30 = load %struct.OIDToString*, %struct.OIDToString** %5, align 8
  %31 = getelementptr inbounds %struct.OIDToString, %struct.OIDToString* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ptrtoint i8** %8 to i32
  %34 = call i32 @LoadStringW(i32 %29, i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %12, align 4
  %35 = load i8*, i8** %8, align 8
  store i8* %35, i8** %10, align 8
  br label %36

36:                                               ; preds = %94, %27
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i8* @wmemchr(i8* %37, i8 signext 10, i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = load i32, i32* @MAX_STRING_LEN, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %13, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %14, align 8
  %46 = load i64, i64* @TRUE, align 8
  store i64 %46, i64* %11, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = add nsw i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = call i32 @lstrcpynW(i8* %45, i8* %47, i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32 @add_text_with_paraformat_to_control(i32 %56, i8* %45, i32 %62, %struct.TYPE_3__* %7)
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %10, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @add_unformatted_text_to_control(i32 %66, i8* %6, i32 1)
  %68 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %68)
  br label %93

69:                                               ; preds = %36
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %69
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load i32, i32* %3, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sub nsw i64 %81, %86
  %88 = trunc i64 %87 to i32
  %89 = call i32 @add_text_with_paraformat_to_control(i32 %78, i8* %79, i32 %88, %struct.TYPE_3__* %7)
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @add_unformatted_text_to_control(i32 %90, i8* %6, i32 1)
  br label %92

92:                                               ; preds = %77, %72, %69
  br label %93

93:                                               ; preds = %92, %41
  br label %94

94:                                               ; preds = %93
  %95 = load i8*, i8** %9, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %36, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* %11, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %3, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @add_text_with_paraformat_to_control(i32 %101, i8* %102, i32 %103, %struct.TYPE_3__* %7)
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @add_unformatted_text_to_control(i32 %105, i8* %6, i32 1)
  br label %107

107:                                              ; preds = %100, %97
  br label %148

108:                                              ; preds = %2
  %109 = call i32 (...) @GetProcessHeap()
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 @strlen(i8* %110)
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 1
  %115 = trunc i64 %114 to i32
  %116 = call i8* @HeapAlloc(i32 %109, i32 0, i32 %115)
  store i8* %116, i8** %15, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %147

119:                                              ; preds = %108
  %120 = load i8*, i8** %4, align 8
  store i8* %120, i8** %16, align 8
  %121 = load i8*, i8** %15, align 8
  store i8* %121, i8** %17, align 8
  br label %122

122:                                              ; preds = %130, %119
  %123 = load i8*, i8** %16, align 8
  %124 = load i8, i8* %123, align 1
  %125 = icmp ne i8 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load i8*, i8** %16, align 8
  %128 = load i8, i8* %127, align 1
  %129 = load i8*, i8** %17, align 8
  store i8 %128, i8* %129, align 1
  br label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %16, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %16, align 8
  %133 = load i8*, i8** %17, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %17, align 8
  br label %122

135:                                              ; preds = %122
  %136 = load i8*, i8** %17, align 8
  store i8 0, i8* %136, align 1
  %137 = load i32, i32* %3, align 4
  %138 = load i8*, i8** %15, align 8
  %139 = load i8*, i8** %15, align 8
  %140 = call i32 @lstrlenW(i8* %139)
  %141 = call i32 @add_text_with_paraformat_to_control(i32 %137, i8* %138, i32 %140, %struct.TYPE_3__* %7)
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @add_unformatted_text_to_control(i32 %142, i8* %6, i32 1)
  %144 = call i32 (...) @GetProcessHeap()
  %145 = load i8*, i8** %15, align 8
  %146 = call i32 @HeapFree(i32 %144, i32 0, i8* %145)
  br label %147

147:                                              ; preds = %135, %108
  br label %148

148:                                              ; preds = %147, %107
  ret void
}

declare dso_local %struct.OIDToString* @findSupportedOID(i8*) #1

declare dso_local i32 @LoadStringW(i32, i32, i32, i32) #1

declare dso_local i8* @wmemchr(i8*, i8 signext, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @lstrcpynW(i8*, i8*, i32) #1

declare dso_local i32 @add_text_with_paraformat_to_control(i32, i8*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @add_unformatted_text_to_control(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
