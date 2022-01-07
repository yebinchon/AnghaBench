; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_decode_utf8.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstr_decode_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bstr_decode_utf8(i64 %0, i32* %1, %struct.bstr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bstr, align 8
  %6 = alloca %struct.bstr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast %struct.bstr* %5 to { i64, i32* }*
  %13 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %12, i32 0, i32 0
  store i64 %0, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %12, i32 0, i32 1
  store i32* %1, i32** %14, align 8
  store %struct.bstr* %2, %struct.bstr** %6, align 8
  %15 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %115

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %24, align 8
  %27 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp uge i32 %30, 128
  br i1 %31, label %32, label %106

32:                                               ; preds = %19
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @bstr_parse_utf8_code_length(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %32
  store i32 -1, i32* %4, align 4
  br label %115

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = ashr i32 127, %46
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %77, %45
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = trunc i32 %58 to i8
  %60 = zext i8 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 192
  %63 = icmp ne i32 %62, 128
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %115

65:                                               ; preds = %54
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %66, 6
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, -193
  %70 = or i32 %67, %69
  store i32 %70, i32* %7, align 4
  %71 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %71, align 8
  %74 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %65
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %50

80:                                               ; preds = %50
  %81 = load i32, i32* %7, align 4
  %82 = icmp ugt i32 %81, 1114111
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = icmp uge i32 %84, 55296
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = icmp ule i32 %87, 57343
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %80
  store i32 -1, i32* %4, align 4
  br label %115

90:                                               ; preds = %86, %83
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %99

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 5, %95
  %97 = sub nsw i32 %96, 4
  %98 = shl i32 1, %97
  br label %99

99:                                               ; preds = %94, %93
  %100 = phi i32 [ 128, %93 ], [ %98, %94 ]
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 -1, i32* %4, align 4
  br label %115

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %19
  %107 = load %struct.bstr*, %struct.bstr** %6, align 8
  %108 = icmp ne %struct.bstr* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.bstr*, %struct.bstr** %6, align 8
  %111 = bitcast %struct.bstr* %110 to i8*
  %112 = bitcast %struct.bstr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 16, i1 false)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %104, %89, %64, %44, %18
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @bstr_parse_utf8_code_length(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
