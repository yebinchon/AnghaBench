; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_add_cert_extension_detail.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_add_cert_extension_detail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.detail_data = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i64 }

@CRYPT_OID_INFO_OID_KEY = common dso_local global i32 0, align 4
@field_format_detailed_extension = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.detail_data*, %struct.TYPE_7__*)* @add_cert_extension_detail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_cert_extension_detail(i32 %0, %struct.detail_data* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.detail_data*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.detail_data* %1, %struct.detail_data** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %12 = load i32, i32* @CRYPT_OID_INFO_OID_KEY, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call %struct.TYPE_8__* @CryptFindOIDInfo(i32 %12, i32* %15, i32 0)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %7, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = call i32* @crypt_format_extension(%struct.TYPE_7__* %17, i32 0)
  store i32* %18, i32** %8, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.detail_data*, %struct.detail_data** %5, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* @field_format_detailed_extension, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = call i32 @add_field_and_value_to_list(i32 %22, %struct.detail_data* %23, i32* %27, i32* %28, i32 %29, %struct.TYPE_7__* %30)
  br label %78

32:                                               ; preds = %3
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @strlen(i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = call i32 (...) @GetProcessHeap()
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32* @HeapAlloc(i32 %37, i32 0, i32 %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %77

46:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %47

66:                                               ; preds = %47
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.detail_data*, %struct.detail_data** %5, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* @field_format_detailed_extension, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = call i32 @add_field_and_value_to_list(i32 %67, %struct.detail_data* %68, i32* %69, i32* %70, i32 %71, %struct.TYPE_7__* %72)
  %74 = call i32 (...) @GetProcessHeap()
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @HeapFree(i32 %74, i32 0, i32* %75)
  br label %77

77:                                               ; preds = %66, %32
  br label %78

78:                                               ; preds = %77, %21
  %79 = call i32 (...) @GetProcessHeap()
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @HeapFree(i32 %79, i32 0, i32* %80)
  ret void
}

declare dso_local %struct.TYPE_8__* @CryptFindOIDInfo(i32, i32*, i32) #1

declare dso_local i32* @crypt_format_extension(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @add_field_and_value_to_list(i32, %struct.detail_data*, i32*, i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
